# IEs 4 Linux 2.0
# Slovene Strings

# Translation details
TRANSLATION_LOCALE="siSI"
TRANSLATION_WHO="MK ultra pg <mk dot ultra dot pg at gmail dot com>"
TRANSLATION_LANGUAGE="Slovene"
TRANSLATION_VERSION="1.0"
TRANSLATION_ENCODING="ISO-8859-2"

# ANSWER OPTIONS (should be the first letter of localized 'yes' and 'no'
YES=d
NO=n

MSG_WELCOME_TEXT="Pozdravljeni, $(whoami)! To je IEs4Linux.\nZa vas lahko hitro in enostavno namestim IE 6, 5.5 in 5.0.\nZa namestitev IE pritisnite samo štirikrat na tipko 'enter'."
MSG_WELCOME_INSTRUCTIONS="Sedaj vam bom postavil nekaj vprašanj. Odgovorite jih z $YES ali $NO (privzeti odgovor je poudarjen)"

MSG_WELCOME_QUESTION_IE55="IE 6 bo nameščen avtomatično.\nAli želite namestiti tudi IE 5.5 SP2?"
MSG_WELCOME_QUESTION_IE5="Želite namestiti tudi IE 5.01 SP2?"

MSG_LOCALES="Za namestitev IE lahko uporabite naslednja mesta:"
MSG_CHOOSE_LOCALE="Privzeto je $IE6_LOCALE. Pritisnite 'enter' za privzeto nastavitev, ali izberite drugo: "

MSG_WELCOME_INSTRUCTIONS_DEFAULT="Privzeta nastavitev bo namestila vse v $BASEDIR_DEFAULT\nNamestil bom tudi Flash 9 vtičnik in ustvaril bližnice na namizju."
MSG_WELCOME_QUESTION_CONFIGURE="Ali vam to ustreza? (Za napredno namestitev vtipkajte $NO)"

MSG_CONFIGURE_FLASH="Ali naj namestim Adobe Flash 9 vtičnik?"
MSG_CONFIGURE_SHORTCUTS="Kaj pa bližnice na namizju? Jih smem ustvariti?"

MSG_CONFIGURE_BASEDIR_MSG="Vse bo nameščeno v $BASEDIR_DEFAULT"
MSG_CONFIGURE_BASEDIR_QUESTION="Pritisnite 'enter' za takšno namestitev, ali vtipkajte novo mapo (absolutna pot): "

MSG_CONFIGURE_BINDIR_MSG="Binarni zagon bo ustvarjen v $BINDIR_DEFAULT"
MSG_CONFIGURE_BINDIR_QUESTION="Pritisnite 'enter' za to nastavitev, ali vtipkajte novo mapo: "

MSG_CONFIGURE_WGET="Za shranjevanje datotek bomo uporabili wget. Če potrebujete posebne zastave (proxy,...), jih vpišite sedaj: "

MSG_START="Dobro! Pričnimo z namestitvijo..."

# Sections
MSG_DOWNLOADING="Shranjujem vse kar potrebujemo"
MSG_INSTALLING="Nameščam"
MSG_INSTALLING_FLASH="Nameščam Flash Player 9"

# Subsections
MSG_INITIALIZING="Začenjam"
MSG_CREATING_PREFIX="Ustvarjam Wine predpono"
MSG_EXTRACTING_CABS="Izločam CAB datoteke"
MSG_INSTALLING_FONTS="Nameščam TTF pisave"
MSG_INSTALLING_REGISTRY="Nameščam register"
MSG_FINALIZING="Zaključujem"
MSG_COPYING_IE6="Kopiram IE6 namestitev"
MSG_EXTRACTING_FILES="Izločam datoteke"
MSG_PROCESSING_INF="Obdelujem inf datoteke"
MSG_PERFORM_INSTALLATIONS="Izvajam namestitve"
MSG_INSTALLING_FLASH_ON="Nameščam Flash"

# Errors
MSG_ERROR_INSTALL_WINE="Za namestitev najprej potrebujete Wine! \nShranite ga od tu: http://www.winehq.org"
MSG_ERROR_INSTALL_CABEXTRACT="Za namestitev najprej potrebujete Cabextract! \nShranite ga od tu: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_UPDATE_CABEXTRACT="Za namestitev najprej potrebujete Cabextract! \nShranite ga od tu: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_INVALIDLOCALE="Nepravilno mesto! Prosim poženite ponovno IEs4Linux in izberite pravilno mesto."
MSG_WARNING_ROOT="Ste administrator! To je nepriporočljivo! IE je preveč nevaren da mu omogočite dostop do administratorskih pravic.\nŽelite nasvet prijatelja? Poženite me kot navaden uporabnik, ali - kar je še bolje- če je mogoče, ustvarite posebnega uporabnika samo za delo z IE."

# Post Install messages
MSG_INSTALLATIONS_FINISHED="IEs 4 Linux namestitev je končana!"
MSG_RUN_IES="Za zagon IE vtipkajte:"
MSG_NEEDS_TRANSLATION="Če imate 5 minut, mi prosim pomagajte prevesti IEs4Linux v svoj jezik.\nObiščite: http://tatanka.com.br/ies4linux/forum/viewtopic.php?p=2"

# TRANSLATION VERSION 1.2
MSG_WARNING_OLDWINE="IEs4Linux 2.0 je razvit za uporabo z novejšimi Wine verzijami (0.9.x). Izgleda da uporabljate starejšo verzijo ($(wine --version)). Predlagamo da posodobite Wine na najnovejšo verzijo (Pojdite na: winehq.com)."
MSG_ERROR_NO_WINEPREFIXCREATE="Vaš Wine nima nameščenega wineprefixcreate. Mogoče imate nameščeno staro Wine verzijo. Poskusite posodobiti Wine na najnovejšo verzijo."
MSG_ERROR_CABEXTRACTING="Napaka se je pojavila pri izločanju (cabextract) nekaterih datotek."
