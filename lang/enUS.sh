# IEs 4 Linux 2.0
# English Strings

# Translation details
TRANSLATION_LOCALE="enUS"
TRANSLATION_WHO="Sérgio Lopes <slopes at gmail dot com>"
TRANSLATION_LANGUAGE="English"
TRANSLATION_VERSION="1.3"
TRANSLATION_ENCODING="UTF8"

# ANSWER OPTIONS (should be the first letter of localized 'yes' and 'no'
YES=y
NO=n

MSG_WELCOME_TEXT="Welcome, $(whoami)! I'm IEs4Linux.\nI can install IE 6, 5.5 and 5.0 for you easily and quickly.\nYou are just four 'enter's away from your IEs."
MSG_WELCOME_INSTRUCTIONS="I'll ask you some questions now. Just answer $YES or $NO (default answer is the bold one)"

MSG_WELCOME_QUESTION_IE55="IE 6 will be installed automatically.\nDo you want to install IE 5.5 SP2 too?"
MSG_WELCOME_QUESTION_IE5="And do you want to install IE 5.01 SP2?"

MSG_LOCALES="IEs can be installed using one of the following locales:"
MSG_CHOOSE_LOCALE="Default is $IE6_LOCALE. Hit enter to keep it or choose a different one: "

MSG_WELCOME_INSTRUCTIONS_DEFAULT="By default, I will install everything at $BASEDIR_DEFAULT\nI will also install Flash 9 plugin and create Desktop shortcuts."
MSG_WELCOME_QUESTION_CONFIGURE="Is that ok for you? (To configure advanced options type $NO)"

MSG_CONFIGURE_FLASH="Should I install Adobe Flash 9 plugin?"
MSG_CONFIGURE_SHORTCUTS="And how about Desktop icons? Can I create them?"

MSG_CONFIGURE_BASEDIR_MSG="Everything will be installed at $BASEDIR_DEFAULT"
MSG_CONFIGURE_BASEDIR_QUESTION="Hit enter to keep this or type the new folder (absolute path): "

MSG_CONFIGURE_BINDIR_MSG="Binary launchers will be created at $BINDIR_DEFAULT"
MSG_CONFIGURE_BINDIR_QUESTION="Hit enter to keep this or type the new folder: "

MSG_CONFIGURE_WGET="We'll use wget to download files. If you need some special flag (proxy,...), type them now: "

MSG_START="All right! Let's start the installations..."

# Sections
MSG_DOWNLOADING="Downloading everything we need"
MSG_INSTALLING="Installing"
MSG_INSTALLING_FLASH="Installing Flash Player 9"

# Subsections
MSG_INITIALIZING="Initializing"
MSG_CREATING_PREFIX="Creating Wine Prefix"
MSG_EXTRACTING_CABS="Extracting CAB files"
MSG_INSTALLING_FONTS="Installing TTF Fonts"
MSG_INSTALLING_REGISTRY="Installing registry"
MSG_FINALIZING="Finalizing"
MSG_COPYING_IE6="Copying ie6 installation"
MSG_EXTRACTING_FILES="Extracting files"
MSG_PROCESSING_INF="Processing inf file"
MSG_PERFORM_INSTALLATIONS="Performing Installations"
MSG_INSTALLING_FLASH_ON="Installing flash on"

# Errors
MSG_ERROR_INSTALL_WINE="You need to install wine first! \nDownload it here: http://www.winehq.org"
MSG_ERROR_INSTALL_CABEXTRACT="You need to install cabextract first! \nDownload it here: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_UPDATE_CABEXTRACT="You need to update cabextract first! \nDownload it here: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_INVALIDLOCALE="Invalid locale! Please run IEs4Linux again and choose a valid one."
MSG_WARNING_ROOT="You are root! This is very discouraged! IE is too insecure for you to give him root access.\nWant a tip from a friend? Run me as your normal user or, what's better, if you can, create a separate user just do handle your IEs."

# Post Install messages
MSG_INSTALLATIONS_FINISHED="IEs 4 Linux installations finished!"
MSG_RUN_IES="To run your IEs, type:"
MSG_NEEDS_TRANSLATION="If you have 5 minutes, help me translating IEs4Linux to your language.\nVisit: http://tatanka.com.br/ies4linux/forum/viewtopic.php?p=2"

# TRANSLATION VERSION 1.2
MSG_WARNING_OLDWINE="IEs4Linux 2.0 is developed to be used with recent Wine versions (0.9.x). It seems that you are using an old version ($(wine --version)). It's recommended that you update your wine to the latest version (Go to: winehq.com)."
MSG_ERROR_NO_WINEPREFIXCREATE="Your wine does not have wineprefixcreate installed. Maybe you are running an old Wine version. Try to update it to the latest version."
MSG_ERROR_CABEXTRACTING="An error occured when trying to cabextract some files."

# TRANSLATION VERSION 1.3
MSG_ERROR_INSTALL_WGET="You need to install 'wget' first!"
MSG_ERROR_INSTALL_UNZIP="You need to install 'unzip' first!"

# TRANSLATION VERSION 1.4
GUI_TITLE="Internet Explorers for Linux"
GUI_OK="Install"
GUI_CANCEL="Cancel"

GUI_INSTALLATION_OPTIONS="Installation options"
GUI_IE="Internet Explorer"
GUI_EXTRA="Extra"
GUI_INSTALL_IE6="Install Internet Explorer 6.0 SP1"
GUI_INSTALL_IE55="Install Internet Explorer 5.5"
GUI_INSTALL_IE5="Install Internet Explorer 5.01"
GUI_INSTALL_FLASH="Install Adobe Flash player 9"
GUI_CREATE_ICONS="Create Desktop icons"
GUI_LOCALE="Locale"

GUI_ADVANCED_OPTIONS="Advanced options"
GUI_ADVANCED_BASEDIR="Base dir"
GUI_ADVANCED_BINDIR="Bin dir"
GUI_ADVANCED_DOWNLOADDIR="Download dir"
GUI_ADVANCED_WGETFLAGS="Wget Flags"