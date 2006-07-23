# IEs 4 Linux 2.0
# English Strings

# Translation details
TRANSLATION_LOCALE="roRO"
TRANSLATION_WHO="Arion George  <geo dot arion at gmail dot com>"
TRANSLATION_LANGUAGE="Romana"
TRANSLATION_VERSION="1.0"
TRANSLATION_ENCODING="UTF8"

# ANSWER OPTIONS (should be the first letter of localized 'yes' and 'no'
YES=d
NO=n

MSG_WELCOME_TEXT="Bunvenit, $(whoami)! Sunt IEs4Linux.\nPot sa instalez pentru tine IE 6, 5.5 si 5.0 usor si repede.\nEsti la distanta de doar patru 'enter'-uri de IE-uri."
MSG_WELCOME_INSTRUCTIONS="Iti voi pune niste intrebari acum. Raspunde doar $YES sau $NO (raspunsul implicit este cel ingrosat)"

MSG_WELCOME_QUESTION_IE55="IE 6 va fi instalat automat.\nVreiti sa instalati si IE 5.5 SP2 ?"
MSG_WELCOME_QUESTION_IE5="Si vreti sa instalati si IE 5.01 SP2?"

MSG_LOCALES="IE-urile pot fi instalate folosind una din urmatoarele limbi :"
MSG_CHOOSE_LOCALE="Implicita este $IE6_LOCALE. Apasa enter pentru a o pastra, sau alege alta : "

MSG_WELCOME_INSTRUCTIONS_DEFAULT="Implicit, voi instala totul in $BASEDIR_DEFAULT\nVoi instala deasemenea plugin-ul Flash 9 si voi crea scurtaturi pe Desktop."
MSG_WELCOME_QUESTION_CONFIGURE="Esti de acord cu asta ? (Pentru a configura optiunile avansate tasteaza $NO)"

MSG_CONFIGURE_FLASH="Sa instalez si plugin-ul Adobe Flash 9 ?"
MSG_CONFIGURE_SHORTCUTS="Si pot sa creez pictograme pe Desktop ?"

MSG_CONFIGURE_BASEDIR_MSG="Totul va fi instalat la $BASEDIR_DEFAULT"
MSG_CONFIGURE_BASEDIR_QUESTION="Apasati enter pentru a pastra setarea sau tastati noua cale (calea absoluta): "

MSG_CONFIGURE_BINDIR_MSG="'Binary launchers' vor fi create la $BINDIR_DEFAULT"
MSG_CONFIGURE_BINDIR_QUESTION="Apasati enter pentru a pastra setarea sau tastati noua cale: "

MSG_CONFIGURE_WGET="Vom folosi use wget pentru a downloada fisierele. Daca aveti nevoie de anumite flag-uri (proxy,...), tastati-le acum: "

MSG_START="Ok! Sa incepem instalarile..."

# Sections
MSG_DOWNLOADING="Se downloadeaza fisierele necesare..."
MSG_INSTALLING="Se instaleaza"
MSG_INSTALLING_FLASH="Se instaleaza Flash Player 9"

# Subsections
MSG_INITIALIZING="Se initializeaza"
MSG_CREATING_PREFIX="Se creaza Wine Prefix"
MSG_EXTRACTING_CABS="Se extrag fisiere .CAB "
MSG_INSTALLING_FONTS="Se instaleaza fonturi TTF"
MSG_INSTALLING_REGISTRY="Installing registry"
MSG_FINALIZING="Se finalizeaza"
MSG_COPYING_IE6="Se copiaza instalarea ie6"
MSG_EXTRACTING_FILES="Se extrag fisiere"
MSG_PROCESSING_INF="Se proceseaza fisiere .inf"
MSG_PERFORM_INSTALLATIONS="Se instaleaza..."
MSG_INSTALLING_FLASH_ON="Se instaleaza flash on"

# Errors
MSG_ERROR_INSTALL_WINE="Trebuie sa instalati wine mai intai! \nDownloadati-l de aici: http://www.winehq.org"
MSG_ERROR_INSTALL_CABEXTRACT="Trebuie sa instalati cabextract mai intai! \nDownloadati-l de aici: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_UPDATE_CABEXTRACT="Trebuie sa updatati cabextract mai intai! \nDownloadati-l de aici: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_INVALIDLOCALE="Limba invalida! Va rugam executati IEs4Linux din nou si alegeti una valida."
MSG_WARNING_ROOT="Sunteti root! Aceasta actiune este puternic descurajata ! IE este prea insecur ca dumneavoastra sa-i dati acces root.\nVreti un sfat de la un prieten? Executati-ma can un user normal sau, mai bine, daca puteti, creati un utilizator separat doar pentru IE-uri."

# Post Install messages
MSG_INSTALLATIONS_FINISHED="Instalarile IEs 4 Linux s-au terminat!"
MSG_RUN_IES="Pentru a executa IE-urile, tastati:"
MSG_NEEDS_TRANSLATION="Daca aveti 5 minute disponibile, ajutati-ma sa traduc IEs4Linux in limba dumneavoastra.\nVisitati: http://tatanka.com.br/ies4linux/forum/viewtopic.php?p=2"

# TRANSLATION VERSION 1.0
MSG_WARNING_OLDWINE="IEs4Linux 2.0 este creat pentru a fi folosit cu versiuni recente de Wine (0.9.x). Se pare ca dumneavoastra folositi o versiune veche ($(wine --version)).Este recomandat sa updatati wine cu noua versiune (Mergeti la: winehq.com)."
MSG_ERROR_NO_WINEPREFIXCREATE="Wine-ul dumneavoastra nu are instalat wineprefixcreate. Poate folositi o versiune veche de Wine. Incercati sa o updatati cu noua versiune (Mergeti la: winehq.com)."
MSG_ERROR_CABEXTRACTING="O eroare a avut loc incercand sa executam cabextract pe niste fisiere."
