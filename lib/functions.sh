# Init variables
initVariables(){
	export INSTALLIE6=1
	export INSTALLFLASH=1
	export CREATE_ICON=1
	
	export BASEDIR="$HOME/.ies4linux"
	export BINDIR="$HOME/bin"
	export WGETFLAGS="--continue"
	export DOWNLOADDIR_SUFFIX="downloads"
	export DOWNLOADDIR="$BASEDIR/$DOWNLOADDIR_SUFFIX"
	
	export IE6_LOCALE="EN-US"
	export IE6_LOCALES="EN-US PT-BR DE FR ES IT NL SV JA KO NO DA CN TW FI PL HU AR HE CS PT RU EL TR"
	
	export NOCOLOR=0
	
	# Default locale
	export GUESSED_IE6_LOCALE=EN-US
	export MESSAGE_FILE=enUS
}

# Determine locale and languages
# We have two methods: $LANG and $(locale)
initLanguage(){
	debug Loading lang/enUS.sh
	eval $(cat "$IES4LINUX/lang/enUS.sh" | grep -v -e "^#" -e "^[[:space:]]*$" | sed -e 's/^/export /g;s/$/;/g') 2> /dev/null

	if [ ${#LANG} -ge 4 ]; then
		debug "Using LANG to determine locale - $LANG"
		SYSLANG=$(echo ${LANG:0:2} | tr A-Z a-z)
		SYSCOUNTRY=$(echo ${LANG:3:2} | tr A-Z a-z)
	else
		$(locale | sed -e 's/^/export /g;s/"//g')
		debug "Using 'locale' to determine locale - $LC_MESSAGES"
		SYSLANG=$(echo ${LC_MESSAGES:0:2} | tr A-Z a-z)
		SYSCOUNTRY=$(echo ${LC_MESSAGES:3:2} | tr A-Z a-z)
	fi
	
	langline=$(grep -e "^${SYSLANG}[[:space:]]\+${SYSCOUNTRY}[[:space:]]\+" -e "^${SYSLANG}[[:space:]]\+\.[[:space:]]\+" "$IES4LINUX/lib/messages.txt" | head -n 1)

	if [ "$langline" = "" ]; then return; fi

	debug Found language line: $langline

	export GUESSED_IE6_LOCALE="$(echo $langline | awk '{print $4}')"
	MESSAGE_FILE="$IES4LINUX/lang/$(echo $langline | awk '{print $3}').sh"

	debug Loading $MESSAGE_FILE
	eval $(cat "$MESSAGE_FILE" | grep -v -e "^#" -e "^[[:space:]]*$" | sed -e 's/^/export /g;s/$/;/g') 2> /dev/null

	debug Loading $MESSAGE_FILE with iconv
	local enc=$TRANSLATION_ENCODING
	eval $(iconv -f $enc "$MESSAGE_FILE" 2>/dev/null| grep -v -e "^#" -e "^[[:space:]]*$" | sed -e 's/^/export /g;s/$/;/g')2>/dev/null

}

# Check dependencies for wine, cabextract, wget, unzip
checkDependencies(){
	wine --version &> /dev/null || error $MSG_ERROR_INSTALL_WINE
	cabextract --version &> /dev/null || error $MSG_ERROR_INSTALL_CABEXTRACT
	wget --version &> /dev/null || error $MSG_ERROR_INSTALL_WGET
	unzip -version &> /dev/null || error $MSG_ERROR_INSTALL_UNZIP
	cabextract --version | grep -q "1."   || error $MSG_ERROR_UPDATE_CABEXTRACT
	wine --version 2>&1  | grep -q "0.9." || warning $MSG_WARNING_OLDWINE
	[ "$(whoami)" = "root" ] && warning $MSG_WARNING_ROOT
}

# Download something
# $1 url do be downloaded
download() {
	local URL=$1
	local FILENAME=$(echo $URL | sed -e "s/.*\///")
	local DIR=$(echo $URL | grep $URL_IE6_CABS | sed -e "s/.*W98NT42KMeXP\//ie6\//;s/\/[^\/]*$/\//")

	printDownloadPercentage $FILENAME 0%

	# Correct size and md5
	line=$(grep -e "^${DIR}${FILENAME}" "$IES4LINUX/lib/files")
	correctsize=$(echo $line|awk '{print $2}')
	correctmd5=$(echo $line|awk '{print $3}')

	# Download file
	if [ ! -f "$DOWNLOADDIR/$DIR$FILENAME" ]; then
		touch "$DOWNLOADDIR/$DIR$FILENAME"
		pid=$(wget -q -b -o /dev/null -t 2 -c $URL $WGETFLAGS -O "$DOWNLOADDIR/$DIR$FILENAME" | sed -e 's/[^0-9]//g')
		while ps --pid $pid &> /dev/null; do
			if [ "$correctsize" != "" ];then
				percent=$(( 100 * $(du -b "$DOWNLOADDIR/$DIR$FILENAME"| awk '{print $1}') / $correctsize ))%
			else
				percent=-
			fi
			printDownloadPercentage $FILENAME $percent
			sleep 0.3
		done
	fi
	printDownloadPercentage $FILENAME 100%
	echo

	# Check file size and md5
	size=$(du -b "$DOWNLOADDIR/$DIR$FILENAME"| awk '{print $1}')
	md5=$(getMD5 "$DOWNLOADDIR/$DIR$FILENAME")
	debug ${DIR}${FILENAME}: size $size md5 $md5

	if [ "$correctmd5" != "" ] ; then
		if [ "$size" != "$correctsize" ] || [ "$md5" != "$correctmd5" ]; then
			rm "$DOWNLOADDIR/$DIR$FILENAME"
			error $MSG_ERROR_DOWNLOADING $DIR$FILENAME
		fi
	fi
}

# $1 FILENAME
# $2 PERCENTAGE
download_status_bar=0
printDownloadPercentage(){
	local max=20
	echo -n "  $1"
	local num=0
	while [ $num -le $(( $max - ${#1} )) ]; do
		echo -n " "
		num=$((num+1))
	done
	if [ $2 = "-" ]; then
		if [ $download_status_bar = 0 ]; then
			echo -n "-   "
		elif [ $download_status_bar = 1 ]; then
			echo -n "\   "
		elif [ $download_status_bar = 2 ]; then
			echo -n "|  "
		else
			echo -n "/   "
			download_status_bar=-1
		fi
		download_status_bar=$(($download_status_bar + 1))
	else
		echo -n "$2 "
	fi
	echo -ne "\r"
}

# Portable md5 calculator
# $1 file
getMD5(){
	if [ `uname` = Linux ] ;then
		MD5SUM=$(md5sum "$1")
	else # Free BSD
		MD5SUM=$(md5 -q "$1")
	fi
	echo $MD5SUM | awk '{print $1}'
}

# Download something from Evolt, with mirror selection
# $1 Evolt path
downloadEvolt() {
	local EVOLT_MIRROR1=http://www.mirrorservice.org/sites/browsers.evolt.org/browsers
	local EVOLT_MIRROR2=http://planetmirror.com/pub/browsers
	local EVOLT_MIRROR3=http://download.mirror.ac.uk/mirror/ftp.evolt.org

	if ! download $EVOLT_MIRROR1/$1 ; then
		if ! download $EVOLT_MIRROR2/$1 ; then
			if ! download $EVOLT_MIRROR3/$1 ; then
				error Could not find a suitable Evolt mirror
			fi
		fi
	fi
}

# Create all shortcuts: .ies4linux/bin/$1, bin/$1 and Desktop icon
# $1 excutable name
# $2 IE version
createShortcuts() {
	touch "$BASEDIR/$1/.firstrun"
	rm -f "$BASEDIR/bin/$1" "$BINDIR/$1"
	get_start_page $1 firstrun
	mkdir -p "$BASEDIR/bin"
        cat << END > "$BASEDIR/bin/$1"
#!/usr/bin/env bash
# IEs 4 Linux script to run $1 - http://tatanka.com.br/ies4linux

cd
export WINEPREFIX="$BASEDIR/$1"
if [ -f "$BASEDIR/$1/.firstrun" ]; then
        rm "$BASEDIR/$1/.firstrun"
        wine "$BASEDIR/$1/$DRIVEC/Program Files/Internet Explorer/IEXPLORE.EXE" "${START_PAGE}"
else
        wine "$BASEDIR/$1/$DRIVEC/Program Files/Internet Explorer/IEXPLORE.EXE" "\$@"
fi
END
        chmod +x "$BASEDIR/bin/$1"
	ln -sf "$BASEDIR/bin/$1" "$BINDIR/$1"

        if [ "$CREATE_ICON" = "1" ]; then
		cat << END > "$BASEDIR"/tmp/IE$2.desktop
[Desktop Entry]
Version=1.0
Exec=$BINDIR/$1
Icon=$BASEDIR/ies4linux.svg
Name=Internet Explorer $2
GenericName=Microsoft Windows Aplication
Comment=MSIE $2 by IEs4Linux
Encoding=UTF-8
Terminal=false
Type=Application
END
		if cd ~/Desktop || cd ~/desktop; then
			cp "$BASEDIR"/tmp/IE$2.desktop .
		fi
# How to insert into menus?
# 		if [ -d ~/.kde/share/applnk/ ]; then
# 			mkdir -p "~/.kde/share/applnk/IEs 4 Linux"
# 			cp "$BASEDIR"/tmp/IE$2.desktop "~/.kde/share/applnk/IEs 4 Linux"
# 		fi
# 		if [ -d ~/.gnome/apps/ ]; then
# 			mkdir -p "~/.gnome/apps/IEs 4 Linux"
# 			cp "$BASEDIR"/tmp/IE$2.desktop "~/.gnome/apps/IEs 4 Linux"
# 		fi
        fi
}

# Call wineprefixcreate
create_wine_prefix(){
	if which wineprefixcreate &> /dev/null; then
		( wineprefixcreate 2>&1 ) | debugPipe
	else
		error $MSG_ERROR_NO_WINEPREFIXCREATE
	fi
}

# Register a dll
# $1 dll to be registered
register_dll() {
	debug Registering DLL: $1
	(WINEDLLOVERRIDES="regsvr32.exe=b" wine regsvr32 /i "$1" 2>&1) | debugPipe
}

# Add a registry file
# $1 reg file to be registered
add_registry() {
	debug Add $1 to registry
	(wine regedit "$1" 2>&1) | debugPipe
}

# Process an inf file
# $1 Inf file to process
run_inf_file(){
	debug Process INF $1
	( wine rundll32 setupapi.dll,InstallHinfSection DefaultInstall 128 "$1" 2>&1) | debugPipe
}

# Call wineboot
reboot_wine() {
	(wineboot 2>&1) | debugPipe
}

# Kill Wine Server
kill_wineserver() {
	debug Kill wineserver
	( (
	wineserver -k || {
		killall wine
		killall wineserver
	}
	) 2>&1) | debugPipe

}
set_wine_prefix() {
	export WINEPREFIX="$1"
}
clean_tmp() {
	rm -rf "$BASEDIR"/tmp/*
}

# Extract a cab file in quiet mode
# (also lower case every file)
extractCABs() {
	local tmp="cabextract -Lq"
	local num=1
	while [ $num -le $# ]; do
		tmp="$tmp \"$(eval echo \${$num})\""
		num=$((num+1))
	done
	eval $tmp &> "$IES4LINUX"/cabextract.log || {
		cat "$IES4LINUX"/cabextract.log
		rm "$IES4LINUX"/cabextract.log
		error $MSG_ERROR_CABEXTRACTING
	}
	cat "$IES4LINUX"/cabextract.log | debugPipe
	rm "$IES4LINUX"/cabextract.log
}

# Generate homepage.reg and install it
# $1 ie version
install_home_page(){
	get_start_page $1
	cat <<END > "$IES4LINUX"/winereg/homepage.reg
[HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main]
"Start Page"="${START_PAGE}"
END
	add_registry "$IES4LINUX"/winereg/homepage.reg
	rm "$IES4LINUX"/winereg/homepage.reg
}

# $1 ie version
# $2 (optional) firstrun
get_start_page(){
	local url="http://www.tatanka.com.br/ies4linux/startpage?lang=$TRANSLATION_LOCALE&ieversion=$1"
	if [ "$2" = "firstrun" ]; then
		url="$url&firstrun=true"
	fi
	export START_PAGE="$url"
}

# Determine how to run a specific IE
# $1 IE Version
run_ie(){
	cd
	if which ie$1 | grep -q "$BINDIR/ie$1"; then
		echo " ie$1"
	else
		local l=$BINDIR/ie$1
		echo " ${l//\/\//\/}"
	fi
}

# Functions to print things
warning() {
	if [ $NOCOLOR = 0 ]; then
		echo -en "\E[31;1m";
		echo -e $*
		echo
		tput sgr0;
	else
		echo "!! $*"
	fi
}
error() {
	warning $*
	exit 1
}
section() {
	if [ $NOCOLOR = 0 ]; then 
		echo -e "\E[1m$*"; tput sgr0
	else
		echo "# $*"
	fi
}
subsection() {
	echo "  $*"
}
subsubsection() {
	echo "    $*"
}
ok() {
	if [ $NOCOLOR = 0 ]; then 
		echo -e "\E[34;1m[ OK ]\n"; tput sgr0
	else
		echo -e "[ OK ]\n"
	fi
}

# Initialize debug
# Debug uses DEBUG environment variable
initDebug() {
	[ "$DEBUG" != true ] && DEBUG=false
	debug Debug on
}

# Print a message if debug is on
# $* Message to be printed
debug() {
	[ "$DEBUG" = "true"  ] && echo "DEBUG: $*"
}

# Pipe to read messages and print them if debug is on
debugPipe() {
	while read line; do
		debug $line
	done
}