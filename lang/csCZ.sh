# IEs 4 Linux 2.0
# Czech Strings

# Translation details
TRANSLATION_LOCALE="csCZ"
TRANSLATION_WHO="Pavel Chovancik <http://www.chovancik.cz>"
TRANSLATION_LANGUAGE="Czech"
TRANSLATION_VERSION="1.0"
TRANSLATION_ENCODING="UTF8"

# ANSWER OPTIONS (should be the first letter of localized 'yes' and 'no'
YES=a
NO=n

MSG_WELCOME_TEXT="Vítejte, $(whoami)! toto je IEs4Linux.\nUmí nainstalovat IE 6, 5.5 a 5.0 jednoduše a rychle.\nStačí stisknout čtyřikrát Enter."
MSG_WELCOME_INSTRUCTIONS="Je potřeba zodpovědět několik otázek. Pro odpověď stikněte $YES nebo $NO (defaultní je tučně zvýrazněná)"

MSG_WELCOME_QUESTION_IE55="IE 6 je automaticky instalován.\nPřejete si nainstalovat také IE 5.5 SP2?"
MSG_WELCOME_QUESTION_IE5="Přejete si nainstalovat IE 5.01 SP2?"

MSG_LOCALES="IE může být nainstalován s použítím několika možných lokalizací: "
MSG_CHOOSE_LOCALE="Defaultní je $IE6_LOCALE. Stiskněte Enter pro ponechání defaulní, a nebo vyberte jinou: "

MSG_WELCOME_INSTRUCTIONS_DEFAULT="Defaultně se instaluje do $BASEDIR_DEFAULT\nTaké se instaluje Flash 9 plugin a vytvoříze zástupce na ploše."
MSG_WELCOME_QUESTION_CONFIGURE="Je to v pořádku? (Pro rozšířenou konfiguraci stikněte $NO)"

MSG_CONFIGURE_FLASH="Má se instalovat Adobe Flash 9 plugin?"
MSG_CONFIGURE_SHORTCUTS="Májí se vytvořit zástupci na ploše?"

MSG_CONFIGURE_BASEDIR_MSG="Vše bude nainstalováno do $BASEDIR_DEFAULT"
MSG_CONFIGURE_BASEDIR_QUESTION="Stiskněte Enter pro ponechání nebo zadejte svůj vlastní adresář: "

MSG_CONFIGURE_BINDIR_MSG="Spuštěcí skripty budou nainstalovány do $BINDIR_DEFAULT"
MSG_CONFIGURE_BINDIR_QUESTION="Stiskněte Enter pro ponechání nebo zadejte svůj vlastní adresář: "

MSG_CONFIGURE_WGET="Pro stahování souborů se používá wget. Pokud je potřaba zadat nějaké zvláštní přepína če (proxy,...), prosím, zadejte je zde: "

MSG_START="Instalace započata..."

MSG_ERROR_INSTALL_WINE="Před instalací je nutné nainstalovat wine! \nStáhnutí: http://www.winehq.org"
MSG_ERROR_INSTALL_CABEXTRACT="Před instalací je nutné nainstalovat cabextract! \nStáhnutí: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_UPDATE_CABEXTRACT="Před instalací je nutné nainstalovat novou verzi cabextract! \nStáhnutí: http://www.kyz.uklinux.net/cabextract.php"

MSG_ERROR_INVALIDLOCALE="Špatná lokalizace! Prosím spusťte instalaci znovu a vyberte správnou (existující) lokalizaci."

MSG_WARNING_ROOT="Jste přihlášen jako root! To je velmi nerozvážné! IE není příliš bezpečný, aby mohl běžet jako proces uživatel root.\nDoporučuje se používat IE pod jiným účtem, než-li je root."

# Sections
MSG_DOWNLOADING="Stahuje se vše potřebné"
MSG_INSTALLING="Instalace"
MSG_INSTALLING_FLASH="IInstalace Flash Player 9"

# Subsections
MSG_INITIALIZING="Inizializace"
MSG_CREATING_PREFIX="Vytváří se Wine prefix"
MSG_EXTRACTING_CABS="Rozbalují se archívy CAB"
MSG_INSTALLING_FONTS="Instalují se TTF fonty"
MSG_INSTALLING_REGISTRY="Instalují se položky do registru"
MSG_FINALIZING="Dokončování"
MSG_COPYING_IE6="Kopírují se soubory instalace IE6"
MSG_EXTRACTING_FILES="Rozbalují se soubory"
MSG_PROCESSING_INF="Zpracovává se soubor .inf"
MSG_PERFORM_INSTALLATIONS="Vykonávájí se jednotlivé instalace"
MSG_INSTALLING_FLASH_ON="Flash se instaluje"

# Post install
MSG_INSTALLATIONS_FINISHED="Instalace IEs 4 Linux je dokoncečna!"
MSG_RUN_IES="Pro spuštění IE použijte příkazy: "