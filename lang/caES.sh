# IEs 4 Linux 2.0
# Catalan Strings

# Translation details
TRANSLATION_LOCALE="caES"
TRANSLATION_WHO="Fran Hermoso <franhp at gmail dot com>"
TRANSLATION_LANGUAGE="Catalan"
TRANSLATION_VERSION="1.2"
TRANSLATION_ENCODING="UTF8"

# ANSWER OPTIONS (should be the first letter of localized 'yes' and 'no'
YES=s
NO=n

MSG_WELCOME_TEXT="Benvingut, $(whoami)! Sóc IEs4Linux.\nEt puc instal·lar IE 6, 5.5 i 5.0 ràpid i fàcilment.\nEsta a només quatre 'enter's del seu IEs."
MSG_WELCOME_INSTRUCTIONS="Li faré unes quantes preguntes. Respongui $YES o $NO (la resposta per defecte està en negreta)"

MSG_WELCOME_QUESTION_IE55="IE 6 serà instal·lat automàticament.\nVol que instal·li IE 5.5 SP2 també?"
MSG_WELCOME_QUESTION_IE5="Vol que instal·li IE 5.01 SP2?"

MSG_LOCALES="Pot instal·lar IEs utilitzant qualsevol d'aquests locales:"
MSG_CHOOSE_LOCALE="Per defecte s'utilitzarà $IE6_LOCALE. Premi la tecla retorn per mantenirla o triï'n un altre: "

MSG_WELCOME_INSTRUCTIONS_DEFAULT="Per defecte, ho instal·laré tot a $BASEDIR_DEFAULT\nTambé instal·laré el connector Flash 9 i crearé els accessos directes."
MSG_WELCOME_QUESTION_CONFIGURE="Li sembla correcte? (Per configurar les opcions avançades premi $NO)"

MSG_CONFIGURE_FLASH="Hauria d'instal·lar el connector Adobe Flash 9?"
MSG_CONFIGURE_SHORTCUTS="Puc crear el accessos directes?"

MSG_CONFIGURE_BASEDIR_MSG="Ho instal·laré tot a $BASEDIR_DEFAULT"
MSG_CONFIGURE_BASEDIR_QUESTION="Premi la tecla retorn per mantenir-lo o escrigui el camí complet de la nova carpeta: "

MSG_CONFIGURE_BINDIR_MSG="Els executables seran creats a $BINDIR_DEFAULT"
MSG_CONFIGURE_BINDIR_QUESTION="Premi la tecla retorn per mantenir-ho o escrigui el camí complet de la nova carpeta: "

MSG_CONFIGURE_WGET="S'utilitzarà wget per descarregar els fitxers. Si necessita cap senyalador especial (proxy, ...), escrigui'l ara: "

MSG_START="Perfecte! Començem les instal·lacions..."

# Sections
MSG_DOWNLOADING="Descarregant tot el que necessitem"
MSG_INSTALLING="Instal·lant"
MSG_INSTALLING_FLASH="Instal·lant Flash Player 9"

# Subsections
MSG_INITIALIZING="Inicialitzant"
MSG_CREATING_PREFIX="Creant el prefix de Wine"
MSG_EXTRACTING_CABS="Extraient les arxius CAB"
MSG_INSTALLING_FONTS="Instal·lant les fonts TTF"
MSG_INSTALLING_REGISTRY="Instal·lant registre"
MSG_FINALIZING="Finalitzant"
MSG_COPYING_IE6="Copiant la instal·lació de ie6"
MSG_EXTRACTING_FILES="Extraient els arxius"
MSG_PROCESSING_INF="Processant els arxius inf"
MSG_PERFORM_INSTALLATIONS="Realitzant les instal·lacions"
MSG_INSTALLING_FLASH_ON="Instal·lant flash"

# Errors
MSG_ERROR_INSTALL_WINE="Necessita instal·lar wine! \nDescarregui'l de: http://www.winehq.org"
MSG_ERROR_INSTALL_CABEXTRACT="Necessita instal·lar cabextract!\nDescarregui'l de: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_UPDATE_CABEXTRACT="Necessita actualiztar cabextract!\ndescarregui'l de: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_INVALIDLOCALE="Locale invàlid! Si us plau, executi IEs4Linux un altre cop i triï'n un de vàlid."
MSG_WARNING_ROOT="És superusuari! Aixó no és aconsellable! IE és molt insegur i no es recomana donar-li accés de superusuari.\nVol un consell? Executi'l com a usuari normal o, encara millor, si pot, creï un altre usuari per utilitzar IEs."

# Post Install messages
MSG_INSTALLATIONS_FINISHED="La instal·lació de IEs 4 Linux ha finalitzat!"
MSG_RUN_IES="Per executar IEs, escrigui:"
MSG_NEEDS_TRANSLATION="Si té 5 minuts, tradueixi IEs4Linux al seu llenguatge.\nVisiti: http://tatanka.com.br/ies4linux/forum/viewtopic.php?p=2"

# TRANSLATION VERSION 1.2
MSG_WARNING_OLDWINE="IEs4Linux 2.0 està desenvolupat per ser utilitzat amb versions de Wine recents (0.9.x). Sembla que està utilitzant una versió antiga($(wine --version)). Es recomanable que actualitzi a la última versió (Vagi a: winehq.com)."
MSG_ERROR_NO_WINEPREFIXCREATE="El seu wine no té wineprefixcreate instal·lat. És possible que estigui fent servir una versió de wine antiga. Actualitzi a la última versió."
MSG_ERROR_CABEXTRACTING="Hi ha hagut un error mentre cabextract extreia uns fitxers."

# TRANSLATION VERSION 1.3
MSG_ERROR_INSTALL_WGET="Has d'instal·lar el 'wget' primer de tot!"
MSG_ERROR_INSTALL_UNZIP="Has d'instal·lar el 'unzip' primer de tot!"

