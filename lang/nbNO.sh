# Translation details
TRANSLATION_LOCALE="nbNO"
TRANSLATION_WHO="Alexander N. Sørnes <alex@thehandofagony.com>"
TRANSLATION_LANGUAGE="Norsk (bokmål)"
TRANSLATION_VERSION="1.2"
TRANSLATION_ENCODING="UTF8"

# ANSWER OPTIONS (should be the first letter of localized 'yes' and 'no'
YES=j
NO=n

MSG_WELCOME_TEXT="Velkommen, $(whoami)! Dette er IEs4Linux,\nsom kan installere Internet Explorer 6, 5.5 og 5.0 raskt og enkelt.\nDu er bare fire Enter-trykk fra en ferdig installasjon."
MSG_WELCOME_INSTRUCTIONS="Du vil bli spurt noen spørsmål; bare svar $YES eller $NO (standard er merket med uthevet skrift)"

MSG_WELCOME_QUESTION_IE55="IE 6 installeres automatisk.\nVil du installere 5.5 SP2 også?"
MSG_WELCOME_QUESTION_IE5="Og vil du installere IE 5.01 SP2?"

MSG_LOCALES="IEs kan installeres med følgende språk:"
MSG_CHOOSE_LOCALE="Standard er $IE6_LOCALE. Trykk Enter for å bruke det, eller velg et annet: "

MSG_WELCOME_INSTRUCTIONS_DEFAULT="Det vanlige er å installere alt i «$BASEDIR_DEFAULT».\nFlash 9 og snarveier på skrivebordet følger også med.."
MSG_WELCOME_QUESTION_CONFIGURE="Er det greit? (Skriv $NO for å se avanserte innstillinger.)"

MSG_CONFIGURE_FLASH="Installere Adobe Flash 9?"
MSG_CONFIGURE_SHORTCUTS="Og hva med skrivebordsikoner? Vil du ha dem?"

MSG_CONFIGURE_BASEDIR_MSG="Alt installeres i «$BASEDIR_DEFAULT»"
MSG_CONFIGURE_BASEDIR_QUESTION="Trykk Enter for å beholde dette, eller skriv inn navnet på en annen mappe: "

MSG_CONFIGURE_BINDIR_MSG="Programstartere lages i «$BINDIR_DEFAULT»"
MSG_CONFIGURE_BINDIR_QUESTION="Trykk Enter for å beholde dette, eller skriv inn navnet på en annen mappe: "

MSG_CONFIGURE_WGET="Filene lastes ned med «wget». Hvis du trenger spesielle kommandolinjevalg\n(mellomtjener etc.), må du oppgi dem nå.: "

MSG_START="Bra! La oss installere . . ."

# Sections
MSG_DOWNLOADING="Laster ned alt som trengs"
MSG_INSTALLING="Installerer"
MSG_INSTALLING_FLASH="Installerer Flash Player 9"

# Subsections
MSG_INITIALIZING="Laster"
MSG_CREATING_PREFIX="Lager Wine-katalog"
MSG_EXTRACTING_CABS="Pakker ut CAB-filer"
MSG_INSTALLING_FONTS="Installerer TTF-skrifttyper"
MSG_INSTALLING_REGISTRY="Installerer register"
MSG_FINALIZING="Ferdiggjør"
MSG_COPYING_IE6="Kopierer IE6-installasjon"
MSG_EXTRACTING_FILES="Pakker ut filer"
MSG_PROCESSING_INF="Behandler inf-fil"
MSG_PERFORM_INSTALLATIONS="Utfører installasjoner"
MSG_INSTALLING_FLASH_ON="Installere Flash: på"

# Errors
MSG_ERROR_INSTALL_WINE="Du må installere Wine først.\nLast det ned her: http://www.winehq.org"
MSG_ERROR_INSTALL_CABEXTRACT="Du må installere cabextract først. \nLast det ned her: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_UPDATE_CABEXTRACT="Du må oppdatere cabextract først. \nLast det ned her: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_INVALIDLOCALE="Ugyldig språkvalg. Start IEs4Linux på nytt og velg et gyldig språk."
MSG_WARNING_ROOT="Du kjører som «root», noe som ikke er så lurt. Internet Explorer er alt for usikkert til å få tilgang til hele maskinen.\nHva med å installere som en vanlig bruker, eller å lage en egen bruker bare for å håndtere Internet Explorer?"

# Post Install messages
MSG_INSTALLATIONS_FINISHED="IEs 4 Linux er ferdig installert."
MSG_RUN_IES="For å kjøre IE, skriv:"
MSG_NEEDS_TRANSLATION="Hvis du kan andre språk er det fint om du kan hjelpe til med oversettingen. Det er bare fem minutter.\nBesøk: http://tatanka.com.br/ies4linux/forum/viewtopic.php?p=2"

# TRANSLATION VERSION 1.2
MSG_WARNING_OLDWINE="IEs4Linux 2.0 er laget for å brukes med nyere Wine versjoner (0.9.x). Det ser ut til at du bruker en gammel Wine-versjon ($(wine --version)). Det anbefales at du oppdaterer Wine til siste versjon (gå til winehq.com)."
MSG_ERROR_NO_WINEPREFIXCREATE="Din Wine-installasjon mangler filen 'wineprefixcreate'. Det er mulig du kjører en gammel versjon; prøv å oppdatere til den nyeste."
MSG_ERROR_CABEXTRACTING="Klarte ikke pakke ut alle filene.." 