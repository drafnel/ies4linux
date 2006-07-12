# IEs 4 Linux 2.0
# Danish Strings

# Translation details
TRANSLATION_LOCALE="daDK"
TRANSLATION_WHO="Anders Frei Hansen <cphwizard at gmail dot com>"
TRANSLATION_LANGUAGE="Dansk"
TRANSLATION_VERSION="1.0"
TRANSLATION_ENCODING="UTF8"

# ANSWER OPTIONS (should be the first letter of localized 'yes' and 'no'
YES=j
NO=n

MSG_WELCOME_TEXT="Velkommen, $(whoami)! Jeg er IEs4Linux.\nJeg kan nemt og hurtigt installere IE 6, 5.5 og 5.0 for dig.\nDu er nu kun fire 'enter'-tast fra IE."
MSG_WELCOME_INSTRUCTIONS="Først har jeg nogle spørgsmål til dig. Svar blot $YES eller $NO (default svaret er vist med fed)"

MSG_WELCOME_QUESTION_IE55="IE 6 vil automatisk blive installeret.\nØnsker du også at installere IE 5.5 SP2?"
MSG_WELCOME_QUESTION_IE5="Og ønsker du at installere IE 5.01 SP2?"

MSG_LOCALES="IE kan installeres med de følgende sprog:"
MSG_CHOOSE_LOCALE="Default er $IE6_LOCALE. Tryk enter for at bruge dette eller vælg et andet sprog: "

MSG_WELCOME_INSTRUCTIONS_DEFAULT="Som default installerer jeg alt i $BASEDIR_DEFAULT\nJEg vil også installere Flash 9 plugin og oprette genveje på skrivebordet."
MSG_WELCOME_QUESTION_CONFIGURE="Er dette ok? (For at ændre indstillingerne, tast $NO)"

MSG_CONFIGURE_FLASH="Skal jeg installere plugin til Adobe Flash 9?"
MSG_CONFIGURE_SHORTCUTS="Og hvad med genveje på skrivebordet? Skal jeg oprette dem?"

MSG_CONFIGURE_BASEDIR_MSG="Alting vil blive installeret i $BASEDIR_DEFAULT"
MSG_CONFIGURE_BASEDIR_QUESTION="Tryk enter for at bruge dette, eller angiv et andet katalog (skriv den fulde sti): "

MSG_CONFIGURE_BINDIR_MSG="Binære opstartsprogrammer vil blive oprettet i $BINDIR_DEFAULT"
MSG_CONFIGURE_BINDIR_QUESTION="Tryk enter for at bruge dette eller angiv et andet katalog: "

MSG_CONFIGURE_WGET="Vi bruger wget til at downloade de nødvendige filer. Hvis der behøves særlige parametre (proxy,...), så indtast dem nu: "

MSG_START="OK! Lad os begynde installationerne..."

# Sections
MSG_DOWNLOADING="Downloader alt hvad vi skal bruge"
MSG_INSTALLING="Installerer"
MSG_INSTALLING_FLASH="Installerer Flash Player 9"

# Subsections
MSG_INITIALIZING="Initialiserer"
MSG_CREATING_PREFIX="Danner Wine Prefix"
MSG_EXTRACTING_CABS="Udpakker CAB filer"
MSG_INSTALLING_FONTS="Installerer TTF Fonte"
MSG_INSTALLING_REGISTRY="Installerer registreringsdatabase"
MSG_FINALIZING="Afslutter"
MSG_COPYING_IE6="Kopierer ie6 installation"
MSG_EXTRACTING_FILES="Udpakker filer"
MSG_PROCESSING_INF="Behandler inf fil"
MSG_PERFORM_INSTALLATIONS="Udfører installationer"
MSG_INSTALLING_FLASH_ON="Installerer flash"

# Errors
MSG_ERROR_INSTALL_WINE="Du er nødt til at installere wine først! \nDownload den her: http://www.winehq.org"
MSG_ERROR_INSTALL_CABEXTRACT="Du er nødt til at installere cabextract først! \nDownload den her: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_UPDATE_CABEXTRACT="Du er nødt til at opdatere cabextract først! \nDownload den her: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_INVALIDLOCALE="Ugyldigt sprog! Kør venligst IEs4Linux igen og vælg et gyldigt."
MSG_WARNING_ROOT="Du er logget ind som root! Dette kan SLET ikke anbefales! IE er alt for usikkert til at tildele det root adgang.\nTag et venligt råd: Kør dette program som din normale bruger eller, hvad der er bedre, hvis du kan, opret en helt ny bruger til kun at køre IE med."

# Post Install messages
MSG_INSTALLATIONS_FINISHED="IEs 4 Linux installationer er afsluttet!"
MSG_RUN_IES="For at køre dine IE, tast:"
MSG_NEEDS_TRANSLATION="Hvis du har 5 minutter, så hjælp mig med at oversætte IEs4Linux til dit sprog.\nBesøg: http://tatanka.com.br/ies4linux/forum/viewtopic.php?p=2"