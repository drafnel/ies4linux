# IEs 4 Linux 2.0
# English Strings

# Translation details
TRANSLATION_LOCALE="zhCN"
TRANSLATION_WHO="catinsnow <catinsnow at gmail dot com>"
TRANSLATION_LANGUAGE="Chinese(Simplified)"
TRANSLATION_VERSION="1.1"
TRANSLATION_ENCODING="UTF8"

# ANSWER OPTIONS (should be the first letter of localized 'yes' and 'no'
YES=y
NO=n

MSG_WELCOME_TEXT="欢迎, $(whoami)! 我是IEs4Linux.\n我可以帮您方便快捷地安装IE 6, 5.5 和 5.0.\n你只需要按四下'enter'键."
MSG_WELCOME_INSTRUCTIONS="我下面会问一些问题.只需回答$YES 或 $NO (默认的回答以粗体表示)"

MSG_WELCOME_QUESTION_IE55="IE 6 将被自动安装.\n您想顺便安装 IE 5.5 SP2 吗?"
MSG_WELCOME_QUESTION_IE5="也要安装 IE 5.01 SP2吗?"

MSG_LOCALES="IE 可以使用下面这些语言区域设置安装:"
MSG_CHOOSE_LOCALE="默认是 $IE6_LOCALE. 按回车保持当前选择或选择另一个设置: "

MSG_WELCOME_INSTRUCTIONS_DEFAULT="默认情况下,我会安装所有文件到 $BASEDIR_DEFAULT\n也会安装Flash 9 插件并创建桌面快捷方式."
MSG_WELCOME_QUESTION_CONFIGURE="这样可以吗? (进入高级选项请输入 $NO)"

MSG_CONFIGURE_FLASH="要安装Adobe Flash 9 插件吗?"
MSG_CONFIGURE_SHORTCUTS="桌面快捷方式呢? 要我创建它们吗?"

MSG_CONFIGURE_BASEDIR_MSG="所有文件将会安装在 $BASEDIR_DEFAULT"
MSG_CONFIGURE_BASEDIR_QUESTION="按下回车保持当前设定或键入另一个文件夹 (绝对路径): "

MSG_CONFIGURE_BINDIR_MSG="可执行文件将创建在 $BINDIR_DEFAULT 下"
MSG_CONFIGURE_BINDIR_QUESTION="按下回车保持当前设定或键入另一个文件夹: "

MSG_CONFIGURE_WGET="我们将会用wget来下载文件.如果需要特别的设定(proxy,等),现在键入它们: "

MSG_START="好了! 让我们开始安装..."

# Sections
MSG_DOWNLOADING="正在下载所有我们需要的文件"
MSG_INSTALLING="正在安装"
MSG_INSTALLING_FLASH="正在安装Flash Player 9"

# Subsections
MSG_INITIALIZING="正在初始化"
MSG_CREATING_PREFIX="正在创建Wine Prefix"
MSG_EXTRACTING_CABS="正在解压CAB文件"
MSG_INSTALLING_FONTS="正在安装TTF字体"
MSG_INSTALLING_REGISTRY="正在安装注册表项"
MSG_FINALIZING="正在完成初始安装过程"
MSG_COPYING_IE6="正在拷贝 ie6 安装文件"
MSG_EXTRACTING_FILES="正在解压文件"
MSG_PROCESSING_INF="正在处理inf文件"
MSG_PERFORM_INSTALLATIONS="正在执行安装"
MSG_INSTALLING_FLASH_ON="正在安装flash"

# Errors
MSG_ERROR_INSTALL_WINE="您需要先安装wine! \n从这里下载: http://www.winehq.org"
MSG_ERROR_INSTALL_CABEXTRACT="您需要先安装cabextract! \n从这里下载: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_UPDATE_CABEXTRACT="您需要先更新cabextract! \n从这里下载: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_INVALIDLOCALE="无效语言! 请再次运行IEs4Linux并选择一个有效的语言."
MSG_WARNING_ROOT="您在使用root帐号! 强烈建议不要这么做! 给IE root权限很不安全.\n我们友好的建议? 请使用普通用户再次运行本程序或者, 更好的做法, 如果可以话, 创建一个独立的用户来专门运行您的IE."

# Post Install messages
MSG_INSTALLATIONS_FINISHED="IEs 4 Linux 安装完成!"
MSG_RUN_IES="要运行IE, 输入:"
MSG_NEEDS_TRANSLATION="如果您能抽出5分钟时间,请帮我翻译IEs4Linux到您的语言.\n访问: http://tatanka.com.br/ies4linux/forum/viewtopic.php?p=2"
