# IEs 4 Linux 2.0
# Tradictional Chinese Strings

# Translation details
TRANSLATION_LOCALE="zhTW"
TRANSLATION_WHO="Cosmo Chene <cosmolax at gmail dot com>"
TRANSLATION_LANGUAGE="Chinese(Tradictional)"
TRANSLATION_VERSION="1.0"
TRANSLATION_ENCODING="UTF8"

# ANSWER OPTIONS (should be the first letter of localized 'yes' and 'no'
YES=y
NO=n

MSG_WELCOME_TEXT="歡迎, $(whoami)! 我是 IEs4Linux.\n我能幫您簡便快速地安裝好 IE 6, 5.5 and 5.0.\n您只需要按四次 'enter'就能裝好 IE."
MSG_WELCOME_INSTRUCTIONS="以下我將會詢問您一些問題. 您只需要回答 $YES 或 $NO 即可(預設的回答以粗體表示)"

MSG_WELCOME_QUESTION_IE55="IE 6 將會自動安裝.\n您想要順便安裝 IE 5.5 SP2 嗎?"
MSG_WELCOME_QUESTION_IE5="您想要安裝 IE 5.01 SP2 嗎?"

MSG_LOCALES="IEs 可以使用下列幾種語言安裝:"
MSG_CHOOSE_LOCALE="預設使用 $IE6_LOCALE 安裝. 請按下 enter 保留目前設定或選擇其他語言: "

MSG_WELCOME_INSTRUCTIONS_DEFAULT="預設情況下, 我將會把所有檔案安裝在 $BASEDIR_DEFAULT\n同時也會安裝 Flash  9 外掛以及建立桌面捷徑."
MSG_WELCOME_QUESTION_CONFIGURE="您都同意嗎? (若要進階設定請按 $NO)"

MSG_CONFIGURE_FLASH="您想要順便安裝 Adobe Flash  9 的外掛嗎 ?"
MSG_CONFIGURE_SHORTCUTS="還有桌面捷徑圖示啊 ?我要順便建立嗎?"

MSG_CONFIGURE_BASEDIR_MSG="所有程式檔案將安裝在 $BASEDIR_DEFAULT"
MSG_CONFIGURE_BASEDIR_QUESTION="按下 enter 保留原來設定或輸入指定的資料夾: "

MSG_CONFIGURE_BINDIR_MSG="啟動程式會安裝在 $BIN_DEFAULT"
MSG_CONFIGURE_BINDIR_QUESTION="按下 enter保留原來設定或輸入指定的資料夾: "

MSG_CONFIGURE_WGET="我們將使用 wget來下載檔案. 如果您有個別的特殊設定 (proxy,等), 請趁現在輸入: "

MSG_START="太好了! 讓我們現在開始安裝吧！"

# Sections
MSG_DOWNLOADING="正在下載所需要的檔案"
MSG_INSTALLING="安裝中"
MSG_INSTALLING_FLASH="正在安裝 Flash Player 9"

# Subsections
MSG_INITIALIZING="程式正在初始化"
MSG_CREATING_PREFIX="建立 Wine 前置作業"
MSG_EXTRACTING_CABS="正在解壓縮 CAB 檔"
MSG_INSTALLING_FONTS="正在安裝 TTF 字型"
MSG_INSTALLING_REGISTRY="正在安裝登錄檔"
MSG_FINALIZING="結束初始安裝過程"
MSG_COPYING_IE6="正在複製 ie6 安裝檔案"
MSG_EXTRACTING_FILES="正在解壓縮檔案"
MSG_PROCESSING_INF="正在處理 inf 檔"
MSG_PERFORM_INSTALLATIONS="執行指定安裝動作"
MSG_INSTALLING_FLASH_ON="安裝 flash 位置"

# Errors
MSG_ERROR_INSTALL_WINE="您必須先安裝 wine 才行! \n請到此下載: http://www.winehq.org"
MSG_ERROR_INSTALL_CABEXTRACT="您必須先安裝 cabextract 才行! \n請到此下載: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_UPDATE_CABEXTRACT="您必須先更新 cabextract 才行! \n請到此下載: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_INVALIDLOCALE="選擇語系錯誤! 請再次執行 IEs4Linux 並選擇可用的語系."
MSG_WARNING_ROOT="您正在使用 root 帳號! 我們強烈建議您不要這麼作! IE 本身極度不安全給予其太大權限是不智的行為.\n給您良心的建議。請以一般使用者執行本程式,更好的作法是，建立一個獨立的用戶專門來處理IE使用事項。"

# Post Install messages
MSG_INSTALLATIONS_FINISHED="IEs 4 Linux 安裝完成!"
MSG_RUN_IES="想要執行您的 IE, 請打:"
MSG_NEEDS_TRANSLATION="如果您有 5分鐘的時間, 請幫助我將 IEs4Linux 翻譯程您的語言.\n請造訪: http://tatanka.com.br/ies4linux/forum/viewtopic.php?p=2"