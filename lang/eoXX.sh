# IEs 4 Linux 2.0
# Esperanto Strings

# Translation details
TRANSLATION_LOCALE="eoXX"
TRANSLATION_WHO="Bertilo Wennergren <bertilow at gmail dot com>"
TRANSLATION_LANGUAGE="Esperanto"
TRANSLATION_VERSION="0.1"
TRANSLATION_ENCODING="UTF8"

# ANSWER OPTIONS (should be the first letter of localized 'yes' and 'no'
YES=j
NO=n

MSG_WELCOME_TEXT="Bonvenon, $(whoami)! Mi estas 'IEs4Linux'.\nMi povas instali por vi la programojn IE 6, 5.5 kaj 5.0 facile kaj rapide.\nSufiĉos kvar premoj de la enigo-klavo."
MSG_WELCOME_INSTRUCTIONS="Mi nun faros al vi kelkajn demandojn. Simple respondu $YES aŭ $NO (la implicita respondo aperos grase)"

MSG_WELCOME_QUESTION_IE55="La programo 'IE 6' estos aŭtomate instalita.\nĈu vi volas instali ankaŭ la version 'IE 5.5 SP2'?"
MSG_WELCOME_QUESTION_IE5="Kaj ĉu vi volas instali la version 'IE 5.01 SP2'?"

MSG_LOCALES="Eblas instali la IE-ojn uzante unu el la sekvaj lokaĵaroj:"
MSG_CHOOSE_LOCALE="Implicita estas '$IE6_LOCALE'. Premu la enigo-klavon, se vi volas ĝuste tiun. Alie elektu alian lokaĵaron: "

MSG_WELCOME_INSTRUCTIONS_DEFAULT="Ordinare mi instalas ĉion ĉe $BASEDIR_DEFAULT\nMi instalos ankaŭ la aldonprogramon 'Flash 9', kaj mi kreos skribotablajn ligilojn."
MSG_WELCOME_QUESTION_CONFIGURE="Ĉu bone por vi? (Por pliaj elektebloj klavu $NO)"

MSG_CONFIGURE_FLASH="Ĉu mi instalu la aldonprogramon 'Adobe Flash 9'?"
MSG_CONFIGURE_SHORTCUTS="Kaj kio pri skribotablaj ligiloj? Ĉu mi rajtas krei tiajn?"

MSG_CONFIGURE_BASEDIR_MSG="Ĉio estos instalita ĉe $BASEDIR_DEFAULT"
MSG_CONFIGURE_BASEDIR_QUESTION="Premu la enigo-klavon por akcepti tion, aŭ tajpu la novan dosierujon (kun absoluta vojprefikso): "

MSG_CONFIGURE_BINDIR_MSG="Duumaj lanĉiloj estos kreitaj ĉe $BINDIR_DEFAULT"
MSG_CONFIGURE_BINDIR_QUESTION="Premu la enigo-klavon por akcepti tion, aŭ tajpu la novan dosierujon: "

MSG_CONFIGURE_WGET="Ni uzos 'wget' por elŝuti la dosierojn. Se via 'wget' bezonas iajn specialajn elekteblojn (ekz. prokuran servilon), klavu tiujn nun: "

MSG_START="Bone! Ni komencu la instaladojn..."

# Sections
MSG_DOWNLOADING="Elŝutas ĉion bezonatan"
MSG_INSTALLING="Instalas"
MSG_INSTALLING_FLASH="Instalas la programon 'Flash Player 9'"

# Subsections
MSG_INITIALIZING="Iniciatas"
MSG_CREATING_PREFIX="Kreas 'Wine'-prefikson"
MSG_EXTRACTING_CABS="Malpakas 'CAB'-dosierojn"
MSG_INSTALLING_FONTS="Instalas 'TTF'-tiparojn"
MSG_INSTALLING_REGISTRY="Instalas registrejon"
MSG_FINALIZING="Definitivigas"
MSG_COPYING_IE6="Kopias la 'ie6'-instalaĵon"
MSG_EXTRACTING_FILES="Malpakas dosierojn"
MSG_PROCESSING_INF="Traktas la 'inf'-dosieron"
MSG_PERFORM_INSTALLATIONS="Plenumas instaladojn"
MSG_INSTALLING_FLASH_ON="Instalas 'flash'-on"

# Errors
MSG_ERROR_INSTALL_WINE="Unue vi devas instali la programon 'wine'! \nVi povas elŝuti ĝin de tiu ĉi loko: http://www.winehq.org"
MSG_ERROR_INSTALL_CABEXTRACT="Unue vi devas instali la programon 'cabextract! \nVi povas elŝuti ĝin de tiu ĉi loko: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_UPDATE_CABEXTRACT="Unue vi devas ĝisdatigi la programon 'cabextract! \nVi povas elŝuti ĝin de tiu ĉi loko: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_INVALIDLOCALE="Nevalida lokaĵaro! Bv. ruli 'IEs4Linux'-on denove elektante validan lokaĵaron."
MSG_WARNING_ROOT="Vi rulas la programon kiel administranto! Tio estas forte malrekomendata! IE estas tro malsekura por ricevi la rajtojn de administranto.\nĈu vi volas amikan konsilon? Rulu min kiel ordinara uzanto, aŭ - eĉ pli bone - se eble, kreu apartan uzanton por viaj IE-oj."

# Post Install messages
MSG_INSTALLATIONS_FINISHED="La instalado de 'IEs 4 Linux' estas finita!"
MSG_RUN_IES="Por ruli viajn IE-ojn, komandu:"
MSG_NEEDS_TRANSLATION="Se vi havas 5 minutojn je dispono, helpu min traduki 'IEs4Linux'-on en vian lingvon.\nVizitu: http://tatanka.com.br/ies4linux/forum/viewtopic.php?p=2"

# TRANSLATION VERSION 1.2
MSG_WARNING_OLDWINE="'IEs4Linux 2.0' estas farita por uzado kun lastatempaj versioj de la programo 'Wine' (0.9.x). Ŝajnas, ke vi uzas malnovan version ($(wine --version)). Estas rekomendinde ĝisdatigi vian 'wine'-programon al la plej nova versio. (Iru al: winehq.com)."
MSG_ERROR_NO_WINEPREFIXCREATE="Al via 'wine'-programo mankas la parto 'wineprefixcreate'. Eble vi uzas malnovan version de 'wine'. Provu ĝisdatigi ĝin."
MSG_ERROR_CABEXTRACTING="Okazis eraro dum malpakado de dosieroj per la programo 'cabextract'."
