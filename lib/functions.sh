# Functions needed everywhere.
# All functions *should* be declared using 'function' keyword.
# All global variables used by functions should have function name in their name.

# Print a message if debug is on
# $* Message to be printed
function debug() { 
	[ "$DEBUG" = "true"  ] && echo "DEBUG: $*"
}

# Pipe to read messages and print them if debug is on
function debugPipe() {
	while read line; do
		debug $line
	done
}

# Download something
# $1 url do be downloaded
function download() {
	local URL=$1
	local FILENAME=$(echo $URL | sed -e "s/.*\///")
	local DIR=$(echo $URL | grep $URL_IE6_CABS | sed -e "s/.*W98NT42KMeXP\//ie6\//;s/\/[^\/]*$/\//")
	local file="$DOWNLOADDIR/$DIR$FILENAME"

	line=$(grep -e "^${DIR}${FILENAME}" "$IES4LINUX/lib/files")
	local correctsize=$(echo $line|awk '{print $2}')
	local correctmd5=$(echo $line|awk '{print $3}')

	echo -n "  $FILENAME"

	# Download file if (1) doesn't exist or (2) download was interrupted before
	if [ ! -f "$file" ] || [ "$(getFileSize "$file")" -lt "$((correctsize + 0))" ]; then
		printDownloadPercentage $FILENAME 0%

		touch "$file"
		pid=$(wget -q -b -o /dev/null -t 2 -c $URL $WGETFLAGS -O "$file" | sed -e 's/[^0-9]//g')
		while ps --pid $pid &> /dev/null; do
			if [ "$correctsize" != "" ];then
				du=$(getFileSize "$file")
				percent=$(( 100 * $du / $correctsize ))%
			else
				percent=-
			fi
			printDownloadPercentage $FILENAME $percent
			sleep 0.3
		done

		# After wget ends, see if (1) 404 or (2) stoped
		local finalsize=$(getFileSize "$file")
		if [ "$finalsize" = 0 ]; then
			debug File $FILENAME not found
			return 1
		fi
		if [ "$finalsize" -lt "$((correctsize + 0))" ]; then
			error $MSG_ERROR_DOWNLOADING $DIR$FILENAME
		fi

		printDownloadPercentage $FILENAME 100%
	fi
	echo

	# Check file size and md5
	size=$(getFileSize "$file")
	md5=$(getMD5 "$file")
	debug ${DIR}${FILENAME}: size $size md5 $md5

	if [ "$correctmd5" != "" ] ; then
		if [ "$size" != "$correctsize" ] || [ "$md5" != "$correctmd5" ]; then
			rm "$file"
			error $MSG_ERROR_DOWNLOADING $DIR$FILENAME
		fi
	fi
}

# $1 FILENAME
# $2 PERCENTAGE
download_status_bar=0
function printDownloadPercentage(){
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
	echo -n "          "
	echo -ne "\r"
}

# Portable md5 calculator
# $1 file
function getMD5(){
	if [ `uname` = Linux ] ;then
		MD5SUM=$(md5sum "$1")
	else # Free BSD
		MD5SUM=$(md5 -q "$1")
	fi
	echo $MD5SUM | awk '{print $1}'
}

# Portable file size calculator
# $1 file name
function getFileSize(){
	stat '-c' '%s' "$1" 2> '/dev/null' && return 0

	ls '--block-size=1' '-l' "$1" &> '/dev/null' && {
		ls -laF --block-size=1 "$1" | awk '{print $5}'
		return 0
	}

	du -b "$1" &> /dev/null && {
		du -b "$1" | awk '{print $1}'
		return 0
	}

	wc '-c' "$1" &> '/dev/null' && {
		wc '-c' "$1"
		return 0
	}
}

# Download something from Evolt, with mirror selection
# $1 Evolt path
function downloadEvolt() {
	local EVOLT_MIRROR1=http://www.mirrorservice.org/sites/browsers.evolt.org/browsers
	local EVOLT_MIRROR2=http://planetmirror.com/pub/browsers
	local EVOLT_MIRROR3=http://download.mirror.ac.uk/mirror/ftp.evolt.org

	if ! download $EVOLT_MIRROR1/$1 ; then
		debug Trying Evolt Mirror 2
		if ! download $EVOLT_MIRROR2/$1 ; then
			debug Trying Evolt Mirror 3
			if ! download $EVOLT_MIRROR3/$1 ; then
				error Could not find a suitable Evolt mirror
			fi
		fi
	fi
}

