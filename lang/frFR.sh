# IEs 4 Linux 2.0
# French Strings

# Translation details
TRANSLATION_LOCALE="frFR"
TRANSLATION_WHO="Rolus <rolus at esoterikeskort dot com>"
TRANSLATION_LANGUAGE="French"
TRANSLATION_VERSION="1.0.1"
TRANSLATION_ENCODING="UTF8"

# ANSWER OPTIONS (should be the first letter of localized 'yes' and 'no'
YES=oui
NO=non

MSG_WELCOME_TEXT="Bienvenue, $(whoami)! Je suis IEs4Linux.\nJe vais vous installer facilement et rapidement IE 6, 5.5 et 5.0.\nIl vous suffit simplement de cliquer sur 'entrer' pour répondre aux questions"
MSG_WELCOME_INSTRUCTIONS="Je vais maintenant vous poser quelques questions. Répondez juste par $YES or $NO (La réponse par défaut est en gras)"

MSG_WELCOME_QUESTION_IE55="IE 6 sera installé automatiquement.\nVoulez-vous également installer IE 5.5 SP2 ?"
MSG_WELCOME_QUESTION_IE5="Et maintenant voulez-vous installer IE 5.01 SP2 ?"

MSG_LOCALES="IEs4Linux peut installer une de ces langues :"
MSG_CHOOSE_LOCALE="Votre langue est apparemment $IE6_LOCALE. Appuyez sur 'entrer' pour valider ou bien choisissez-en une autre : "

MSG_WELCOME_INSTRUCTIONS_DEFAULT="Par défaut, Je vais vous installer l'ensemble des navigateurs dans $BASEDIR_DEFAULT\n, vous installer le plugin Flash 9 et créer un raccourci sur votre bureau."
MSG_WELCOME_QUESTION_CONFIGURE="Êtes-vous d'accord ? (Pour une configuration avancée cliquez sur $NO)"

MSG_CONFIGURE_FLASH="Dois-je installer le plugin Flash 9 de Adobe ?"
MSG_CONFIGURE_SHORTCUTS="Et qu'en est-il des raccourcis sur votre bureau ? Puis-je les créer ?"

MSG_CONFIGURE_BASEDIR_MSG="L'ensemble sera installé dans $BASEDIR_DEFAULT"
MSG_CONFIGURE_BASEDIR_QUESTION="Appuyez sur 'entrer' ou bien tapez la destination désirée : "

MSG_CONFIGURE_BINDIR_MSG="Les lanceurs d'applications binaires 'Binary launchers' vont être crée dans $BINDIR_DEFAULT"
MSG_CONFIGURE_BINDIR_QUESTION="Appuyez sur 'entrer' ou bien tapez la destination désirée : "

MSG_CONFIGURE_WGET="Nous allons utiliser wget pour télécharger les fichiers nécessaires. Si vous avez besoin de préciser un élément supplémentaire (proxy,...), tapez-le maintenant : "

MSG_START="Parfait ! Commençons l'installation..."

# Sections
MSG_DOWNLOADING="Téléchargeons tout ce dont nous avons besoin !"
MSG_INSTALLING="Installation"
MSG_INSTALLING_FLASH="Installation du plugin Flash 9 de Macromedia"

# Subsections
MSG_INITIALIZING="Initialisation"
MSG_CREATING_PREFIX="Création du préfixe de Wine"
MSG_EXTRACTING_CABS="Extraction des fichiers CAB"
MSG_INSTALLING_FONTS="Installation des polices TTF"
MSG_INSTALLING_REGISTRY="Installation du registre"
MSG_FINALIZING="Finalisation"
MSG_COPYING_IE6="Copie de l'installation de ie6"
MSG_EXTRACTING_FILES="Extraction des fichiers"
MSG_PROCESSING_INF="Processus du fichier inf"
MSG_PERFORM_INSTALLATIONS="Installation en cours"
MSG_INSTALLING_FLASH_ON="Installation de flash"

# Errors
MSG_ERROR_INSTALL_WINE="Vous devez d'abord installer Wine en premier ! \nTéléchargez-le à cette adresse : http://www.winehq.org"
MSG_ERROR_INSTALL_CABEXTRACT="Vous devez installer cabextract en premier ! \nTéléchargez-le à cette adresse : http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_UPDATE_CABEXTRACT="Vous devez mettre à jour cabextract en premier ! \nTéléchargez-le à cette adresse : http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_INVALIDLOCALE="Mauvaise langue ! Relancez IEs4Linux et choisissez la bonne."
MSG_WARNING_ROOT="Vous êtes en root ! C'est à ÉVITER ! IE n'est pas assez sécurisé pour lui donner tout les privilèges de root.\nUn petit conseil d'ami ? Relancez moi en mode normal (non root) ou bien, encore mieux, si vous le pouvez, créez un utilisateur différent pour lancer IE."

# Post Install messages
MSG_INSTALLATIONS_FINISHED="L'installation de IEs 4 Linux est finie !"
MSG_RUN_IES="Pour lancer vos IE, tapez:"
MSG_NEEDS_TRANSLATION="Si vous avez 5 minutes, aidez moi a traduire IEs4Linux dans votre langue.\nVisitez : http://tatanka.com.br/ies4linux/forum/viewtopic.php?p=2"
