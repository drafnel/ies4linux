# IEs 4 Linux 2.0
# Japanese Strings

# Translation details
TRANSLATION_LOCALE="jaJP"
TRANSLATION_WHO="OrangeTown2006<orangetown2006 at gmail dot com>"
TRANSLATION_LANGUAGE="Japanese"
TRANSLATION_VERSION="1.1"
TRANSLATION_ENCODING="UTF8"

# ANSWER OPTIONS (should be the first letter of localized 'yes' and 'no'
YES=y
NO=n

MSG_WELCOME_TEXT="$(whoami)さん、ようこそ！私は、IEs4Linuxです。\nEnterキーを適当に押していくだけで、IE 6 ,IE 5.5 ,IE 5.0 を素早く簡単にインストールすることができます。"
MSG_WELCOME_INSTRUCTIONS="いくつか質問しますので、 $YES か $NO でお答え下さい。(デフォルトの設定は太字で表示されます。)"

MSG_WELCOME_QUESTION_IE55="IE 6は自動的にインストールされます。\nIE 5.5 SP2を追加でインストールしますか？"
MSG_WELCOME_QUESTION_IE5="IE 5.01 SP2を追加でインストールしますか？"

MSG_LOCALES="IEは一つの言語のみをサポートできます:"
MSG_CHOOSE_LOCALE="デフォルトの言語は $IE6_LOCALE です。このままEnterキーを押すか、違う言語を入力してください: "

MSG_WELCOME_INSTRUCTIONS_DEFAULT="デフォルトのインストール設定\nインストールディレクトリ: $BASEDIR_DEFAULT\nFlash 9 pluginのインストール: y\nデスクトップにショートカットを作成: y"
MSG_WELCOME_QUESTION_CONFIGURE="この設定でよろしいですか？(設定を変更したい場合は $NO とタイプしてください。)"

MSG_CONFIGURE_FLASH="Adobe Flash 9 pluginをインストールしますか？"
MSG_CONFIGURE_SHORTCUTS="デスクトップにアイコンを作成しますか？"

MSG_CONFIGURE_BASEDIR_MSG="すべてのファイルは以下のディレクトリにインストールされます: $BASEDIR_DEFAULT"
MSG_CONFIGURE_BASEDIR_QUESTION="問題ない場合はEnterキーを、違うフォルダにインストールする場合はディレクトリへのパスを入力してください(絶対パスで指定): "

MSG_CONFIGURE_BINDIR_MSG="デフォルトでは、起動スクリプトが以下のディレクトリに作成されます: $BINDIR_DEFAULT"
MSG_CONFIGURE_BINDIR_QUESTION="Enterキーを押して続行するか、別のフォルダを入力してください: "

MSG_CONFIGURE_WGET="ファイルのダウンロードには wget を使用します。特別な flag (proxy,...)が必要な場合は、それらを入力してください: "

MSG_START="すべての設定が完了しました！インストールを開始します..."

# Sections
MSG_DOWNLOADING="必要なファイルをダウンロードしています"
MSG_INSTALLING="インストールしています"
MSG_INSTALLING_FLASH="Flash Player 9 をインストールしています"

# Subsections
MSG_INITIALIZING="初期化しています"
MSG_CREATING_PREFIX="WineのPrefixを作成しています"
MSG_EXTRACTING_CABS="CABファイルを展開しています"
MSG_INSTALLING_FONTS="TTFフォントをインストールしています"
MSG_INSTALLING_REGISTRY="レジストリをインストールしています"
MSG_FINALIZING="最終処理をしています"
MSG_COPYING_IE6="ie6のインストールの状態をコピーしています"
MSG_EXTRACTING_FILES="ファイルを展開しています"
MSG_PROCESSING_INF="infファイルを処理しています"
MSG_PERFORM_INSTALLATIONS="インストレーションを実行しています"
MSG_INSTALLING_FLASH_ON="flash をインストールしています on"

# Errors
MSG_ERROR_INSTALL_WINE="エラー:先にwineをインストールしてください\nwineは次のURLにあります: http://www.winehq.org"
MSG_ERROR_INSTALL_CABEXTRACT="エラー:先にcabextractをインストールしてください\ncabextractは次のURLにあります: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_UPDATE_CABEXTRACT="エラー:先にcabextractをアップデートしてください\ncabextractは次のURLにあります: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_INVALIDLOCALE="エラー:無効な言語設定です。\nIEs4Linuxを再度起動して有効な言語設定を入力してください。"
MSG_WARNING_ROOT="エラー:あなたはrootです！これは非常に残念です！！IEにroot権限を与えるのは非常に危険です。\n友達からチップが欲しいですか？それなら普通のユーザーで起動するか、別のユーザーを作成してからIEを扱ってください。"

# Post Install messages
MSG_INSTALLATIONS_FINISHED="IEs 4 Linux のインストールが完了しました！"
MSG_RUN_IES="IEを起動させるには、次のようにタイプしてください:"
MSG_NEEDS_TRANSLATION="もしよかったら、翻訳を手伝って下さい。数分で終わります。\nIf you have 5 minutes, help me translating IEs4Linux to your language.\nVisit: http://tatanka.com.br/ies4linux/forum/viewtopic.php?p=2"