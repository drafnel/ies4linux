# IEs 4 Linux 2.0
# English Strings

# Translation details
TRANSLATION_LOCALE="skSK"
TRANSLATION_WHO="Martin <loptosko at gmail dot com>"
TRANSLATION_LANGUAGE="Slovak"
TRANSLATION_VERSION="1.0"
TRANSLATION_ENCODING="UTF8"

# ANSWER OPTIONS (should be the first letter of localized 'yes' and 'no'
YES=a
NO=n

MSG_WELCOME_TEXT="Vitajte, $(whoami)! Toto je IEs4Linux.\nDokáže pre vás nainštalovať IE 6, 5.5 a 5.0 rýchlo a jednoducho.\nOd svojich IE ste vzdialený len o štyri entery."
MSG_WELCOME_INSTRUCTIONS="Je potrebné odpovedať na pár otázok. Odpovedajte prosím $YES alebo $NO (predvolená možnosť bude zvýraznená hrubým písmom)"

MSG_WELCOME_QUESTION_IE55="IE 6 bude nainštalované automaticky.\nChcete nainštalovať aj IE 5.5 SP2?"
MSG_WELCOME_QUESTION_IE5="A chcete nainštalovať IE 5.01 SP2?"

MSG_LOCALES="IE môžu byť nainštalované použitím jednej z nasledujúcich lokalizácií:"
MSG_CHOOSE_LOCALE="Predvolená je $IE6_LOCALE. Pre túto možnosť stlačte enter, alebo vyberte inú: "

MSG_WELCOME_INSTRUCTIONS_DEFAULT="Štandardne sa všetko nainštaluje do $BASEDIR_DEFAULT\nTiež sa nainštaluje rozšírenie Flash 9 a vytvoria sa odkazy na vašej ploche."
MSG_WELCOME_QUESTION_CONFIGURE="Je to v poriadku? (Pre konfiguráciu pokročilých nastavení stlačte $NO)"

MSG_CONFIGURE_FLASH="Malo by sa nainštalovať rozšírenie Adobe Flash 9?"
MSG_CONFIGURE_SHORTCUTS="Chcete vytvoriť ikony na vašej ploche?"

MSG_CONFIGURE_BASEDIR_MSG="Všetko bude nainštalované do $BASEDIR_DEFAULT"
MSG_CONFIGURE_BASEDIR_QUESTION="Stlačte enter pre potvrdenie, alebo zadajte iný adresár (absolútne umiestnenie): "

MSG_CONFIGURE_BINDIR_MSG="Binárne spúšťače budú vytvorené v $BINDIR_DEFAULT"
MSG_CONFIGURE_BINDIR_QUESTION="Stlačte enter pre potvrdenie, alebo zadajte iný adresár: "

MSG_CONFIGURE_WGET="Na sťahovanie súborov bude použitý wget. Ak potrebujete nejaké špeciálne prepínače (proxy...), zadajte ich teraz: "

MSG_START="Všetko pripravené! Teraz môžete spustiť inštaláciu..."

# Sections
MSG_DOWNLOADING="Sťahuje sa všetko potrebné"
MSG_INSTALLING="Inštaluje sa"
MSG_INSTALLING_FLASH="Inštaluje sa Flash Player 9"

# Subsections
MSG_INITIALIZING="Pripravuje sa"
MSG_CREATING_PREFIX="Vytvára sa prefix Wine"
MSG_EXTRACTING_CABS="Rozbaľujú sa súbory CAB"
MSG_INSTALLING_FONTS="Inštalujú sa písma TTF"
MSG_INSTALLING_REGISTRY="Inštalujú sa položky registry"
MSG_FINALIZING="Dokončuje sa"
MSG_COPYING_IE6="Kopíruje sa inštalácia ie6"
MSG_EXTRACTING_FILES="Rozbaľujú sa súbory"
MSG_PROCESSING_INF="Spracováva sa súbor inf"
MSG_PERFORM_INSTALLATIONS="Vykonávajú se jednotlivé inštalácie"
MSG_INSTALLING_FLASH_ON="Inštaluje sa flash"

# Errors
MSG_ERROR_INSTALL_WINE="Najskôr je potrebné nainštalovať wine! \nStiahnite ho tu: http://www.winehq.org"
MSG_ERROR_INSTALL_CABEXTRACT="Najskôr je potrebné nainštalovať cabextract! \nStiahnite ho tu: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_UPDATE_CABEXTRACT="Najskôr je potrebné aktualizovať cabextract! \nStiahnite ho tu: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_INVALIDLOCALE="Chybná lokalizácia! Prosím, spustite IEs4Linux znovu a vyberte správne."
MSG_WARNING_ROOT="Ste root! Je to veľmi neuvážené! IE je dosť nezabezpečené, na to aby mu bolo vhodné udeliť práva roota.\nČo urobiť? Spustite IEs4Linux ako bežný používateľ, alebo pre vaše IE dokonca vytvorte samostatného používateľa."

# Post Install messages
MSG_INSTALLATIONS_FINISHED="Inštalácia IEs 4 Linux dokončená!"
MSG_RUN_IES="Pre spustenie vašich IE, zadajte:"
MSG_NEEDS_TRANSLATION="Ak máte voľných 5 minút, pomôžte mi pômocť preložiť IEs4Linux do svojho jazyka.\nNavštívte: http://tatanka.com.br/ies4linux/forum/viewtopic.php?p=2"

# TRANSLATION VERSION 1.2
MSG_WARNING_OLDWINE="IEs4Linux 2.0 je vyvinuté na použitie s najnovšími verziami Wine (0.9.x). Vyzerá to tak, že používate starú verziu ($(wine --version)). Odporúčame vám aktualizovať vaše wine na najnovšiu verziu (Navštívte: winehq.com)."
MSG_ERROR_NO_WINEPREFIXCREATE="VaŠe wine nemá nainštalované wineprefixcreate. Možno používate staršiu verziu Wine. Skúste ho aktualizovať na najnovšiu."
MSG_ERROR_CABEXTRACTING="Vyskytla sa chyba počas rozbaľovania (cabextract) niektorých súborov."
