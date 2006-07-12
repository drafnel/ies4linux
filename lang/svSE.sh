# IEs 4 Linux 2.0

# Translation details
TRANSLATION_LOCALE="svSE"
TRANSLATION_WHO="Zafer Abo-Samra <ies4linux at nattsnack.se>"
TRANSLATION_LANGUAGE="Swedish"
TRANSLATION_VERSION="1.0"
TRANSLATION_ENCODING="UTF8"

# ANSWER OPTIONS (should be the first letter of localized 'yes' and 'no'
YES=j
NO=n

MSG_WELCOME_TEXT="Välkommen, $(whoami)! Jag är IEs4Linux.\nJag kan snabbt och enkelt installera IE 6, 5.5 och 5.0 för dig.\nDu är bara fyra 'enter' ifrån dina IEs."
MSG_WELCOME_INSTRUCTIONS="Jag kommer att fråga dig några frågor nu. Svara bara $YES eller $NO (standardsvaret är i fetstil)"

MSG_WELCOME_QUESTION_IE55="IE 6 kommer att installeras automatiskt.\nVill du också installera IE 5.5 SP2?"
MSG_WELCOME_QUESTION_IE5="Och vill du installera IE 5.01 SP2?"

MSG_LOCALES="IEsarna kan isntalleras med en av följande språk:"
MSG_CHOOSE_LOCALE="Standard är $IE6_LOCALE. Tryck på enter för att behålla det eller välj en annan: "

MSG_WELCOME_INSTRUCTIONS_DEFAULT="Som standard kommer jag att installera allt i $BASEDIR_DEFAULT\nJag kommer också att installera Flash 9-insticksprogram, och skapa genvägar på skrivbordet."
MSG_WELCOME_QUESTION_CONFIGURE="Är det ok för dig? (För att välja avancerade inställningar tryck på $NO)"

MSG_CONFIGURE_FLASH="Skall jag installera Adobe Flash 9-insticksprogram?"
MSG_CONFIGURE_SHORTCUTS="Och genvägarna på skrivbordet? Kan jag skapa dom?"

MSG_CONFIGURE_BASEDIR_MSG="Allt kommer att installeras i $BASEDIR_DEFAULT"
MSG_CONFIGURE_BASEDIR_QUESTION="Tryck på enter för att behålla katalogen, eller skriv in ett nytt katalognamn (hela sökvägen): "

MSG_CONFIGURE_BINDIR_MSG="Binära startfiler kommer att skapas i $BINDIR_DEFAULT"
MSG_CONFIGURE_BINDIR_QUESTION="Tryck på enter eller skriv in en ny katalog: "

MSG_CONFIGURE_WGET="Vi kommer att använda programmet wget för att ladda ner filerna. Om du behöver några speciella flaggor (proxy, ...), skriv in dom nu: "

MSG_START="Ok! Låt oss börja med installationerna..."

# Sections
MSG_DOWNLOADING="Laddar ner allt vi behöver"
MSG_INSTALLING="Installerar"
MSG_INSTALLING_FLASH="Installerar Flash Player 9"

# Subsections
MSG_INITIALIZING="Initierar"
MSG_CREATING_PREFIX="Skapra Wine-prefix"
MSG_EXTRACTING_CABS="Packar up CAB-filerna"
MSG_INSTALLING_FONTS="Installerar TTF-typsnitt"
MSG_INSTALLING_REGISTRY="Installerar registret"
MSG_FINALIZING="Färdigställer"
MSG_COPYING_IE6="Kopierar IE6-installtionen"
MSG_EXTRACTING_FILES="Packar upp filerna"
MSG_PROCESSING_INF="Går igenom inf-filen"
MSG_PERFORM_INSTALLATIONS="Installerar"
MSG_INSTALLING_FLASH_ON="Installerar flash nu"

# Errors
MSG_ERROR_INSTALL_WINE="Du behöver först installera wine! \nLadda ner den här: http://www.winehq.org"
MSG_ERROR_INSTALL_CABEXTRACT="Du behöver först installera cabextract! \nLadda ner den här: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_UPDATE_CABEXTRACT="Du behöver först uppdatera cabextract! \nLadda ner den här: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_INVALIDLOCALE="Felaktigt språkval! Var god kör IEs4Linux igen och välj ett godkänt sådant."
MSG_WARNING_ROOT="Du är root! Vi avråder dig starkt från att köra som root| IE är för osäker för att de honom root-tillgång.\nVill du ha ett tips från en kompis? Kör mig som en normal användare; Ännu bättre vore om du kan skapa en egen användare för att hantera IE."

# Post Install messages
MSG_INSTALLATIONS_FINISHED="'IEs 4 Linux'-installationerna är klara!"
MSG_RUN_IES="För att köra IE, skriv:"
MSG_NEEDS_TRANSLATION="Om du har 5 minuter, hjälp mig att översätta IEs4Linux till ditt språk.\nBesök: http://tatanka.com.br/ies4linux/forum/viewtopic.php?p=2"