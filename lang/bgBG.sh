# IEs 4 Linux 2.0
# Bulgarian Strings

# Translation details
TRANSLATION_LOCALE="bgBG"
TRANSLATION_WHO="Momchil Kinov <momchilk at gmail dot com>"
TRANSLATION_LANGUAGE="Bulgarian"
TRANSLATION_VERSION="1.0"
TRANSLATION_ENCODING="UTF8"

# ANSWER OPTIONS (should be the first letter of localized 'yes' and 'no'
YES=y
NO=n

MSG_WELCOME_TEXT="Здравейте, $(whoami)! Аз съм IEs4Linux.\nМога да инсталирам за Вас бързо и лесно IE 6, 5.5 и 5.0.\nВие сте само на четири 'enter-а от Вашите IE-та."
MSG_WELCOME_INSTRUCTIONS="Ще Ви задам няколко въпроса. Моля отговорете с $YES или $NO (отговорът по подразбиране е удебелен)"

MSG_WELCOME_QUESTION_IE55="IE 6 ще бъде инсталиран автоматично.\nЖелаете ли да инсталирам и 5.5 SP2?"
MSG_WELCOME_QUESTION_IE5="А желаете ли да инсталирам IE 5.01 SP2?"

MSG_LOCALES="IEs могат да бъдат инсталирани използвайки една от следните локализации:"
MSG_CHOOSE_LOCALE="По подразбиране е $IE6_LOCALE. Натиснете Enter за да потвърдите или изберете друга локализация: "

MSG_WELCOME_INSTRUCTIONS_DEFAULT="По подразбиране ще инсталирам всичко в $BASEDIR_DEFAULT\nСъщо така ще инсталирам и Flash 9 приставка и ще създам икони на работния плот."
MSG_WELCOME_QUESTION_CONFIGURE="Приемате ли настройките? (За да използвате разширените настройки напишете $NO)"

MSG_CONFIGURE_FLASH="Да инсталирам ли Macromedia Flash 9 приставка?"
MSG_CONFIGURE_SHORTCUTS="А икони на работния плот? Да ги създам ли?"

MSG_CONFIGURE_BASEDIR_MSG="Всичко ще бъде инсталироно в $BASEDIR_DEFAULT"
MSG_CONFIGURE_BASEDIR_QUESTION="Натиснете Еnter ако приемате или напишете нова папка: "

MSG_CONFIGURE_BINDIR_MSG="Изпълнимите файлове ще бъдат инсталирани в $BINDIR_DEFAULT"
MSG_CONFIGURE_BINDIR_QUESTION="Натиснете Еnter ако приемате или напишете нова папка: "

MSG_CONFIGURE_WGET="Ще използвам wget за изтегляне на файловете. Ако се нуждате от специални параметри (proxy,...), напишете ги сега: "

MSG_START="Добре! Хайде да стартираме инсталациите..."

# Sections
MSG_DOWNLOADING="Изтегляне на всичко необходимо"
MSG_INSTALLING="Инсталиране"
MSG_INSTALLING_FLASH="Инсталиране на Flash Player 9"

# Subsections
MSG_INITIALIZING="Инициализация"
MSG_CREATING_PREFIX="Създаване на Wine Prefix"
MSG_EXTRACTING_CABS="Разархивиране на CAB файлове"
MSG_INSTALLING_FONTS="Инсталиране на TTF шрифтове"
MSG_INSTALLING_REGISTRY="Инсталиране на registry"
MSG_FINALIZING="Финализиране"
MSG_COPYING_IE6="Копиране на инсталацията на ie6"
MSG_EXTRACTING_FILES="Разархивиране на файловете"
MSG_PROCESSING_INF="Обработвам inf файлове"
MSG_PERFORM_INSTALLATIONS="Извършвам инсталациите"
MSG_INSTALLING_FLASH_ON="Инсталирам flash"

# Errors
MSG_ERROR_INSTALL_WINE="Необходимо е да инсталирате wine! \nИзтеглете го от тук: http://www.winehq.org"
MSG_ERROR_INSTALL_CABEXTRACT="Необходимо е да инсталирате cabextract! \nИзтеглете го от тук: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_UPDATE_CABEXTRACT="Необходимо е да обновите cabextract! \nИзтеглете го от тук: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_INVALIDLOCALE="Невалидна локализация! Моля стартирайте отново IEs4Linux и изберете валидна локализация."
MSG_WARNING_ROOT="Вие сте root! Това е силно непрепоръчително! IE е твърде несигурен, за да го използвате с правата на root.\nЕдин съвет от приятел - стартирайте ме като обикновен потребител или още по-добре, ако имате възможност, създайте отделен потребител, с който да използвате Вашите IE-та."

# Post Install messages
MSG_INSTALLATIONS_FINISHED="Инсталацията на IEs 4 Linux завърши!"
MSG_RUN_IES="За да стартирате Вашите IE-та, напишете:"
MSG_NEEDS_TRANSLATION="Ако имате свободни 5 минути, моля помогнете ми в превода на IEs4Linux на Вашия език.\nПосетете: http://tatanka.com.br/ies4linux/forum/viewtopic.php?p=2" 