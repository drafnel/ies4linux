# IEs 4 Linux 2.0
# English Strings

# Translation details
TRANSLATION_LOCALE="srYU"
TRANSLATION_WHO="Ivan Petrovic <petrovicivan at hotmail dot com>"
TRANSLATION_LANGUAGE="Serbian"
TRANSLATION_VERSION="1.0"
TRANSLATION_ENCODING="UTF8"

# ANSWER OPTIONS (should be the first letter of localized 'yes' and 'no'
YES=d
NO=n

MSG_WELCOME_TEXT="Dobrodošli, $(whoami)! Ovo je IEs4Linux.\nOmogućava Vam da instalirate IE 6, 5.5 and 5.0 brzo i jednostavno.\nSad ste udaljeni samo četiri 'enter'-a od Vašeg IE."
MSG_WELCOME_INSTRUCTIONS="Postavićemo Vam nekoliko pitanja. Samo odgovorite sa $YES ili $NO (odgovor koji se podrazumeva je ispisan masnim slovima)"

MSG_WELCOME_QUESTION_IE55="IE 6 će automatski biti instaliran.\nDa li želite i IE 5.5 SP2?"
MSG_WELCOME_QUESTION_IE5="Da li želite instalaciju IE 5.01 SP2?"

MSG_LOCALES="IE može biti instaliran na lokalinom jeziku:"
MSG_CHOOSE_LOCALE="Podrazumevana opcija je $IE6_LOCALE. Potvrdite sa ENTER ili odaberite neki drugi jezik: "

MSG_WELCOME_INSTRUCTIONS_DEFAULT="Po osnovnim podešavanjima, sve će biti instalirano u $BASEDIR_DEFAULT\nTakođe će biti instaliran Flash 9 plugin za IE i napravljena prečica na Desktop-u."
MSG_WELCOME_QUESTION_CONFIGURE="Dali Vam odgovara? (Da biste koristili svoja podešavanja odaberite $NO)"

MSG_CONFIGURE_FLASH="Instalirati Adobe Flash 9 plugin?"
MSG_CONFIGURE_SHORTCUTS="Ikona na Desktop-u? Da li da je napravim?"

MSG_CONFIGURE_BASEDIR_MSG="Sve će biti instalirano u $BASEDIR_DEFAULT"
MSG_CONFIGURE_BASEDIR_QUESTION="Pritisnite ENTER za potvrdu ili upišite novu fasciklu (apsolutna putanja): "

MSG_CONFIGURE_BINDIR_MSG="Binary pokretač će biti napravljen u $BINDIR_DEFAULT"
MSG_CONFIGURE_BINDIR_QUESTION="Pritisnite ENTER za potvrdu ili upišite novu fasciklu: "

MSG_CONFIGURE_WGET="Koristiću wget za preuzimanje datoteka. Ako koristite neku opciju wget-a (proxy,...), upišite: "

MSG_START="OK! Krenimo u instalaciju..."

# Sections
MSG_DOWNLOADING="Preuzimanje potrebnih podataka"
MSG_INSTALLING="Instalacija"
MSG_INSTALLING_FLASH="Instaliranje Flash Player-a 9"

# Subsections
MSG_INITIALIZING="Initializing"
MSG_CREATING_PREFIX="Kreiranje Wine Prefix-a"
MSG_EXTRACTING_CABS="Raspakivanje CAB datoteka"
MSG_INSTALLING_FONTS="Instaliranje TTF fontova"
MSG_INSTALLING_REGISTRY="Instaliranje podataka u registar"
MSG_FINALIZING="Finalno podešavanje"
MSG_COPYING_IE6="Kopiranje instalacije ie6"
MSG_EXTRACTING_FILES="Raspakivanje datoteka"
MSG_PROCESSING_INF="Obrađivanje ini datoteke"
MSG_PERFORM_INSTALLATIONS="Izvršavanje instalacija"
MSG_INSTALLING_FLASH_ON="Instaliranje Flash-a je uključeno"

# Errors
MSG_ERROR_INSTALL_WINE="Prvo morate instalirati wine! \nPreuzimanje: http://www.winehq.org"
MSG_ERROR_INSTALL_CABEXTRACT="Prvo morate instalirati cabextract! \nPreuzimanje: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_UPDATE_CABEXTRACT="Prvo morate ažurirati cabextract! \nPreuzimanje: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_INVALIDLOCALE="Pogrešna lokalizacija! Molim Vas pokrenite ponovo IEs4Linux i odaberite ispravnu."
MSG_WARNING_ROOT="Vi ste root! Veoma nepromišljeno! IE je previše nesiguran da biste mu dodelili root pristup.\nŽelite li prijateljski savet? Koristite IEs4Linux kao običan korisnik, još bolje, ako možete, napravite poseban korisnički nalog samo za korišćenje IE-a."

# Post Install messages
MSG_INSTALLATIONS_FINISHED="IEs 4 Linux je instaliran na vašem računaru!"
MSG_RUN_IES="Da biste pokrenuli IEs, upišite:"
MSG_NEEDS_TRANSLATION="Ako imate 5 minuta, pomozite mi u prevođenju IEs4Linux na Vaš jezik.\nPosetite: http://tatanka.com.br/ies4linux/forum/viewtopic.php?p=2"

# TRANSLATION VERSION 1.2
MSG_WARNING_OLDWINE="IEs4Linux 2.0 je razvijen za korišćenje uz najnoviji Wine (0.9.x). Izgleda da je kod Vas stara verzija ($(wine --version)). Preporučujem Vam da ažurirate wine (adresa: winehq.com)."
MSG_ERROR_NO_WINEPREFIXCREATE="Vaš wine nema instaliran wineprefixcreate. Možda koristite staru verziju. Bolje odmah ažurirajte."
MSG_ERROR_CABEXTRACTING="Greška pri korišćenju cabextract-a." 