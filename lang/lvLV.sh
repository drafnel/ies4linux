# IEs 4 Linux 2.0
# Latvian Strings

# Translation details
TRANSLATION_LOCALE="lvLV"
TRANSLATION_WHO="Girts Strazdins <girts.strazdins at gmail dot com>"
TRANSLATION_LANGUAGE="Latvian"
TRANSLATION_VERSION="1.3"
TRANSLATION_ENCODING="UTF8"

# ANSWER OPTIONS (should be the first letter of localized 'yes' and 'no'
YES=y
NO=n

MSG_WELCOME_TEXT="Sveiks, $(whoami)! Esmu IEs4Linux.\nVaru bez grūtībām un ātri uzstādīt Tavā vietā IE 6, 5.5 un 5.0.\nTu esi tikai četru 'enter' attālumā no saviem IE."
MSG_WELCOME_INSTRUCTIONS="Es tagad uzdošu Tev dažus jautājumus. Vienkārši atbildi $YES vai $NO (Noklusētā atbilde ir treknrakstā)"

MSG_WELCOME_QUESTION_IE55="IE 6 tiks uzstādīts automātiski.\nVai vēlies uzstādīt arī IE 5.5 SP2?"
MSG_WELCOME_QUESTION_IE5="Vai vēlies uzstādīt IE 5.01 SP2?"

MSG_LOCALES="Visi IE var tikt uzstādīti, izmantojot kādu no šīm lokālēm (locales):"
MSG_CHOOSE_LOCALE="Noklusētā ir $IE6_LOCALE. Spied enter, lai atstātu to, vai izvēlies citu: "

MSG_WELCOME_INSTRUCTIONS_DEFAULT="Noklusēti es uzstādīšu visu uz $BASEDIR_DEFAULT\nEs uzstādīšu arī Flash 9 plugin un izveidošu darba virsmas īsinājumikonas (Desktop shortcuts)."
MSG_WELCOME_QUESTION_CONFIGURE="Vai tas Tevi apmierina? (Lai izvēlētos specifiskākas iespējas, ievadi $NO)"

MSG_CONFIGURE_FLASH="Vai man uzstādīt Adobe Flash 9 plugin?"
MSG_CONFIGURE_SHORTCUTS="Un kā būs ar darba virsmas ikonām? Drīkstu tās izveidot?"

MSG_CONFIGURE_BASEDIR_MSG="Viss tiks uzstādīts uz $BASEDIR_DEFAULT"
MSG_CONFIGURE_BASEDIR_QUESTION="Spied enter, ja tas der, vai ievadi citu absolūto ceļu: "

MSG_CONFIGURE_BINDIR_MSG="Binārie palaižamie faili tiks izvietoti uz $BINDIR_DEFAULT"
MSG_CONFIGURE_BINDIR_QUESTION="Spied enter, ja tas der, vai ievadi citu mapi: "

MSG_CONFIGURE_WGET="Mēs izmantosim wget failu lejuplādei. Ja Tev vajag speciālus flagus (proxy, ...) ievadi tos tagad: "

MSG_START="Super! Sākam uzstādīšanu..."

# Sections
MSG_DOWNLOADING="Lejuplādējam visu vajadzīgo"
MSG_INSTALLING="Uzstādām"
MSG_INSTALLING_FLASH="Uzstādām Flash Player 9"

# Subsections
MSG_INITIALIZING="Inicializējam"
MSG_CREATING_PREFIX="Izveidojam Wine prefiksu"
MSG_EXTRACTING_CABS="Atpakojam CAB failus"
MSG_INSTALLING_FONTS="Uzstādām TTF fontus"
MSG_INSTALLING_REGISTRY="Rakstām reģistru"
MSG_FINALIZING="Pabeidzam"
MSG_COPYING_IE6="Kopējam ie6 instalāciju"
MSG_EXTRACTING_FILES="Atpakojam failus"
MSG_PROCESSING_INF="Apstrādājam inf failu"
MSG_PERFORM_INSTALLATIONS="Veicam instalācijas"
MSG_INSTALLING_FLASH_ON="Uzstādām flash uz"

# Errors
MSG_ERROR_INSTALL_WINE="Vispirms jāuzstāda wine! \nLejuplādē to šeit: http://www.winehq.org"
MSG_ERROR_INSTALL_CABEXTRACT="Vispirms jāuzstāda cabextract! \nLejuplādē to šeit: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_UPDATE_CABEXTRACT="Vispirms jāatjaunina cabextract! \nLejuplādē to šeit: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_INVALIDLOCALE="Nekorekta lokāle! Ludzu, palaid IEs4Linux vēlreiz un izvēlies korektu lokāli."
MSG_WARNING_ROOT="Tu esi root! Tas nav ieteicams! IE ir pārāk nedrošs, lai tam piešķirtu root tiesības.\nVēlies drauga padomu? Palaid mani no sava normālā lietotāja vai, kas ir vēl labāk, ja vari, izveido atsevišķu lietotāju priekš IE."

# Post Install messages
MSG_INSTALLATIONS_FINISHED="IEs 4 Linux uzstādīšana pabeigta!"
MSG_RUN_IES="Lai palaistu savus IE, ievadi:"
MSG_NEEDS_TRANSLATION="Ja Tev ir 5 minūtes, palīdzi man pārtulkot IEs4Linux savā valodā.\nApmeklē: http://tatanka.com.br/ies4linux/forum/viewtopic.php?p=2"

# TRANSLATION VERSION 1.2
MSG_WARNING_OLDWINE="IEs4Linux 2.0 ir izstrādāts lietošanai uz jaunākas Wine versijas (0.9.x). Izskatās, ka Tu lieto vecu versiju ($(wine --version)). Ieteicams uzstādīt jaunāko wine versiju (Ej uz: winehq.com)."
MSG_ERROR_NO_WINEPREFIXCREATE="Tavam wine nav uzstādīts wineprefixcreate. Varbūt Tu lieto vecu Wine versiju. Mēģini uzstādīt jaunāko versiju."
MSG_ERROR_CABEXTRACTING="Notikusi kļūda, atpakojot failus ar cabextract."

# TRANSLATION VERSION 1.3
MSG_ERROR_INSTALL_WGET="Vispirms jāuzstāda 'wget'!"
MSG_ERROR_INSTALL_UNZIP="Vispirms jāuzstāda 'unzip'!"

