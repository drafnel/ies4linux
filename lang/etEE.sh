# IEs 4 Linux 2.0
# English Strings

# Translation details
TRANSLATION_LOCALE="etEE"
TRANSLATION_WHO="Edmund Laugasson <ed.lau at mail dot ee>"
TRANSLATION_LANGUAGE="Estonian"
TRANSLATION_VERSION="1.0"
TRANSLATION_ENCODING="UTF8"

# ANSWER OPTIONS (should be the first letter of localized 'yes' and 'no'
YES=jah
NO=ei

MSG_WELCOME_TEXT="Tervist, $(whoami)! Olen IEs4Linux.\nMa suudan lihtsalt ja kiirelt paigaldada IE 6, 5.5 ja 5.0.\nSul tuleb vastata neljale lihtsale küsimusele."
MSG_WELCOME_INSTRUCTIONS="Ma küsin mõned lihtsad küsimused. Vasta lihtsalt $YES or $NO (vaikimisi valik on rasvane)"

MSG_WELCOME_QUESTION_IE55="IE 6 paigaldatakse automaatselt.\nKas soovid paigaldada ka IE 5.5 SP2?"
MSG_WELCOME_QUESTION_IE5="...ja kas soovid paigaldada ka IE 5.01 SP2?"

MSG_LOCALES="IE võib paigaldada, kasutades ühte alljärgnevatest kasutuskohtadest:"
MSG_CHOOSE_LOCALE="Vaikimisi kasutuskoht on $IE6_LOCALE. Vajuta Enter kui oled vaikimisi valikuga nõus või vali uus: "

MSG_WELCOME_INSTRUCTIONS_DEFAULT="Vaikimisi paigaldatakse kõik kataloogi $BASEDIR_DEFAULT\nPaigaldatakse ka Flash 9 plugin ja tehakse töölauale viited."
MSG_WELCOME_QUESTION_CONFIGURE="Kas see sobib Sulle? (Rohkemate valikuta saamiseks vasta $NO)"

MSG_CONFIGURE_FLASH="Kas paigaldan ka Adobe Flash 9 plugina?"
MSG_CONFIGURE_SHORTCUTS="Ja kuidas on töölaua ikoonidega? Kas tekitan ka need?"

MSG_CONFIGURE_BASEDIR_MSG="Kogu tarkvara paigaldatakse kataloogi $BASEDIR_DEFAULT"
MSG_CONFIGURE_BASEDIR_QUESTION="Vajuta Enter, et vaikimisi pakutuga nõus olla või sisesta uus asukoht (absoluutne otsitee): "

MSG_CONFIGURE_BINDIR_MSG="Programmi käivitamise binaarid paigaldatakse kataloogi $BINDIR_DEFAULT"
MSG_CONFIGURE_BINDIR_QUESTION="Vajuta Enter, et vaikimisi pakutuga nõus olla või sisesta uus asukoht: "

MSG_CONFIGURE_WGET="Me kasutame programmi wget, et faile alla laadida. Kui vajad mingeid erilisi võtmeid (proxy,...), kirjuta need nüüd: "

MSG_START="Nüüd on kõik vajalik info olemas! Võime alustada paigaldusega..."

# Sections
MSG_DOWNLOADING="Laadime alla paigaldamiseks vajalikku tarkvara"
MSG_INSTALLING="Paigaldame..."
MSG_INSTALLING_FLASH="Hetkel toimub Flash 9 paigaldamine"

# Subsections
MSG_INITIALIZING="Tuvastamine"
MSG_CREATING_PREFIX="Loome Wine eesliited..."
MSG_EXTRACTING_CABS="Pakime lahti CAB failid..."
MSG_INSTALLING_FONTS="Paigaldame TTF fondid..."
MSG_INSTALLING_REGISTRY="Paigaldame registrid..."
MSG_FINALIZING="Lõpetame paigaldust..."
MSG_COPYING_IE6="Kopeerime IE6 faile..."
MSG_EXTRACTING_FILES="Pakime faile lahti..."
MSG_PROCESSING_INF="Töötleme inf-faile"
MSG_PERFORM_INSTALLATIONS="Valmistame paigaldust ette"
MSG_INSTALLING_FLASH_ON="Paigaldame flash-i..."

