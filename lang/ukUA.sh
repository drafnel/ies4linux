# IEs 4 Linux 2.0
# English Strings

# Translation details
TRANSLATION_LOCALE="ukUA"
TRANSLATION_WHO="Крекотень Мар'ян <krekoten at gmail dot com>"
TRANSLATION_LANGUAGE="Ukrainian"
TRANSLATION_VERSION="1.0"
TRANSLATION_ENCODING="UTF8"

# ANSWER OPTIONS (should be the first letter of localized 'yes' and 'no'
YES=y
NO=n

MSG_WELCOME_TEXT="Привіт, $(whoami)! Я IEs4Linux.\nЯ можу швидко і легко встановити для вас IE 6, 5.5 та 5.0.\nЛише чотири 'enter'а відділяють вас від вашого IE."
MSG_WELCOME_INSTRUCTIONS="Декілька запитань. Відповідайте тільки $YES або $NO (типова відповідь виділена товстим шрифтом)"

MSG_WELCOME_QUESTION_IE55="IE 6 встановлюється автоматично.\nБажаєте встановити IE 5.5 SP2?"
MSG_WELCOME_QUESTION_IE5="А IE 5.01 SP2?"

MSG_LOCALES="IE можуть бути встановлені використовуючи одну з цих локалей:"
MSG_CHOOSE_LOCALE="Типова локаль $IE6_LOCALE. Нажміть enter, щоб залишити її, або оберіть іншу: "

MSG_WELCOME_INSTRUCTIONS_DEFAULT="Типово, я встановлю все в $BASEDIR_DEFAULT\nЯ також встановлю втулок Flash 9 і створю посилання на робочому столі."
MSG_WELCOME_QUESTION_CONFIGURE="Це підходить для вас? (Для більш детального налаштування наберіть $NO)"

MSG_CONFIGURE_FLASH="Встановлювати втулок Adobe Flash 9?"
MSG_CONFIGURE_SHORTCUTS="Як на рахунок піктограм на робочому столі? Створювати їх?"

MSG_CONFIGURE_BASEDIR_MSG="Все буде встановлено в $BASEDIR_DEFAULT"
MSG_CONFIGURE_BASEDIR_QUESTION="Нажміть enter, щоб підтвердити або вкажіть нову теку (абсолютний шлях): "

MSG_CONFIGURE_BINDIR_MSG="Двійкові файли будуть створені в $BINDIR_DEFAULT"
MSG_CONFIGURE_BINDIR_QUESTION="Нажміть enter, щоб підтвердити або вкажіть нову теку: "

MSG_CONFIGURE_WGET="Я використаю wget для завантаження файлів. Якщо потрібно вказати якісь додаткові налаштування (проксі,...), вкажіть їх: "

MSG_START="Добре! Розпочинаєм встановлення..."

# Sections
MSG_DOWNLOADING="Завантажую все, що потрібно"
MSG_INSTALLING="Встановлюю"
MSG_INSTALLING_FLASH="Встановлюю Flash Player 9"

# Subsections
MSG_INITIALIZING="Ініціалізуюсь"
MSG_CREATING_PREFIX="Створюю префікс для Wine"
MSG_EXTRACTING_CABS="Розпаковую CAB файли"
MSG_INSTALLING_FONTS="Встановлюю TTF шрифти"
MSG_INSTALLING_REGISTRY="Встановлюю реєстр"
MSG_FINALIZING="Завершую"
MSG_COPYING_IE6="Копіюю встановлені файли ie6"
MSG_EXTRACTING_FILES="Розпаковую файли"
MSG_PROCESSING_INF="Обробляю файли ini"
MSG_PERFORM_INSTALLATIONS="Виконую встановлення"
MSG_INSTALLING_FLASH_ON="Вчтановлюю flash"

# Errors
MSG_ERROR_INSTALL_WINE="Спочатку встановіть wine! \nЗавантажити можна ось тут: http://www.winehq.org"
MSG_ERROR_INSTALL_CABEXTRACT="Спочатку встановіть cabextract! \nЗавантажити можна ось тут: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_UPDATE_CABEXTRACT="Спочатку обновіть cabextract! \nЗавантажити можна ось тут: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_INVALIDLOCALE="Невірна локаль! Будь-ласка виконайте IEs4Linux знову та оберіть вірну локаль."
MSG_WARNING_ROOT="Ви під користувачем root! Це дуже шкідливо! IE надто незахищений, щоб надавати йому прав root.\nБажаєте дружню пораду? Виконайте мене як звичайний користувач або якщо краще, створіть окремого користувача для IE."

# Post Install messages
MSG_INSTALLATIONS_FINISHED="Встановлення IEs 4 Linux завершено!"
MSG_RUN_IES="Щоб виконати IEs, надрукуйте:"
MSG_NEEDS_TRANSLATION="Якщо маєте 5 хвили, допоможіть мені з перекладом IEs4Linux на вашу мову.\nВідвідайте: http://tatanka.com.br/ies4linux/forum/viewtopic.php?p=2 Примітка: не 5 а 30 :)"

# TRANSLATION VERSION 1.2
MSG_WARNING_OLDWINE="IEs4Linux 2.0 розроблено для використання з найновішими версіями Wine (0.9.x). Ви використовуєте стару версію ($(wine --version)). Рекомендую обновити wine (Завітайте до: winehq.com)."
MSG_ERROR_NO_WINEPREFIXCREATE="Ваш wine не має встановленого wineprefixcreate. Можливо у вас стара версія. Спробуйте обновити її."
MSG_ERROR_CABEXTRACTING="Виникла помилка при розпакувані деяких файлів за допомогою cabextract."

# TRANSLATION VERSION 1.3
MSG_ERROR_INSTALL_WGET="Спочатку встановіть 'wget'!"
MSG_ERROR_INSTALL_UNZIP="Спочатку встановіть'unzip'!"

# TRANSLATION VERSION 1.4
GUI_TITLE="Internet Explorers для Linux"
GUI_OK="Встановити"
GUI_CANCEL="Скасувати"

GUI_INSTALLATION_OPTIONS="Налаштування для встановлення"
GUI_IE="Internet Explorer"
GUI_EXTRA="Додатково"
GUI_INSTALL_IE6="Встановити Internet Explorer 6.0 SP1"
GUI_INSTALL_IE55="Встановити Internet Explorer 5.5"
GUI_INSTALL_IE5="Встановити Internet Explorer 5.01"
GUI_INSTALL_FLASH="Встановити Adobe Flash player 9"
GUI_CREATE_ICONS="Створити посилання на робочому столі"
GUI_LOCALE="Локаль"

GUI_ADVANCED_OPTIONS="Детальне налаштування"
GUI_ADVANCED_BASEDIR="Базова тека"
GUI_ADVANCED_BINDIR="Тека двійкових файлів"
GUI_ADVANCED_DOWNLOADDIR="Тека для завантажень"
GUI_ADVANCED_WGETFLAGS="Додаткові налаштування Wget"
