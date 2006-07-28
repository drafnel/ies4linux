# IEs 4 Linux 2.0
# English Strings

# Translation details
TRANSLATION_LOCALE="slSI"
TRANSLATION_WHO="Tadej Borovšak <tadeboro at gmail dot com>"
TRANSLATION_LANGUAGE="Slovene"
TRANSLATION_VERSION="1"
TRANSLATION_ENCODING="UTF8"

# ANSWER OPTIONS (should be the first letter of localized 'yes' and 'no'
YES=d
NO=n

MSG_WELCOME_TEXT="Pozdravljen, $(whoami)! Sem IEs4Linux.\nZate lahko hitro in enostavno namestim IE 6, 5.5 in 5.\nOd IE-jev si oddaljen le štiri pritiske na enter."
MSG_WELCOME_INSTRUCTIONS="Sedaj te bom vprašal nekaj stvari. Le odgovori z $YES or $NO (privzeti odgovor je odebeljen)"

MSG_WELCOME_QUESTION_IE55="IE 6 bo nameščen avtomatično.\nŽeliš namestiti tudi IE 5.5 SP2?"
MSG_WELCOME_QUESTION_IE5="Ali želiš namestiti IE 5.01 SP2?"

MSG_LOCALES="IE-ji so lahko nameščeni z eno izmed naslednjih lokalizacij:"
MSG_CHOOSE_LOCALE="Privzeta je $IE6_LOCALE. Pritisni enter za privzeto ali vpiši svojo izbiro: "

MSG_WELCOME_INSTRUCTIONS_DEFAULT="Vse izbrano bo (privzeto) nameščeno v mapi $BASEDIR_DEFAULT\nPrav tako bom namestil Flash 9 plugin in naredil bližnjice na namizju."
MSG_WELCOME_QUESTION_CONFIGURE="Je to v redu? (Če želiš nastaviti podrobnosti, odgovori $NO)"

MSG_CONFIGURE_FLASH="Namestim Adobe Flash 9 plugin?"
MSG_CONFIGURE_SHORTCUTS="Kaj pa namizne ikone? Jih naredim?"

MSG_CONFIGURE_BASEDIR_MSG="Vse bo nameščeno v mapi $BASEDIR_DEFAULT"
MSG_CONFIGURE_BASEDIR_QUESTION="Pritisni enter za to možnosti ali vpiši svojo mapo (absolutna pot): "

MSG_CONFIGURE_BINDIR_MSG="Binarni zaganjalniki bodo v mapi $BINDIR_DEFAULT"
MSG_CONFIGURE_BINDIR_QUESTION="Pritisni enter za to možnost ali vpiši svojo mapo (absolutna pot): "

MSG_CONFIGURE_WGET="Datoteke bomo prenašali s programom wget. Če potrebuje posebne opcije (proxy,...), jih vtipkajte zdaj: "

MSG_START="Pa smo! Začnimo z namestitvijo ..."

# Sections
MSG_DOWNLOADING="Prenašam potrebne datoteke"
MSG_INSTALLING="Nameščam"
MSG_INSTALLING_FLASH="Nameščam Flash Player 9"

# Subsections
MSG_INITIALIZING="Inicializacija"
MSG_CREATING_PREFIX="Ustvaram Wine Prefix"
MSG_EXTRACTING_CABS="Razpiram CAB datoteke"
MSG_INSTALLING_FONTS="Nameščam TTF pisave"
MSG_INSTALLING_REGISTRY="Nameščam register"
MSG_FINALIZING="Končujem"
MSG_COPYING_IE6="Kopiram ie6 namestitev"
MSG_EXTRACTING_FILES="Razpiram datoteke"
MSG_PROCESSING_INF="Obdelujem inf datoteko"
MSG_PERFORM_INSTALLATIONS="Izvajam namestitve"
MSG_INSTALLING_FLASH_ON="Nameščam flash"

# Errors
MSG_ERROR_INSTALL_WINE="Najprej morate namestiti Wine! \nPrenesite ga z: http://www.winehq.org"
MSG_ERROR_INSTALL_CABEXTRACT="Najprej morate namestiti cabextract! \nPrenesite ga z: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_UPDATE_CABEXTRACT="Najprej morate posodobiti cabextract! \nPrenesite ga z: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_INVALIDLOCALE="Neveljavna lokalizacija! Ponovno poženite IEs4Linux in izberite takšno, ki je na seznamu."
MSG_WARNING_ROOT="Prijavljeni ste kot administrator! Namestitev vam odsvetujemo, ker je IE preveč nezanesljiv, da bi mu dali administrativne pravice.\nŽeliš nasvet prijatelja? Poženi me kot navaden uporabnik ali, še boljše, naredi novega uporabnika le za IE-je."

# Post Install messages
MSG_INSTALLATIONS_FINISHED="IEs 4 Linux namestitve končane!"
MSG_RUN_IES="Za zagon tvojih IE-jev, poženi:"
MSG_NEEDS_TRANSLATION="Če imaš 5 minut, mi pomagaj prevesti IEs4Linux v tvoj jezik.\nObišči: http://tatanka.com.br/ies4linux/forum/viewtopic.php?p=2"

# TRANSLATION VERSION 1.2
MSG_WARNING_OLDWINE="IEs4Linux 2.0 je razvit za uporabo z zadnjimi verzijami Wine (0.9.x). Izgleda, da uporabljaš starejšo verzijo ($(wine --version)). Priporočam, da posodobiš svoj Wine na zadnjo različico. (Pojdi na: winehq.com)."
MSG_ERROR_NO_WINEPREFIXCREATE="Tvoj Wine nima nameščenega wineprefixcreate. Mogoče uporabljaš staro verzijo Wine. Poskusi ga posodobiti na zadnjo različico."
MSG_ERROR_CABEXTRACTING="Med razpiranjem cab datotek se je pojavila napaka."