# IEs 4 Linux
# Functions and vars

createShortcuts() {
	mkdir -p "$BASEDIR/bin"
        cat << END > "$BASEDIR/bin/$1"
#!/usr/bin/env bash
# IEs 4 Linux script to run $1 - http://tatanka.com.br/ies4linux

cd
export WINEPREFIX="$BASEDIR/$1"
if [ -f "$BASEDIR/$1/.firstrun" ]; then
	rm "$BASEDIR/$1/.firstrun"
	wine "$BASEDIR/$1/$DRIVEC/Program Files/Internet Explorer/IEXPLORE.EXE" "$OK_URL"
else
	wine "$BASEDIR/$1/$DRIVEC/Program Files/Internet Explorer/IEXPLORE.EXE" "\$@"
fi
END
        chmod +x "$BASEDIR/bin/$1"
	ln -sf "$BASEDIR/bin/$1" "$BINDIR/$1"

        if [ "$CREATE_ICON" = "1" ]; then
                if cd ~/Desktop || cd ~/desktop; then
			cat << END > IE$2.desktop
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
                fi
        fi
}



# Wine functions
function register_dll() {
	WINEDLLOVERRIDES="regsvr32.exe=b" wine regsvr32 /i "$1" &> /dev/null
}
function add_registry() {
	wine regedit "$1" &> /dev/null
}
function kill_wineserver() {
	wineserver -k &> /dev/null || {
		killall wine &>/dev/null
		killall wineserver &>/dev/null
	}
}
function set_wine_prefix() {
	export WINEPREFIX="$1"
}

function clean_tmp() {
	rm -rf "$BASEDIR"/tmp/*
}
function extractCABs() {
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
	rm "$IES4LINUX"/cabextract.log
}

# Post install
function run_ies() {
	section $MSG_RUN_IES
	[ "$INSTALLIE6"  = "1" ] && run_ie 6
	[ "$INSTALLIE55" = "1" ] && run_ie 55
	[ "$INSTALLIE5"  = "1" ] && run_ie 5
	[ "$INSTALLIE1"  = "1" ] && run_ie 1
	[ "$INSTALLIE15"  = "1" ] && run_ie 15
	[ "$INSTALLIE2"  = "1" ] && run_ie 2
	[ "$INSTALLIE3"  = "1" ] && run_ie 3
}
function run_ie(){
	cd
	if which ie$1 2> /dev/null | grep "$BINDIR/ie$1" &> /dev/null ; then
		echo " ie$1"
	else
		local l=$BINDIR/ie$1
		echo " ${l//\/\//\/}"
	fi
}