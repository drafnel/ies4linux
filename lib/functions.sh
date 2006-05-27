# IEs 4 Linux
# Functions and vars

createShortcuts() {
        echo "#!/bin/bash" > "$BINDIR/$1"
        echo cd >> "$BINDIR/$1"
	echo WINEPREFIX=\"$BASEDIR/$1\" wine \"$BASEDIR/$1/$DRIVEC/Program Files/Internet Explorer/IEXPLORE.EXE\" \"\$@\" >> "$BINDIR/$1"
        chmod +x "$BINDIR/$1"
        if [ "$CREATE_ICON" = "1" ]; then
                if cd ~/Desktop || cd ~/desktop; then
                      "$IES4LINUX/lib/mkicon" \
                                Exec "$BINDIR/$1" \
                                Icon "$BASEDIR/ies4linux.svg" \
                                Name "Internet Explorer $2" \
                                GenericName "Microsoft Windows Aplication" \
                                Comment "MSIE $2 by IEs4Linux" > IE$2.desktop
                fi
        fi
}



# Wine functions
function register_dll() {
	WINEDLLOVERRIDES="regsvr32.exe=b" wine regsvr32 /i $1 &> /dev/null
}
function add_registry() {
	wine regedit $1 &> /dev/null
}

function kill_wineserver() {
	local old=$(du -b "${WINEPREFIX}system.reg" 2>/dev/null  || echo 0 | awk '{print $1}')
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

# Post install
function run_ies() {
	section $MSG_RUN_IES
	[ "$INSTALLIE6"  = "1" ] && run_ie 6
	[ "$INSTALLIE55" = "1" ] && run_ie 55
	[ "$INSTALLIE5"  = "1" ] && run_ie 5
}
function run_ie(){
	cd
	if which ie$1 2> /dev/null | grep "$BINDIR/ie$1" &> /dev/null ; then
		subsection ie$1
	else
		local l=$($BINDIR/ie$1)
		subsection ${l//\/\//\/}
	fi
}