# IEs 4 Linux 2.0
# Finnish Strings

# Translation details
TRANSLATION_LOCALE="fiFI"
TRANSLATION_WHO=""
TRANSLATION_LANGUAGE="Finnish"
TRANSLATION_VERSION="0.1"
TRANSLATION_ENCODING="UTF8"

# ANSWER OPTIONS (should be the first letter of localized 'yes' and 'no'
YES=k
NO=e

MSG_WELCOME_TEXT="Tervetuloa, $(whoami)! Olen IEs4Linux.\nVoin asentaa sinulle IE:n versiot 6, 5.5 ja 5.0 helposti ja nopeasti.\nOlet vain neljän Enterin painalluksen päässä IE:stä."
MSG_WELCOME_INSTRUCTIONS="Kysyn muutaman kysymyksen. Vastaa $YES or $NO (Oletusvastaus on korostettu)."

MSG_WELCOME_QUESTION_IE55="IE 6 asennetaan automaattisesti.\nHaluatko asentaa myös version IE 5.5 SP2?"
MSG_WELCOME_QUESTION_IE5="Entä haluatko asentaa version IE 5.01 SP2?"

MSG_LOCALES="Selaimet voidaan asentaa käyttäen seuraavia lokaaleja:"
MSG_CHOOSE_LOCALE="Oletuslokaali on $IE6_LOCALE. Paina Enteriä pitääksesi sen tai valitse toinen: "

MSG_WELCOME_INSTRUCTIONS_DEFAULT="Asennan kaiken oletuksena hakemistoon $BASEDIR_DEFAULT \nAsenennan myös Flash 9-pluginin ja luon työpöytäkuvakkeet."
MSG_WELCOME_QUESTION_CONFIGURE="Sopiiko tämä sinulle? (Asettaaksesi erikoisasetuksia valitse $NO)"

MSG_CONFIGURE_FLASH="Tulisiko minun asentaa Adobe Flash 9- plugin?"
MSG_CONFIGURE_SHORTCUTS="Ja luodaanko työpöydälle kuvakkeita?"

MSG_CONFIGURE_BASEDIR_MSG="Kaikki asennetaan $BASEDIR_DEFAULT hakemistoon"
MSG_CONFIGURE_BASEDIR_QUESTION="Paina Enter asentaaksesi tähän hakemistoon tai kirjoita uusi hakemistopolku (koko polku): "

MSG_CONFIGURE_BINDIR_MSG="Ohjelmatiedostot tullaan luomaan hakemistoon $BINDIR_DEFAULT "
MSG_CONFIGURE_BINDIR_QUESTION="Paina Enter pitääksesi tämän hakemiston tai kirjoita uusi hakemistopolku (koko polku): "

MSG_CONFIGURE_WGET="Käytämme wget-ohjelmaa tiedostojen hakuun. Jos sinun tarvitsee käyttää jotakin wgetin erikoisvalintaa (proxy,...), kirjoita ne nyt: "

MSG_START="Aloitetaan asennukset..."

# Sections
MSG_DOWNLOADING="Haetaan kaikki tarvittava"
MSG_INSTALLING="Asennetaan"
MSG_INSTALLING_FLASH="Asennetaan Flash Player 9"

# Subsections
MSG_INITIALIZING="Initialisoi"
MSG_CREATING_PREFIX="Luodaan Wine Prefix"
MSG_EXTRACTING_CABS="Puretaan CAB-tiedostoja"
MSG_INSTALLING_FONTS="Asennetaan TTF-Fontteja"
MSG_INSTALLING_REGISTRY="Asennetaan rekisteri"
MSG_FINALIZING="Viimeistellään"
MSG_COPYING_IE6="Kopioidaan IE6-asennus"
MSG_EXTRACTING_FILES="Puretaan tiedostoja"
MSG_PROCESSING_INF="Käsitellään inf-tiedostoa"
MSG_PERFORM_INSTALLATIONS="Suoritetaan asennuksia"
MSG_INSTALLING_FLASH_ON="Asennetaan Flash päälle"

# Errors
MSG_ERROR_INSTALL_WINE="Sinun täytyy asentaa wine ensin! \nWinen kotisivu: http://www.winehq.org"
MSG_ERROR_INSTALL_CABEXTRACT="Sinun täytyy asentaa cabextract ensin! \ncabextractin kotisivu: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_UPDATE_CABEXTRACT="Sinun täytyy päivittää cabextract ensin! \ncabextractin kotisivu: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_INVALIDLOCALE="Väärä lokaali! Aja IEs4Linux uudelleen ja valitse validi lokaali."
MSG_WARNING_ROOT="Olet root (pääkäyttäjä)! Tämä ei ole suositeltavaa! IE on liian turvaton root-oikeuksilla ajettavaksi.\nSuositeltavaa on ajaa IEs4Linux normaalin käyttäjän oikeuksilla tai jopa luoda oma käyttäjätunnus IE:tä varten."

# Post Install messages
MSG_INSTALLATIONS_FINISHED="IEs 4 Linuxin asennus valmis!"
MSG_RUN_IES="Ajaaksesi IE:n, kirjoita:"
MSG_NEEDS_TRANSLATION="Jos sinulla on 5 minuuttia aikaa, auta minua kääntämään IEs4Linux omalle kielellesi.\nVieraile: http://tatanka.com.br/ies4linux/forum/viewtopic.php?p=2"

# TRANSLATION VERSION 1.2
MSG_WARNING_OLDWINE="IEs4Linux 2.0 on kehitetty toimimaan uudemmilla Winen versioilla(0.9.x). Vaikuttaa siltä, että käytät vanhempaa versiota winestä ($(wine --version)). On suositeltavaa, että päivität Winesi uusimpaan versioon. (Vieraile: winehq.com)."
MSG_ERROR_NO_WINEPREFIXCREATE="Winessäsi ei ole asennettuna wineprefixcreate. Ehkäpä käytät vanhaa Winen versiota. Koita päivittää Winesi uusimpaan versioon."
MSG_ERROR_CABEXTRACTING="Tapahtui virhe purettaessa tiedostoja cabextract-ohjelmalla."
