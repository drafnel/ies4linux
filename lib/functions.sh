# IEs 4 Linux
# Functions and vars

createShortcuts() {
        echo "#!/bin/bash" > "$BINDIR/$1"
        echo cd >> "$BINDIR/$1"
        echo WINEPREFIX=\"$BASEDIR/$1\" wine \"$BASEDIR/$1/$DRIVEC/Program Files/Internet Explorer/IEXPLORE.EXE\" \$@ >> "$BINDIR/$1"
        chmod +x "$BINDIR/$1"
        if [ "$CREATE_ICON" = "0" ]; then
                if cd ~/Desktop || cd ~/desktop; then
                      "$IES4LINUX/lib/mkicon" \
                                Exec "$BINDIR/$1" \
                                Icon "$BASEDIR/ie_wine.svg" \
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
	wine regedit $1
}
function set_wine_prefix() {
	export WINEPREFIX="$1"
}

function clean_tmp() {
	rm -rf "$BASEDIR"/tmp/*
}

# Installations functions
function new_installation() {
	rm -rf "$BASEDIR/$1"
	cp -R "$BASEDIR"/base/ "$BASEDIR/$1"
	set_wine_prefix "$BASEDIR/$1"
}