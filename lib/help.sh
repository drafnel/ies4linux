# Displays IEs4Linux help
# $1 mode: could be emtpty or "full"

# Display common options
cat <<__END_HELP__
	
Usage: ./ies4linux [OPTIONS]

This script downloads and automagically installs multiple versions of
Microsoft Internet Explorer on Wine.

Without any option, IEs4Linux will:
- install IE6
- install Adobe Flash 9
- create icons on Desktop and Menu
- use folder: $BASEDIR

You can configure other things:

--install-ie55         Install IE5.5 in BASEDIR/ie55/
--install-ie5          Install IE5 in BASEDIR/ie5/

--install-corefonts    Install MS Core Fonts (corefonts.sf.net)

--no-flash             Don't install Adobe Flash Player 9
--no-ie6               Don't install IE 6

--no-desktop-icon      Don't create an icon in Desktop
--no-menu-icon         Don't insert icon on Menu

--full-help            Display all possible options

__END_HELP__

if [ "$1" = "full" ]; then
cat <<__END_HELP__
Configurations:

--locale LOCALE        The locale for the installation [$GUESSED_IE6_LOCALE]
--wget-flags FLAGS     Extra flags for wget [$WGETFLAGS]
--list-locales         Display all possible locales and exit

Directories:

--basedir BASEDIR      Base location for installs [$BASEDIR]
--bindir BINDIR        Location of your bin folder [$BINDIR]
--downloaddir DLDIR    Where downloads will go [BASEDIR/$DOWNLOADDIR_SUFFIX]

Other options:

--no-gui               Don't show gui, perform an automatic installation
--gui gtk|kommander    Force use of a specific user interface
--no-color             Don't show colors
--debug                Run in DEBUG mode
--help / -h            Display help with simple options

Beta options:

--beta-install-ie7    Install Internet Explorer 7 (BETA INSTALLER!)

IEs4Linux can do other useful (?!) things:

--install-ie1         Install IE 1.0
--install-ie15        Install IE 1.5
--install-ie2         Install IE 2.0

__END_HELP__
fi
