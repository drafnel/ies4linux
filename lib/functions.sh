# IEs 4 Linux
# Functions and vars

function createShortcuts() {
        echo "#!/bin/bash" > "$BINDIR/$1"
        echo cd >> "$BINDIR/$1"
        echo WINEPREFIX=\"$BASEDIR/$1\" wine \"$BASEDIR/$1/$DRIVEC/Program Files/Internet Explorer/IEXPLORE.EXE\" \$@ >> "$BINDIR/$1"
        chmod +x "$BINDIR/$1"
        if [ "$CREATE_ICON" = "yes" ]; then
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

# Print functions
print_section() {
	echo -e "\E[1m$* ..."; tput sgr0
}
function print_subsection() {
	echo " $*"
}
print_ok() {
	echo -e "\E[34;1m[ OK ]\n"; tput sgr0
}

# Wine functions
function register_dll() {
	wine regsvr32 $1 &> /dev/null
}
function add_registry() {
	wine regedit $1
}
function set_wine_prefix() {
	export WINEPREFIX="$1"
}

# Folders functions
function create_initial_folders() {
	# Prepare folders
	mkdir -p "$BASEDIR/tmp/"
	mkdir -p "$BASEDIR/base/"
	rm -rf "$BASEDIR"/tmp/* "$BASEDIR"/base/*
	mkdir -p "$DOWNLOADDIR"
	mkdir -p "$BINDIR"
}
function discover_folders() {
        # setting DRIVEC
        if [ -d "$BASEDIR/base/fake_windows" ]; then
                DRIVEC=fake_windows
        else
                DRIVEC=drive_c
        fi

        # setting variables
        if [ -d "$BASEDIR/base/$DRIVEC/windows" ]; then
                WINDOWS=windows
        fi
        if [ -d "$BASEDIR/base/$DRIVEC/$WINDOWS/system" ]; then
                SYSTEM=system
        fi
        if [ -d "$BASEDIR/base/$DRIVEC/$WINDOWS/fonts" ]; then
                FONTS=fonts
        fi
        if [ -d "$BASEDIR/base/$DRIVEC/$WINDOWS/inf" ]; then
                INF=inf
        fi

	export DRIVEC WINDOWS SYSTEM FONTS INF
}
function clean_tmp() {
	rm -rf "$BASEDIR"/tmp/*
}
function remove_extra_folders() {
	rm -rf "$BASEDIR/base" "$BASEDIR/tmp"
}

# Installations functions
function new_installation() {
	rm -rf "$BASEDIR/$1"
	cp -r "$BASEDIR/base" "$BASEDIR/$1"
}
function do_basic_installation() {
	source "$IES4LINUX/lib/base.sh"
}
function install_ie6() {
	if [ "$INSTALLIE6" = "1" ]; then
        	source "$IES4LINUX/lib/ie6.sh"
	fi
}
function install_ie55() {
	if [ "$INSTALLIE55" = "1" ]; then
        	source "$IES4LINUX/lib/ie55.sh"
	fi
}
function install_ie5() {
	if [ "$INSTALLIE5" = "1" ]; then
        	source "$IES4LINUX/lib/ie5.sh"
	fi
}
function install_plugins(){
	source "$IES4LINUX/lib/plugins.sh"
}

# TODO logging
function log() {
	echo $1 >> $HOME/.ies4linux/ies4linux.log
}
