# IEs 4 Linux 2.0
# Hebrew Strings

# Translation details
TRANSLATION_LOCALE="heIL"
TRANSLATION_WHO="oc666 <oc666 at netvision dot net dot il>"
TRANSLATION_LANGUAGE="Hebrew"
TRANSLATION_VERSION="1.0"
TRANSLATION_ENCODING="UTF8"

# ANSWER OPTIONS (should be the first letter of localized 'yes' and 'no'
YES=כ
NO=ל

MSG_WELCOME_TEXT="ברוך הבא, $(whoami)! אני IEs4Linux.\nואני נועדתי להתקין IE 6, 5.5 ו- 5.0 עבורך במהירות ובקלות.\nאתה רחוק עכשיו רק 4 לחיצות אנטר מהיעד
MSG_WELCOME_INSTRUCTIONS="אני אשאל אותך מספר שאלות עכשיו. רק ענה ב$yes ו$no (ברירת מחדל מסומנת בכתב עבה).

MSG_WELCOME_QUESTION_IE55="IE 6 יותקן אוטומטית.\n האם תרצה להתקין גם את IE 5.5 SP2?
MSG_WELCOME_QUESTION_IE5="והאם תרצה להתקין את IE 5.01 SP2?"

MSG_LOCALES="IE יכול להשתמש באחד מהלוקאלים הבאים:"
MSG_CHOOSE_LOCALE="ברירת מחדל היא $IE6_LOCALE" הקש אנטר לשמור זאת או בחר אחד אחר: "

MSG_WELCOME_INSTRUCTIONS_DEFAULT="כברירת מחדל, אני אתקין הכל ב-$BASEDIR\n, כמו כן אני אתקין תוסף פלאש 8 ואיצור קיצור דרך על שולחן העבודה".
MSG_WELCOME_QUESTION_CONFIGURE="האם זה בסדר מבחינתך? (כדי להגדיר הגדרות מתקדמות לחץ $NO)"

MSG_CONFIGURE_FLASH="האם עלי להתקין את מקרומדיה פלאש 8?"
MSG_CONFIGURE_SHORTCUTS="ומה עם קיצור דרך על שולחן העבודה? האם ליצור אותם?"

MSG_CONFIGURE_BASEDIR_MSG="הכל יותר ב-$BASEDIR."
MSG_CONFIGURE_BASEDIR_QUESTION="הקש אנטר כדי לשמור הגדרה זו או בחר ספריה אחרת (נתיב אבסולוטי): "

MSG_CONFIGURE_BINDIR_MSG="מפעיל בינארי יותקן ב-$HOME/bin/"
MSG_CONFIGURE_BINDIR_QUESTION="הקש אנטר לשמור זאת או בחר ספריה חדשה: "

MSG_CONFIGURE_WGET="אנו נשתמש בכלי wget כדי להוריד את הקבצים הדרושים. אם אתה צריך דגלים מיוחדים בשביל זה כתוב זאת עכשיו: "

MSG_START="סבבה! בואו נתחיל בהתקנה"

# Sections
MSG_DOWNLOADING="מוריד את כל מה שצריך"
MSG_INSTALLING="מתקין"
MSG_INSTALLING_FLASH="מתקין נגן פלאש 8"

# Subsections
MSG_INITIALIZING="מאתחל"
MSG_CREATING_PREFIX="יוצר את הסינטקס של wine"
MSG_EXTRACTING_CABS="מחלץ קבצי cab"
MSG_INSTALLING_FONTS="מתקין גופני ttf"
MSG_INSTALLING_REGISTRY="מתקין את ערכי הרישום (רג'יסטרי)"
MSG_FINALIZING="מסיים"
MSG_COPYING_IE6="מעתיק את ההתקנה של ie6"
MSG_EXTRACTING_FILES="מחלץ קבצים"
MSG_PROCESSING_INF="מעבד קבצי inf"
MSG_PERFORM_INSTALLATIONS="מבצע התקנות"
MSG_INSTALLING_FLASH_ON="מתקין פלאש"

# Errors
MSG_ERROR_INSTALL_WINE="תצטרך להתקין את wine קודם! \nהורד זאת מכאן: http://www.winehq.org"
MSG_ERROR_INSTALL_CABEXTRACT="תצטרך להתקין cabextract קודם! \n הורד זאת מכאן: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_UPDATE_CABEXTRACT="תצטרך לעדכן את cabextract קודם! \nהורד זאת מכאן: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_INVALIDLOCALE="לוקאל שגוי. הרץ את IEs4linux שוב ובחר באחד נכון."
MSG_WARNING_ROOT="אתה משתמש מנהל! זו לא פעולה אחראית! IE גם לא מאובטח עבור מתן הרשאת מנהל. \nרוצה טיפ מחבר? הרץ אותי ממשתמש רגיל או צור משתמש נפרד לשימוש ב-IE."

# Post Install messages
MSG_INSTALLATIONS_FINISHED="ההתקנה של אינטרנט אקספלורר עבור לינוקס גירסה 4 הסתיימה!"
MSG_RUN_IES="כדי להריץ IE, הקלד:"
MSG_NEEDS_TRANSLATION="אם יש לך 5 דקות, עזור לתרגם את IEs4Linux לשפתך.\nבקר:http://tatanka.com.br/ies4linux/forum/viewtopic.php?p=2"