# IEs 4 Linux 2.0
# English Strings
# Croatian translation, please check correct  "TRANSLATION_LOCALE=" 
# parameter
# Translation details
TRANSLATION_LOCALE="enUS"
TRANSLATION_WHO="bmh <blackmh at gmail dot com>"
TRANSLATION_LANGUAGE="Croatian"
TRANSLATION_VERSION="1.3"
TRANSLATION_ENCODING="UTF8"

# ANSWER OPTIONS (should be the first letter of localized 'yes' and 'no'
YES=y
NO=n

MSG_WELCOME_TEXT="Dobrodošao, $(whoami)! Ja sam IEs4Linux.\nJa ću instalirati IE 6, 5.5 and 5.0 za tebe lako i brzo.\nJoš vas dijeli 4 entera od vaših IEs."
MSG_WELCOME_INSTRUCTIONS="Sada ću vas pitati nekoliko pitanja. Odgovorite sa  $YES or $NO (preporučeni odgovor je podebljan)"

MSG_WELCOME_QUESTION_IE55="IE 6 će biti instaliran automatski.\nŽelite li instalirati i IE 5.5 SP2 ?"
MSG_WELCOME_QUESTION_IE5="A IE 5.01 SP2?"

MSG_LOCALES="IEs mogu biti instalirani sa slijedećim lokalizacijama:"
MSG_CHOOSE_LOCALE="Osnovna likalizacija je $IE6_LOCALE. Pritisnite enter da biste prihvatili osnovnu lokalizaciju ili odaberite drugu: "

MSG_WELCOME_INSTRUCTIONS_DEFAULT="Osnovna putanja instalacije je $BASEDIR_DEFAULT\nIsto tako ću instalirati Flash 9 plugin i napraviti prečac do programa na radnoj površini."
MSG_WELCOME_QUESTION_CONFIGURE="Prihvaćate li postavke? (Za konfiguraciju naprednih postavki utipkajte $NO)"

MSG_CONFIGURE_FLASH="Želite li instalirati Adobe Flash 9 plugin?"
MSG_CONFIGURE_SHORTCUTS="Želite li prečac na radnoj površini?"

MSG_CONFIGURE_BASEDIR_MSG="Sve će biti instalirano u $BASEDIR_DEFAULT"
MSG_CONFIGURE_BASEDIR_QUESTION="Pritisnite enter za nastavak ili odaberite drugi direktorij(upišite potpunu putanju): "

MSG_CONFIGURE_BINDIR_MSG="Binarni pokretači $BINDIR_DEFAULT"
MSG_CONFIGURE_BINDIR_QUESTION="Pritisnite enter za nastavak ili odaberite drugi direktorij: "

MSG_CONFIGURE_WGET="Koristit ću wget program za preuzimanje datoteka s Interneta. Ako su potrebne, posebne postavke utipkajte sada (proxy,...), : "

MSG_START="Počnimo s instalacijom..."

# Sections
MSG_DOWNLOADING="Preuzimam potrebne datoteke"
MSG_INSTALLING="Instaliram"
MSG_INSTALLING_FLASH="Instaliram Flash Player 9"

# Subsections
MSG_INITIALIZING="Inicijalizacija"
MSG_CREATING_PREFIX="Kreiranje Wine Prefixa"
MSG_EXTRACTING_CABS="Ekstrakcija CAB datoteka"
MSG_INSTALLING_FONTS="Instalacija TTF Fontova"
MSG_INSTALLING_REGISTRY="Instalacija registra"
MSG_FINALIZING="Finalizacija"
MSG_COPYING_IE6="Kopiranje ie6 instalacije"
MSG_EXTRACTING_FILES="Ekstrakcija datoteka"
MSG_PROCESSING_INF="Procesiranje inf datoteka"
MSG_PERFORM_INSTALLATIONS="Instalacija"
MSG_INSTALLING_FLASH_ON="Instalacija Flasha"

# Errors
MSG_ERROR_INSTALL_WINE="Za instalaciju je potreban wine! \nPreuzmite ga sa: http://www.winehq.org"
MSG_ERROR_INSTALL_CABEXTRACT="Za instalaciju je potreban cabextract! \nPreuzmite ga sa: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_UPDATE_CABEXTRACT="Za instalaciju je potrebna novija verzija cabextracta! \nPreuzmite ga sa it here: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_INVALIDLOCALE="Nepostojeća lokalizacija! Pokrenite IEs4Linux ponovno i odaberite ispravnu lokalizaciju"
MSG_WARNING_ROOT="Prijavljeni ste kao root korisnik što nepreporučljivo! IE je previše nesiguran program da bi uživao takve privilegije.\nMOže savijet prijatelja? Pokrenite me ponovno kao normalni korisnik."

# Post Install messages
MSG_INSTALLATIONS_FINISHED="Instalacija IEs 4 Linux je gotova!"
MSG_RUN_IES="Za pokretanje IEs, utipkajte:"
#MSG_NEEDS_TRANSLATION="If you have 5 minutes, help me translating IEs4Linux to your language.\nVisit: http://tatanka.com.br/ies4linux/forum/viewtopic.php?p=2"

# TRANSLATION VERSION 1.2
MSG_WARNING_OLDWINE="IEs4Linux 2.0 je predviđen za rad s Wine verzijom (0.9.x). Vaša verzija je ($(wine --version)). Preporučljivo je da preuzmete noviju verziju  (Go to: winehq.com)."
MSG_ERROR_NO_WINEPREFIXCREATE="Vaš wine nema wineprefixcreate instaliran. Možda koristite stariju verziju wine-a. Preporučljivo je da preuzmete noviju verziju"
MSG_ERROR_CABEXTRACTING="Dogodila se greška kod cabextract ekstrakcije datoteka."

# TRANSLATION VERSION 1.3
MSG_ERROR_INSTALL_WGET="Za instalaciju je potreban 'wget'!"
MSG_ERROR_INSTALL_UNZIP="Za instalaciju je potreban 'unzip'!"
