# IEs 4 Linux 2.0
# Polish Strings

# Translation details
TRANSLATION_LOCALE="plPL"
TRANSLATION_WHO="Arvenil <xamil at klecza dot pl>"
TRANSLATION_LANGUAGE="Polish"
TRANSLATION_VERSION="1.0"
TRANSLATION_ENCODING="UTF8"

# ANSWER OPTIONS (should be the first letter of localized 'yes' and 'no'
YES=t
NO=n

MSG_WELCOME_TEXT="Witaj, $(whoami)! Jestem IEs4Linux (IE dla Linux'a).\nMogę dla Ciebie zainstalować szybko i łatwo IE 6, 5.5 i 5.0.\nJesteś zaledwie cztery enter'y od swojego IE."
MSG_WELCOME_INSTRUCTIONS="Zadam Ci teraz kilka pytań. Po prostu odpowiedz $YES lub $NO (domyślną odpowiedzią jest ta pogrubiona)"

MSG_WELCOME_QUESTION_IE55="IE 6 zostanie zainstalowane automatycznie.\nCzy mam również zainstalować IE 5.5 SP2?"
MSG_WELCOME_QUESTION_IE5="I czy chcesz zainstalować IE 5.01 SP2?"

MSG_LOCALES="IE może zostać zainstalowane z jedną z podanych lokalizacji:"
MSG_CHOOSE_LOCALE="Domyślną jest $IE6_LOCALE. Naciśnij enter aby użyć domyślnej lub wybierz inną: "

MSG_WELCOME_INSTRUCTIONS_DEFAULT="Domyślnie zainstaluję wszystko w $BASEDIR_DEFAULT\nZainstaluję również plugin Flash 9 i stworzę skrót na pulpicie."
MSG_WELCOME_QUESTION_CONFIGURE="Czy to Ci odpowiada? (Aby skonfigurować zaawansowane opcje wpisz $NO)"

MSG_CONFIGURE_FLASH="Czy mam zainstalować plugin Adobe Flash 9?"
MSG_CONFIGURE_SHORTCUTS="I co z ikonką na pulpicie? Mogę ją stworzyć?"

MSG_CONFIGURE_BASEDIR_MSG="Wszystko zostanie zainstalowane do $BASEDIR_DEFAULT"
MSG_CONFIGURE_BASEDIR_QUESTION="Naciśnij enter aby zachować ten wybór lub wpisz własną ścieżke do nowego katalogu: "

MSG_CONFIGURE_BINDIR_MSG="Skrypt uruchamiający zostanie stworzony w $BINDIR_DEFAULT"
MSG_CONFIGURE_BINDIR_QUESTION="Naciśnij enter aby zachować ten wybór lub wpisz własną ścieżke do nowego katalogu: "

MSG_CONFIGURE_WGET="Użyję program wget do pobrania plików. Jeśli potrzebujesz użyć specjalnej flagi (proxy,...), wpisz ją teraz: "

MSG_START="Wszystko w porządku! Zacznijmy instalacje..."

# Sections
MSG_DOWNLOADING="Pobieranie wszystkiego czego potrzebujemy"
MSG_INSTALLING="Instalowanie"
MSG_INSTALLING_FLASH="Instalowanie pluginu Flash Player 9"

# Subsections
MSG_INITIALIZING="Inicjalizacja"
MSG_CREATING_PREFIX="Tworzenie Wine Prefix"
MSG_EXTRACTING_CABS="Rozpakowanie archiwów CAB"
MSG_INSTALLING_FONTS="Instalowanie fontów TTF"
MSG_INSTALLING_REGISTRY="Instalowanie rejestru"
MSG_FINALIZING="Kończenie"
MSG_COPYING_IE6="Kopiowanie instalacji ie6"
MSG_EXTRACTING_FILES="Rozpakowywanie plików"
MSG_PROCESSING_INF="Przetwarzanie plików inf"
MSG_PERFORM_INSTALLATIONS="Rozpoczynanie instalacji"
MSG_INSTALLING_FLASH_ON="Instalowanie pluginu Flash na"

# Errors
MSG_ERROR_INSTALL_WINE="Musisz najpierw zainstalować wine! \nPobierz go stąd: http://www.winehq.org"
MSG_ERROR_INSTALL_CABEXTRACT="Musisz najpierw zainstalować cabextract! \nPobierz go stąd: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_UPDATE_CABEXTRACT="Musisz najpierw uaktualnić cabextract! \nPobierz go stąd: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_INVALIDLOCALE="Błędna lokalizacja! Proszę uruchomić IEs4Linux ponownie i wybrać poprawną."
MSG_WARNING_ROOT="Jesteś zalogowany jako root! To jest bardzo nierozsądne! IE jest zbyt niebezpieczne aby dawać mu prawa administratora root.\nChcesz rady od przyjaciela? Uruchom mnie jako swojego normalnego użytkownika albo, co jest lepsze, jeśli możesz to stwórz oddzielnego użytkownika tylko do uruchamiania IE."

# Post Install messages
MSG_INSTALLATIONS_FINISHED="Instalacja IEs 4 Linux została zakończona pomyślnie!"
MSG_RUN_IES="Aby uruchomić IE wpisz:"
MSG_NEEDS_TRANSLATION="Jeśli masz 5 minut, pomóż mi w przetłumaczeniu IEs4Linux na Twój język.\nOdwiedź: http://tatanka.com.br/ies4linux/forum/viewtopic.php?p=2"