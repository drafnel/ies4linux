# IEs 4 Linux 2.0
# English Strings

# Translation details
TRANSLATION_LOCALE="itIT"
TRANSLATION_WHO="Gollum1 <gollum1 at tiscali dot it>"
TRANSLATION_LANGUAGE="Italian"
TRANSLATION_VERSION="1.0"
TRANSLATION_ENCODING="UTF8"

# ANSWER OPTIONS (should be the first letter of localized 'yes' and 'no'
YES=s
NO=n

MSG_WELCOME_TEXT="Benvenuto, $(whoami)! Io sono IEs4Linux.\nSono in grado di installare IE 6, 5.5 and 5.0 per te in modo facile e veloce.\nDevi solo confermare quattro risposte per avere il tuo IE."
MSG_WELCOME_INSTRUCTIONS="Adesso ti farò alcune domande. devi solo rispondere $YES o $NO (la risposta predefinita è in grassetto)"

MSG_WELCOME_QUESTION_IE55="IE 6 sarà installato automaticamente.\nVuoi installare anche IE 5.5 SP2?"
MSG_WELCOME_QUESTION_IE5="E vuoi installare IE 5.01 SP2?"

MSG_LOCALES="IE può essere installato usando una delle seguenti localizzazioni:"
MSG_CHOOSE_LOCALE="La tua lingua predefinita è $IE6_LOCALE. Premi INVIO per confermarla, o scegli una di quelle indicate: "

MSG_WELCOME_INSTRUCTIONS_DEFAULT="Installerò tutto in $BASEDIR_DEFAULT\nInstallerò anche il plugin di Adobe Flash 9 e creerò l'icona sul desktop."
MSG_WELCOME_QUESTION_CONFIGURE="Queste scelte di soddisfano? (Per una configurazione avanzata digita $NO)"

MSG_CONFIGURE_FLASH="Posso installare il plugin di Adobe Flash 9?"
MSG_CONFIGURE_SHORTCUTS="E per quanto riguarda l'icona sul desktop? Posso crearla?"

MSG_CONFIGURE_BASEDIR_MSG="Normalmente viene installato tutto in $BASEDIR_DEFAULT"
MSG_CONFIGURE_BASEDIR_QUESTION="Premi INVIO per confermare la scelta, oppure digita il precorso della nuova destinazione: "

MSG_CONFIGURE_BINDIR_MSG="I programmi da lanciare saranno creati in $BINDIR_DEFAULT"
MSG_CONFIGURE_BINDIR_QUESTION="Premi INVIO per confermare la scelta o digita il precorso della nuova destinazione: "

MSG_CONFIGURE_WGET="Userò wget per scaricare i file necessari. Se devi aggiungere dei parametri particolari (proxy,...), scrivili qui: "

MSG_START="BENE! Cominciamo l'installazione..."

# Sections
MSG_DOWNLOADING="Scarico tutto quello che serve..."
MSG_INSTALLING="Installo"
MSG_INSTALLING_FLASH="Installo Flash Player 9"

# Subsections
MSG_INITIALIZING="Inizializzo"
MSG_CREATING_PREFIX="Creo i file per Wine"
MSG_EXTRACTING_CABS="Estraggo i file dai CAB."
MSG_INSTALLING_FONTS="Installo i TTF Fonts"
MSG_INSTALLING_REGISTRY="Installo i registri"
MSG_FINALIZING="Finalizzo"
MSG_COPYING_IE6="Copio il file di installazione di ie6"
MSG_EXTRACTING_FILES="Estraggo i files"
MSG_PROCESSING_INF="Processo i file inf"
MSG_PERFORM_INSTALLATIONS="Completo l'installazione"
MSG_INSTALLING_FLASH_ON="Installo flash 9"

# Errors
MSG_ERROR_INSTALL_WINE="Prima devi installare wine! \nScaricalo da qui: http://www.winehq.org"
MSG_ERROR_INSTALL_CABEXTRACT="Prima devi installare cabextract! \nScaricalo da qui: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_UPDATE_CABEXTRACT="Prima devi aggiornare cabextract! \nScaricalo da qui: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_INVALIDLOCALE="Localizzazione non valida! Riavvia IEs4Linux e scegline una valida."
MSG_WARNING_ROOT="Sei root! Questo è altamente sconsigliato! IE è troppo insicuro per essere lanciato da root.\nVuoi un suggerimento da un amico? Lanciami come utente normale, o meglio ancora, crea un utente separato per utilizzare IE."

# Post Install messages
MSG_INSTALLATIONS_FINISHED="L'installazione di IE in Linux è finita!"
MSG_RUN_IES="Per lanciare IE, digita:"
MSG_NEEDS_TRANSLATION="Se hai 5 minuti, aiutami a tradurre IEs4Linux nella tua lingua.\nVisita: http://tatanka.com.br/ies4linux/forum/viewtopic.php?p=2"
