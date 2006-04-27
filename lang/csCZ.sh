# IEs 4 Linux 2.0
# Czech Strings

# Translation details
TRANSLATION_LOCALE="csCZ"
TRANSLATION_WHO="Pavel Chovancik <http://www.chovancik.cz>"
TRANSLATION_LANGUAGE="Czech"
TRANSLATION_VERSION="1.0"
TRANSLATION_ENCODING="UTF-8"

# ANSWER OPTIONS (should be the first letter of localized 'yes' and 'no'
YES=a
NO=n

MSG_WELCOME_TEXT="Vítejte, $(whoami)! toto je IEs4Linux.\nUmí nainstalovat IE 6, 5.5 a 5.0 jednoduše a rychle.\nStačí stisknout čtyřikrát Enter."
MSG_WELCOME_INSTRUCTIONS="Je potřeba zodpovědět několik otázek. Pro odpověď stikněte $YES nebo $NO (defaultní je tučně zvýrazněná)"

MSG_WELCOME_QUESTION_IE55="IE 6 je automaticky instalován.\nPřejete si nainstalovat také IE 5.5 SP2?"
MSG_WELCOME_QUESTION_IE5="Přejete si nainstalovat IE 5.01 SP2?"

MSG_LOCALES="IE může být nainstalován s použítím několika možných lokalizací: "
MSG_CHOOSE_LOCALE="Defaultní je $IE6_LOCALE. Stiskněte Enter pro ponechání defaulní, a nebo vyberte jinou: "

MSG_WELCOME_INSTRUCTIONS_DEFAULT="Defaultně se instaluje do $HOME/.ies4linux\nTaké se instaluje Flash 8 plugin a vytvoříze zástupce na ploše."
MSG_WELCOME_QUESTION_CONFIGURE="Je to v pořádku? (Pro rozšířenou konfiguraci stikněte $NO)"

MSG_CONFIGURE_FLASH="Má se instalovat Macromedia Flash 8 plugin?"
MSG_CONFIGURE_SHORTCUTS="Májí se vytvořit zástupyci na ploše?"

MSG_CONFIGURE_BASEDIR_MSG="Vše bude nainstalováno do $HOME/.ies4linux/"
MSG_CONFIGURE_BASEDIR_QUESTION="Hit enter to keep this or type the new folder: "

MSG_CONFIGURE_BINDIR_MSG="Binary launchers will be created at $HOME/bin/"
MSG_CONFIGURE_BINDIR_QUESTION="Stiskněte Enter pro ponechání nebo zadejte svůj vlastní adresář: "

MSG_CONFIGURE_WGET="Pro stahování souborů se používá wget. Pokud je potřaba zadat nějaké zvláštní přepínaše (proxy,...), prosím, zadejte je zde: "

MSG_START="Instalace započata..."

MSG_ERROR_INSTALL_WINE="Před instalací je nutné nainstalovat wine! \nStáhnutí: http://www.winehq.org"
MSG_ERROR_INSTALL_CABEXTRACT="Před instalací je nutné nainstalovat cabextract! \nStáhnutí: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_UPDATE_CABEXTRACT="Před instalací je nutné nainstalovat novou verzi cabextract! \nStáhnutí: http://www.kyz.uklinux.net/cabextract.php"

MSG_ERROR_INVALIDLOCALE="3patná lokalizace! Prosím spusťte instalaci znovu a vyberte správnou (existující) lokalizaci."

MSG_WARNING_ROOT="Jsou přihlášen jako root! To je velmi nerozvážné! IE není příliš bezpečný, aby mohl běžet jako proces uživatel root.\nDoporučuje se používat IE pod jiným účtem, než-li je root."