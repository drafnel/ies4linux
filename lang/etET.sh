# IEs 4 Linux 2.0
# English Strings

# Translation details
TRANSLATION_LOCALE="etET"
TRANSLATION_WHO="M2s <ocjel ät hot punkt ee>"
TRANSLATION_LANGUAGE="Estonian"
TRANSLATION_VERSION="1.0"
TRANSLATION_ENCODING="UTF8"

# ANSWER OPTIONS (should be the first letter of localized 'yes' and 'no'
YES=j
NO=e

MSG_WELCOME_TEXT="Teretulemast, $(whoami)! Olen IEs4Linux.\nMa suudan paigaldada IE 6, 5.5 ja 5.0 kergesti ja kiiresti.\nSind lahutab vaid neli 'enter'it sinu IEdest."
MSG_WELCOME_INSTRUCTIONS="Ma küsin nüüd sinult mõne küsimuse. Lihtsalt vasta $YES või $NO (vaikeväärtused on tähistatud rasvases tekstis)"

MSG_WELCOME_QUESTION_IE55="IE 6 paigaldatakse automaatselt.\nKas soovid ka paigaldada IE 5.5 SP2?"
MSG_WELCOME_QUESTION_IE5="Ja kas soovid paigaldada IE 5.01 SP2?"

MSG_LOCALES="IEsid saab paigaldada kasutades järgmisesse asukohta:"
MSG_CHOOSE_LOCALE="Asukoha vaikevääruts on $IE6_LOCALE. Vajuta enter jätmaks vaikeväärtus või vali endale sobiv: "

MSG_WELCOME_INSTRUCTIONS_DEFAULT="Nagu algsättestatult, paigaldan ma tarkvara $BASEDIR_DEFAULT\npeale selle paigaldan ma Flash 9 plugina ja loon Töölauale viited."
MSG_WELCOME_QUESTION_CONFIGURE="Kas see sobib sulle? (Seadmaks valikuid täpsemalt, sisesta $NO)"

MSG_CONFIGURE_FLASH="Kas ma peaksin paigaldama Adobe Flash 9 plugina?"
MSG_CONFIGURE_SHORTCUTS="Ja kuidas jääb Töölaua viidetega? Kas lubad mul nad luua?"

MSG_CONFIGURE_BASEDIR_MSG="Kõik paigaldatakse $BASEDIR_DEFAULT kausta"
MSG_CONFIGURE_BASEDIR_QUESTION="Vajuta enter jätmaks paigaldamist antud kausta või trüki sisse uus kaust (täispikk asukoht): "

MSG_CONFIGURE_BINDIR_MSG="Binaar käivitajad saab loodud kausta $BINDIR_DEFAULT"
MSG_CONFIGURE_BINDIR_QUESTION="Vajuta enter jätmaks paigaldamist antud kausta või trüki sisse uus kaust (täispikk asukoht): "

MSG_CONFIGURE_WGET="Me kasutame wget'i failide allalaadimiseks. Kui sul läheb vaja lisada mõni spetsiaalne flag (proxy,...), sisesta need siin kohe: "

MSG_START="Hüva! Alustame tarkvara paigaldamisega..."

# Sections
MSG_DOWNLOADING="Tirime kõik mis meil vaja läheb"
MSG_INSTALLING="Paigaldan"
MSG_INSTALLING_FLASH="Paigaldan Flash Player 9'at"

# Subsections
MSG_INITIALIZING="Initsialiseerin"
MSG_CREATING_PREFIX="Loon Wine Prefiksi"
MSG_EXTRACTING_CABS="Avan CAB faile"
MSG_INSTALLING_FONTS="Paigaldan TTF Kirjatüüpe"
MSG_INSTALLING_REGISTRY="Paigaldan registrit"
MSG_FINALIZING="Lõpetan"
MSG_COPYING_IE6="Kopeerin ie6 installatsiooni"
MSG_EXTRACTING_FILES="Avan faile"
MSG_PROCESSING_INF="Töötlen inf faili"
MSG_PERFORM_INSTALLATIONS="Paigaldamise protsess on käigus"
MSG_INSTALLING_FLASH_ON="Paigaldan flashi peale"

# Errors
MSG_ERROR_INSTALL_WINE="Sul läheb vaja esmalt paigaldada Wine'i tarkvaraelulaator! \nTiri see siit: http://www.winehq.org"
MSG_ERROR_INSTALL_CABEXTRACT="Sul läheb vaja esmalt paigaldada cabextract! \nTiri see siit: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_UPDATE_CABEXTRACT="Sul läheb vaja esmalt uuendada cabextract'i! \nTiri see siit: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_INVALIDLOCALE="Ebasobiv asukoht! Palun käivita IEs4Linux uuesti ja sisesta sobiv."
MSG_WARNING_ROOT="Sa oled sees kui Administraator! See on sinust liiga julge! IE on liiga ebakindel andmaks talle admistraatori õiguseid.\nKas soovid sõbraliku abi? Jooksuta mind tavakasutajaga või, mis oleks veel parem, kui sa saad, loo uus kasutaja mis on mõeldud IEde kanseldamiseks."

# Post Install messages
MSG_INSTALLATIONS_FINISHED="IEs 4 Linux paigaldamine on lõpetatud!"
MSG_RUN_IES="Käivitamaks enda IEsid, trüki:"
MSG_NEEDS_TRANSLATION="Kui sul on 5 minutit, aita tõlkida IEs4Linux enda keelde.\nKülasta: http://tatanka.com.br/ies4linux/forum/viewtopic.php?p=2"

# TRANSLATION VERSION 1.2
MSG_WARNING_OLDWINE="IEs4Linux 2.0 on arendatud töötamaks hiliseima Wine versiooni (0.9.x)'ga. Paistab, et sa kasutad vanemat väljalaset ($(wine --version)). Soovitatavalt tuleks sul uuendada enda wine'i (Go to: winehq.com)."
MSG_ERROR_NO_WINEPREFIXCREATE="Sinu wine'l ei paista olevat wineprefixcreate'i paigaldatud. Võimalik, et sa kasutad vna Wine väljalaset. Proovi Wine'i uuendada."
MSG_ERROR_CABEXTRACTING="Ilmnes viga kui püütsin cabextractida mõnda faili."