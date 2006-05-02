# IEs 4 Linux 2.0
# Russian

# Translation details
TRANSLATION_LOCALE="ruRU"
TRANSLATION_WHO="Arseny Sluchzewsky <Arceny at yandeX dot ru>"
TRANSLATION_LANGUAGE="Russian"
TRANSLATION_VERSION="1.0"
TRANSLATION_ENCODING="UTF8"

# ANSWER OPTIONS (should be the first letter of localized 'yes' and 'no'
YES=y
NO=n

MSG_WELCOME_TEXT="Добро пожаловать, $(whoami)! Я IEs4Linux.\nЯ могу установить IE 6, 5.5 и 5.0 для вас просто и быстро.\nВас отделяют всего нескольно 'enter'ов до работоспособных IE."
MSG_WELCOME_INSTRUCTIONS="Сейчас я задам вам несколько вопросов. Просто ответьте $YES (да) или $NO (нет). Ответ по умолчанию выделяется жирным."

MSG_WELCOME_QUESTION_IE55="IE 6 будет установлен автоматически.\nХотите ли вы установить IE 5.5 SP2 также?"
MSG_WELCOME_QUESTION_IE5="А хотите ли вы установить IE 5.01 SP2?"

MSG_LOCALES="IE могут быть установлены используя одну из следующих локалей:"
MSG_CHOOSE_LOCALE="По умолчанию $IE6_LOCALE. Нажмите 'enter чтобы оставить её, или выберите какую либо другую: "

MSG_WELCOME_INSTRUCTIONS_DEFAULT="По умолчанию я установлю всё в $HOME/.ies4linux\nЯ также установлю плагин Flash 8 и создам ярлыки на рабочем столе."
MSG_WELCOME_QUESTION_CONFIGURE="Это подходит вам? (Чтобы использовать продвинытуе опции нажмите $NO)"

MSG_CONFIGURE_FLASH="Установить плагин Flash 8?"
MSG_CONFIGURE_SHORTCUTS="А что на счёт иконок? Могу я их создать?"

MSG_CONFIGURE_BASEDIR_MSG="Всё будет установлено в $HOME/.ies4linux/"
MSG_CONFIGURE_BASEDIR_QUESTION="Нажмите 'enter' чтобы подтвердить это, или введите другой каталог: "

MSG_CONFIGURE_BINDIR_MSG="Исполняемые файлы запуска будут установлены в $HOME/bin/"
MSG_CONFIGURE_BINDIR_QUESTION="Нажмите 'enter' чтобы подтвердить это, или введите другой каталог: "

MSG_CONFIGURE_WGET="Мы будем использовать wget для скачки файлов. Если вам необходим какой-то особый флаг (например прокси,...) введите его сейчас: "

MSG_START="Всё в порядке! Давайте начнём инсталляцию..."

# Sections
MSG_DOWNLOADING="Скачивание всего необходимого..."
MSG_INSTALLING="Инсталляция"
MSG_INSTALLING_FLASH="Инсталляция Flash Player 8"

# Subsections
MSG_INITIALIZING="Инициализация"
MSG_CREATING_PREFIX="Создание Wine Prefix"
MSG_EXTRACTING_CABS="Распаковка CAB файлов"
MSG_INSTALLING_FONTS="Установка TTF шрифтов"
MSG_INSTALLING_REGISTRY="Установка реестра"
MSG_FINALIZING="Завершение"
MSG_COPYING_IE6="Копирование установки ie6"
MSG_EXTRACTING_FILES="Извлечение файлов"
MSG_PROCESSING_INF="Обработка inf файлов"
MSG_PERFORM_INSTALLATIONS="Выполнение установок"
MSG_INSTALLING_FLASH_ON="Включение flash"

# Errors
MSG_ERROR_INSTALL_WINE="Вы должны вначале установить wine! \nСкачайте его здесь: http://www.winehq.org"
MSG_ERROR_INSTALL_CABEXTRACT="Вы должны вначале установить cabextract! \nСкачайте его здесь: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_UPDATE_CABEXTRACT="Вы должны вначале обновить cabextract! \nСкачайте его здесь: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_INVALIDLOCALE="Неверная локаль! Пожалуйста, запустите IEs4Linux снова и выбирете какую-либо верную."
MSG_WARNING_ROOT="Вы root! Это удручающе! IE слишком не безопасен, чтобы давать ему root'овые привилегии.\nХотите дружеский совет? Запустите меня под обычным пользователем, или, что лучше, если у вас есть возможность, просто создайте отдельного пользователя для ваших IE."

# Post Install messages
MSG_INSTALLATIONS_FINISHED="Установка IEs 4 Linux звершена!"
MSG_RUN_IES="Чтобы запустить IE, наберите:"
MSG_NEEDS_TRANSLATION="Если у вас есть 5 минут, помогите мне с переводом IEs4Linux на ваш язык.\nVisit: http://tatanka.com.br/ies4linux/forum/viewtopic.php?p=2 . Приписка: уже помог :-) !" 