# Errors
MSG_ERROR_INSTALL_WINE="Süsteemist ei leitud programmi Wine! \nSeda saab siit alla laadida: http://www.winehq.org"
MSG_ERROR_INSTALL_CABEXTRACT="Süsteemist ei leitud programmi cabextract! \nSeda saab siit alla laadida: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_UPDATE_CABEXTRACT="Sa pead uuendama programmi cabextract! \nSeda saab siit alla laadida: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_INVALIDLOCALE="Vigane kasutuskoht! Palun käivita IEs4Linux uuesti ja vali üks."
MSG_WARNING_ROOT="Sa oled juurkasutaja (root)! See on väga ebasoovitav! IE on selleks liiga ebaturvaline et sellele juurkasutaja õigusi anda.\nKas tahad asjalikku soovitust? Käivita IEs4Linux kui tavakasutaja, mis on palju parem ja kui saad siis tekita koguni eraldi kasutaja, mille all IE-d kasutad. Nii on kõige ohutum"

# Post Install messages
MSG_INSTALLATIONS_FINISHED="IEs 4 Linux paigaldamine edukalt lõppenud!"
MSG_RUN_IES="Et käivitada IE, kirjuta:"
MSG_NEEDS_TRANSLATION="Kui Sul juhtub olema 5 minutit vaba aega siis palun aita mul seda programmi (IEs4Linux) tõlkida Sinu emakeelde.\nSelleks külasta aadressi: http://tatanka.com.br/ies4linux/forum/viewtopic.php?p=2"

# TRANSLATION VERSION 1.2
MSG_WARNING_OLDWINE="IEs4Linux 2.0 on arendatud Wine uusimate versioonide (0.9.x) jaoks. Paistab, et Sa kasutad suhteliselt vana versiooni ($(wine --version)). Soovitav oleks wine uuendada uusima versiooni peale (Mine aadressile: winehq.com)."
MSG_ERROR_NO_WINEPREFIXCREATE="Sinu wine jaoks ei ole wineprefixcreate paigaldatud. Võibolla on Sul liiga vana wine versioon. Proovi seda esmalt uuendada."
MSG_ERROR_CABEXTRACTING="Tekkis miski viga cab-failide lahtipakkimisel."

# TRANSLATION VERSION 1.3
MSG_ERROR_INSTALL_WGET="Sa pead paigaldama 'wget' kõigepealt!"
MSG_ERROR_INSTALL_UNZIP="Sa pead paigaldama 'unzip' kõigepealt!"

# TRANSLATION VERSION 1.4
GUI_TITLE="Internet Explorer Linuxile"
GUI_OK="Paigalda"
GUI_CANCEL="Katkesta"

GUI_INSTALLATION_OPTIONS="Paigaldamise valikud"
GUI_IE="Internet Explorer"
GUI_EXTRA="Lisad"
GUI_INSTALL_IE6="Paigalda Internet Explorer 6.0 SP1"
GUI_INSTALL_IE55="Paigalda Internet Explorer 5.5"
GUI_INSTALL_IE5="Paigalda Internet Explorer 5.01"
GUI_INSTALL_FLASH="Paigalda Adobe Flash player 9"
GUI_CREATE_ICONS="Tekita ikoonid töölauale"
GUI_LOCALE="Kasutuskoht"

GUI_ADVANCED_OPTIONS="Täiendavad valikud"
GUI_ADVANCED_BASEDIR="Paigalduskaust"
GUI_ADVANCED_BINDIR="Käivitusfailide kaust"
GUI_ADVANCED_DOWNLOADDIR="Allalaadimise kaust"
GUI_ADVANCED_WGETFLAGS="Wget parameetrid"