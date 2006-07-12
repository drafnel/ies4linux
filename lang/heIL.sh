# IEs 4 Linux 2.0
# English Strings

# Translation details
TRANSLATION_LOCALE="heIL"
TRANSLATION_WHO="Artyom Tonkikh <artyomtnk at yahoo dot com>"
TRANSLATION_LANGUAGE="Hebrew"
TRANSLATION_VERSION="0.1"
TRANSLATION_ENCODING="UTF8"

bidi()
{
	echo "$1" | fribidi --rtl | perl -e 'while(<>){ print "$1\\n" if /(.*)/;}'
}


# ANSWER OPTIONS (should be the first letter of localized 'yes' and 'no'
YES=כ
NO=ל

MSG_WELCOME_TEXT=`bidi "שלום, $(whoami)! אני IEs4Linux.
אני יכול להתקין בשבילך בצורה קלה ומהיר את IE 6, 5.5 ו-5.0.
אתה במרחק של מספר לחיצות Enter מ-IE-ים שלך."`
MSG_WELCOME_INSTRUCTIONS=`bidi "אני אשאל עכשיו מספר שאלות. רק תענה $YES או $NO (ברירת מחדל מסומנת בגופן מודגש)"`

MSG_WELCOME_QUESTION_IE55=`bidi "IE 6 יותקן בצורה אוטומטית.
האם אתה רוצה להתקין גם IE 5.5 SP2?"`
MSG_WELCOME_QUESTION_IE5=`bidi "האם אתה רוצה להתקין IE 5.01 SP2?"`

MSG_LOCALES=`bidi "IE-ים יכולים להיות מותקנים לפי התאמות איזוריות הבאות:"`
MSG_CHOOSE_LOCALE=`bidi "ברירת מחדל היא $IE6_LOCALE. לחץ enter על מנת לשמור אותה או תבחר אחרת: "`

MSG_WELCOME_INSTRUCTIONS_DEFAULT=`bidi "הכל יותקן  כברירת מחדל ב-$BASEDIR
 כמן כן, אני אתקין תוסף Flash 8 ואיצור קיצורים על שולחן העבודה."`

MSG_WELCOME_QUESTION_CONFIGURE=`bidi "האם זה הסדר? (להגדרת אפשרויות מתקדמות לחץ $NO)"`

MSG_CONFIGURE_FLASH=`bidi "האם להתקין תוסף Adobe Flash 9?"`
MSG_CONFIGURE_SHORTCUTS=`bidi "מה לגבי קיצורי דרך על שולחן העבודה? אפשר להתקין?"`

MSG_CONFIGURE_BASEDIR_MSG=`bidi "הכל יותקן ב-$BASEDIR"`
MSG_CONFIGURE_BASEDIR_QUESTION=`bidi "לחץ enter לאישור או הזן תיקיה חדשה (נתיב מלא): "`

MSG_CONFIGURE_BINDIR_MSG=`bidi "תוכנות הרצה יישמרו ב-$HOME/bin/"`
MSG_CONFIGURE_BINDIR_QUESTION=`bidi "לחץ enter לאישור הזן תיקיה חדשה: "`

MSG_CONFIGURE_WGET=`bidi "אנחנו נשתמש ב-wget להורדת קבצים. אם יש דגלון מיוחד (proxy,...),
הזן אותו עכשיו: "`

MSG_START=`bidi "הכל בסדר! נתחיל התקנה..."`

# Sections
MSG_DOWNLOADING=`bidi "מוריד את הקבצים הנדרשים"`
MSG_INSTALLING=`bidi "מתקין"`
MSG_INSTALLING_FLASH=`bidi "מתקין Flash Player 9"`

# Subsections
MSG_INITIALIZING=`bidi "איתחול"`
MSG_CREATING_PREFIX=`bidi "יצירת Wine Prefix"`
MSG_EXTRACTING_CABS=`bidi "פורס קבצי CAB"`
MSG_INSTALLING_FONTS=`bidi "מתקין גופני TTF"`
MSG_INSTALLING_REGISTRY=`bidi "מגדיר registry"`
MSG_FINALIZING=`bidi "מסיים"`
MSG_COPYING_IE6=`bidi "מעתיק התקנה של ie6"`
MSG_EXTRACTING_FILES=`bidi "פורס קבצים"`
MSG_PROCESSING_INF=`bidi "מעבד קבצי inf"`
MSG_PERFORM_INSTALLATIONS=`bidi "מבצע התקנה"`
MSG_INSTALLING_FLASH_ON=`bidi "מתקין flash ב-"`

# Errors
MSG_ERROR_INSTALL_WINE=`bidi "יש להתקין wine קודם! \n
הורד אותו כאן: http://www.winehq.org"`
MSG_ERROR_INSTALL_CABEXTRACT=`bidi "אתה חייב להתקין cabextract קודם!
הורד אותו כאן: http://www.kyz.uklinux.net/cabextract.php"`
MSG_ERROR_UPDATE_CABEXTRACT=`bidi "אתה צריך לשדרג cabextract לפני!
הורד אותו כאן: http://www.kyz.uklinux.net/cabextract.php"`
MSG_ERROR_INVALIDLOCALE=`bidi "התאמה איזורית לא נכונה! הרץ IEs4Linux שוב ותבחר את הנכונה."`
MSG_WARNING_ROOT=`bidi "אתה משתמש על! זה מאוד לא מומלץ! IE פרוץ מידי על מנת לקבל הרשאות משתמש על
רוצה עצה ידידותית? הרץ אותי כמשתמש רגיל או אפילו תיצור משתמש נפרד
לצורך שימוש ב-IE-ים שלך"`

# Post Install messages
MSG_INSTALLATIONS_FINISHED=`bidi "התקנת IEs 4 Linux הושלמה!"`
MSG_RUN_IES=`bidi "להרצת IE-ים, הקלד:"`
MSG_NEEDS_TRANSLATION=`bidi "אם יש לך 5 דקות לעשות לתרגם את IEs4Linux לשפה שלך.
תבקר ב: http://tatanka.com.br/ies4linux/forum/viewtopic.php?p=2"`


MSG_WARNING_OLDWINE=`bidi "IEs4Linux 2.0 פותח עבור גרסה עדכנית של wine 0.9.x
נראה שאתה משתמש בגרסה ישנה $(wine --version).
מומלץ לך לעדכן wine לגרסה אחרונה (לך ל: winehq.com)."`
MSG_ERROR_NO_WINEPREFIXCREATE=`bidi "wineprefixcreate לא מותקן ב-wine. ייתכן ואתה מריץ גרסה ישנה של Wine.
תנסה לעדכן לגרסה אחרונה."`
MSG_ERROR_CABEXTRACTING=`bidi "נפלה שגיאה בפריסת קבצי cab."`
