# IEs 4 Linux 2.0
# English Strings

# Translation details
TRANSLATION_LOCALE="deDE"
TRANSLATION_WHO="Johannes Schmid <johannes.schmid at gmx dot de>"
TRANSLATION_LANGUAGE="Deutsch"
TRANSLATION_VERSION="1.0"
TRANSLATION_ENCODING="UTF8"

# ANSWER OPTIONS (should be the first letter of localized 'yes' and 'no'
YES=j
NO=n

MSG_WELCOME_TEXT="Willkommen, $(whoami)! Dies ist IEs4Linux.\nEs kann für sie den IE 6, 5.5 and 5.0 einfach und schnell installieren.\nSie sind nur 4 Fragen von ihrem IE entfernt"
MSG_WELCOME_INSTRUCTIONS="Ihnen werden nun einige Fragen gestellen. Antworten sie $YES oder $NO (Die Standard-Antwort wird fett dargestellt)"

MSG_WELCOME_QUESTION_IE55="IE 6 wird automatisch installiert.\nWollen sie zusätzlich IE 5.5 SP2 installieren?"
MSG_WELCOME_QUESTION_IE5="Und außerdem IE 5.01 SP2 installieren?"

MSG_LOCALES="Die IEs können in folgenden Sprachen installiert werden:"
MSG_CHOOSE_LOCALE="Standard: $IE6_LOCALE. Drücken sie <Enter> um dies bezubehalten oder wählen sie eine andere Sprache aus "

MSG_WELCOME_INSTRUCTIONS_DEFAULT="Standardmäßig wird alles in $BASEDIR_DEFAULT installiert\nAußerdem wird das Flash 9 Plugin installiert und Icons auf dem Desktop angelegt"
MSG_WELCOME_QUESTION_CONFIGURE="Ist das in Ordnung? (Für erweiterte Einstellungen $NO eingeben)"

MSG_CONFIGURE_FLASH="Soll das Adobe Flash 9 Plugin? installiert werden"
MSG_CONFIGURE_SHORTCUTS="Was ist mit Desktop Icons? Sollen sie erstellt werden?"

MSG_CONFIGURE_BASEDIR_MSG="Alles wird in $BASEDIR_DEFAULT installiert"
MSG_CONFIGURE_BASEDIR_QUESTION="Drücken sie <Enter> oder geben sie ein anderes Verzeichnis ein: "

MSG_CONFIGURE_BINDIR_MSG="Verknüpfungen werden in $BINDIR_DEFAULT installiert"
MSG_CONFIGURE_BINDIR_QUESTION="Drücken sie <Enter> oder geben sie ein anderes Verzeichnis ein: "

MSG_CONFIGURE_WGET="wget wird zum herunterladen der Datein benutzt. Wenn sie speziell Optionen benötigen (proxy,...), geben sie diese jetzt ein: "

MSG_START="OK, die Installation wird jetzt gestartet"

# Sections
MSG_DOWNLOADING="Alles Nötige wird heruntergeladen!"
MSG_INSTALLING="Installiere"
MSG_INSTALLING_FLASH="Installiere Flash Player 9"

# Subsections
MSG_INITIALIZING="Initialisierung"
MSG_CREATING_PREFIX="Wine Prefix wird erstellt"
MSG_EXTRACTING_CABS="Entpacke CAB Dateien"
MSG_INSTALLING_FONTS="Installiere TTF Fonts"
MSG_INSTALLING_REGISTRY="Installiere registry"
MSG_FINALIZING="Fertigstellen..."
MSG_COPYING_IE6="Kopiere ie6 Installation"
MSG_EXTRACTING_FILES="Entpacke Dateien"
MSG_PROCESSING_INF="Verarbeite inf Datei"
MSG_PERFORM_INSTALLATIONS="Installiere..."
MSG_INSTALLING_FLASH_ON="Installiere Flash"

# Errors
MSG_ERROR_INSTALL_WINE="Sie benötigen wine! \nDownload: http://www.winehq.org"
MSG_ERROR_INSTALL_CABEXTRACT="Sie benötigen cabextract! \nDownload: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_UPDATE_CABEXTRACT="Sie müssen cabextract aktualisieren! \nDownload: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_INVALIDLOCALE="Ungültige Sprache! IEs4Linux neustarten und gültige Sprache wählen."
MSG_WARNING_ROOT="Sie sind root! Dies wird nicht empfolen! IE ist zu unsicher um ihm root-Rechte zu gewähren.\nUnsere Empfelung ist es IE als normaler Benutzer oder noch besser als Benutzer mit stark eingeschränkten Rechten laufen zu lassen."

# Post Install messages
MSG_INSTALLATIONS_FINISHED="IEs 4 Linux Installtion erfolgreich beendet"
MSG_RUN_IES="Um die IEs zu starten:"
MSG_NEEDS_TRANSLATION="Wenn Sie 5 Minuten Zeit haben, helfen Sie mir IEs4Linux in ihrer Sprache zu übersetzen.\nBesuche: http://tatanka.com.br/ies4linux/forum/viewtopic.php?p=2"