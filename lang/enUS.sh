# IEs 4 Linux 2.0
# English Strings

# Translation details
TRANSLATION_LOCALE="enUS"
TRANSLATION_WHO="Sérgio Lopes <slopes at gmail dot com>"
TRANSLATION_LANGUAGE="English"
TRANSLATION_VERSION="1.0"
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

MSG_WELCOME_INSTRUCTIONS_DEFAULT="By default, I will install everything at $HOME/.ies4linux\nI will also install Flash 8 plugin and create Desktop shortcuts."
MSG_WELCOME_QUESTION_CONFIGURE="Is that ok for you? (To configure advanced options type $NO)"

MSG_CONFIGURE_FLASH="Should I install Macromedia Flash 8 plugin?"
MSG_CONFIGURE_SHORTCUTS="And how about Desktop icons? Can I create them?"

MSG_CONFIGURE_BASEDIR_MSG="Everything will be installed at $HOME/.ies4linux/"
MSG_CONFIGURE_BASEDIR_QUESTION="Hit enter to keep this or type the new folder: "

MSG_CONFIGURE_BINDIR_MSG="Binary launchers will be created at $HOME/bin/"
MSG_CONFIGURE_BINDIR_QUESTION="Hit enter to keep this or type the new folder: "

MSG_CONFIGURE_WGET="We'll use wget to download files. If you need some special flag (proxy,...), type them now: "

MSG_START="All right! Let's start the installations..."

MSG_ERROR_INSTALL_WINE="You need to install wine first! \nDownload it here: http://www.winehq.org"
MSG_ERROR_INSTALL_CABEXTRACT="You need to install cabextract first! \nDownload it here: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_UPDATE_CABEXTRACT="You need to update cabextract first! \nDownload it here: http://www.kyz.uklinux.net/cabextract.php"

MSG_ERROR_INVALIDLOCALE="Invalid locale! Please run IEs4Linux again and choose a valid one."

MSG_WARNING_ROOT="You are root! This is very discouraged! IE is too insecure for you to give him root access.\nWant a tip from a friend? Run me as your normal user or, what's better, if you can, create a separate user just do handle your IEs."