# Create all shortcuts: .ies4linux/bin/$1, bin/$1 and Desktop icon
# $1 excutable name
# $2 IE version
function createShortcuts() {
	touch "$BASEDIR/$1/.firstrun"
	rm -f "$BASEDIR/bin/$1" "$BINDIR/$1"
	get_start_page $1 firstrun
	mkdir -p "$BASEDIR/bin"
        cat << END > "$BASEDIR/bin/$1"
#!/usr/bin/env bash
# IEs 4 Linux script to run $1 - http://tatanka.com.br/ies4linux

debugPipe() {
	while read line; do [ "\$DEBUG" = "true" ] && echo \$line; done
}

cd
export WINEPREFIX="$BASEDIR/$1"

if [ -f "$BASEDIR/$1/.firstrun" ]; then
        rm "$BASEDIR/$1/.firstrun"
        ( wine "$BASEDIR/$1/$DRIVEC/Program Files/Internet Explorer/IEXPLORE.EXE" "${START_PAGE}" 2>&1 ) | debugPipe
else
        ( wine "$BASEDIR/$1/$DRIVEC/Program Files/Internet Explorer/IEXPLORE.EXE" "\$@" 2>&1 ) | debugPipe
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
GenericName=Browser
Comment=MSIE $2 by IEs4Linux
Encoding=UTF-8
Terminal=false
Type=Application
Categories=Internet
END
		if cd ~/Desktop || cd ~/desktop; then
			cp "$BASEDIR"/tmp/IE$2.desktop .
		fi
        fi
}

# Call wineprefixcreate
function create_wine_prefix(){
	if which wineprefixcreate &> /dev/null; then
		( wineprefixcreate 2>&1 ) | debugPipe
	else
		error $MSG_ERROR_NO_WINEPREFIXCREATE
	fi
}

# Register a dll
# $1 dll to be registered
function register_dll() {
	debug Registering DLL: $1
	(WINEDLLOVERRIDES="regsvr32.exe=b" wine regsvr32 /i "$1" 2>&1) | debugPipe
}

# Add a registry file
# $1 reg file to be registered
function add_registry() {
	debug Add $1 to registry
	(wine regedit "$1" 2>&1) | debugPipe
}

# Process an inf file
# $1 Inf file to process
function run_inf_file(){
	debug Process INF $1
	( wine rundll32 setupapi.dll,InstallHinfSection DefaultInstall 128 "$1" 2>&1) | debugPipe
}

# Call wineboot
function reboot_wine() {
	(wineboot 2>&1) | debugPipe
}

# Kill Wine Server
function kill_wineserver() {
	debug Kill wineserver
	( (
	wineserver -k || {
		killall wine
		killall wineserver
	}
	) 2>&1) | debugPipe

}
function set_wine_prefix() {
	export WINEPREFIX="$1"
}
function clean_tmp() {
	rm -rf "$BASEDIR"/tmp/*
}

# Extract a cab file in quiet mode
# (also lower case every file)
function extractCABs() {
	local tmp="cabextract -Lq"
	local num=1
	local logfile=$(tempfile)

	while [ $num -le $# ]; do
		tmp="$tmp \"$(eval echo \${$num})\""
		num=$((num+1))
	done

	eval $tmp &> $logfile
	if [ $? != 0 ]; then
		cat "$logfile" && rm "$logfile"
		error $MSG_ERROR_CABEXTRACTING
	fi
	cat "$logfile" | debugPipe
	rm "$logfile"
}

# Generate reg and install it
# $1 ie version
function install_home_page(){
	local temp=$(tempfile)

	get_start_page $1
	cat <<END > "$temp"
[HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main]
"First Home Page"="${START_PAGE}"
"Start Page"="${START_PAGE}"
END
	add_registry "$temp"
	rm "$temp"
}

# $1 ie version
# $2 (optional) firstrun
function get_start_page(){
	local url="http://www.tatanka.com.br/ies4linux/startpage?lang=$TRANSLATION_LOCALE&ieversion=$1"
	if [ "$2" = "firstrun" ]; then
		url="$url&firstrun=true"
	fi
	export START_PAGE="$url"
}

# Determine how to run a specific IE
# $1 IE Version
function run_ie(){
	cd
	if which ie$1 | grep -q "$BINDIR/ie$1" 2> /dev/null; then
		echo " ie$1"
	else
		local l=$BINDIR/ie$1
		echo " ${l//\/\//\/}"
	fi
}

# Functions to print things
function warning() {
	if [ $NOCOLOR = 0 ]; then
		echo -en "\E[31;1m";
		echo -e $*
		echo
		tput sgr0;
	else
		echo "!! $*"
	fi
}
function error() {
	warning $*
	exit 1
}
function section() {
	if [ $NOCOLOR = 0 ]; then 
		echo -e "\E[1m$*"; tput sgr0
	else
		echo "# $*"
	fi
}
function subsection() {
	echo "  $*"
}
function subsubsection() {
	echo "    $*"
}
function ok() {
	if [ $NOCOLOR = 0 ]; then 
		echo -e "\E[34;1m[ OK ]\n"; tput sgr0
	else
		echo -e "[ OK ]\n"
	fi
}

#Used by Hebrew locale
function bidi() {
	echo "$1" | fribidi --rtl | perl -e 'while(<>){ print "$1\\n" if /(.*)/;}'
}

# Export all functions so subshell can access them
for fn in $(grep "^function" "$IES4LINUX"/lib/functions.sh | sed -e 's/function[[:space:]]*//g;s/[[:space:]]*(.*$//g'); do
	export -f $fn
done
