# IEs 4 Linux 2.0
# English Strings

# Translation details
TRANSLATION_LOCALE="huHU"
TRANSLATION_WHO="ŐRY Máté <orymate at gmail dot com>"
TRANSLATION_LANGUAGE="magyar"
TRANSLATION_VERSION="1.0"
TRANSLATION_ENCODING="UTF8"

# ANSWER OPTIONS (should be the first letter of localized 'yes' and 'no'
YES=i
NO=n

MSG_WELCOME_TEXT="Üdvözöljük, $(whoami)! Ez a program az IEs4Linux.\nLehetővé teszi az IE 6, 5.5 és 5.0 Gyors és könnyű telepítését.\nMár csak négy kérdést kell megválaszolnia az IE használatáig."
MSG_WELCOME_INSTRUCTIONS="A program fel fog tenni néhány kérdést, amire igennel ($YES) vagy nemmel ($NO) válaszolhat. Az alapértelmezett minden esetben a félkövéren szedett."

MSG_WELCOME_QUESTION_IE55="Az IE 6 automatikusan települni fog.\nSzeretné az IE 5.5 SP2-t is telepíteni?"
MSG_WELCOME_QUESTION_IE5="Szeretné telepíteni az IE 5.01 SP2-t is?"

MSG_LOCALES="Az IE-k a következő „locale”-k használatával telepíthetőek:"
MSG_CHOOSE_LOCALE="Alapértelmezett: $IE6_LOCALE. Gépelje be a választott „locale”-t vagy üssön egy entert az alapértelmezett használatához."

MSG_WELCOME_INSTRUCTIONS_DEFAULT="Alapértelmezésben minden a következő helyre települ: $BASEDIR_DEFAULT\nA Flash 9 beépülő telepítve lesz, és a program létrehoz munkaasztali indítóikonokat is."
MSG_WELCOME_QUESTION_CONFIGURE="Megfelel ez önnek? (További beállításokért válaszoljon $NO-t.)"

MSG_CONFIGURE_FLASH="Kerüljön telepítésre a Adobe Flash 9 beépülő?"
MSG_CONFIGURE_SHORTCUTS="Hozzon létre a program munkaasztali indítóikonokat?"

MSG_CONFIGURE_BASEDIR_MSG="Minden a következő helyre települ: $BASEDIR_DEFAULT"
MSG_CONFIGURE_BASEDIR_QUESTION="Üssön egy entert a beállítás megtartásához vagy írja be a kívánt (abszolút) útvonalat: "

MSG_CONFIGURE_BINDIR_MSG="A bináris futtatók a következő helyre települnek: $BINDIR_DEFAULT"
MSG_CONFIGURE_BINDIR_QUESTION="Üssön egy entert a beállítás megtartásához vagy írja be a kívánt (abszolút) útvonalat: "

MSG_CONFIGURE_WGET="A program wgetet használ a fájlok letöltéséhez. Ha szükség van speciális kapcsolókra, (proxy, …), itt megadhatóak: "

MSG_START="A telepítés megkezdése…"

# Sections
MSG_DOWNLOADING="A szükséges fájlok letöltése…"
MSG_INSTALLING="Telepítés…"
MSG_INSTALLING_FLASH="A Flash Player 9 telepítése…"

# Subsections
MSG_INITIALIZING="A telepítés előkészítése"
MSG_CREATING_PREFIX="Wine előtagok létrehozása"
MSG_EXTRACTING_CABS="CAB fájlok kibontása"
MSG_INSTALLING_FONTS="TTF betűkészletek telepítése"
MSG_INSTALLING_REGISTRY="Registry telepítése"
MSG_FINALIZING="Telepítés befejezése"
MSG_COPYING_IE6="ie6 telepítés másolása"
MSG_EXTRACTING_FILES="Fájlok kicsomagolása"
MSG_PROCESSING_INF="Inf fájl feldolgozása"
MSG_PERFORM_INSTALLATIONS="Telepítések végrehajtása"
MSG_INSTALLING_FLASH_ON="Flash telepítése"

# Errors
MSG_ERROR_INSTALL_WINE="A telepítés előtt fel kell telepíteni a wine-t. \nLetölthető a http://www.winehq.org webhelyről."
MSG_ERROR_INSTALL_CABEXTRACT="A telepítés előtt fel kell telepíteni a cabextractet. \nLetölthető a http://www.kyz.uklinux.net/cabextract.php webhelyről."
MSG_ERROR_UPDATE_CABEXTRACT="A telepítés előtt frissíteni kell a cabextractet. \nLetölthető a http://www.kyz.uklinux.net/cabextract.php webhelyről."
MSG_ERROR_INVALIDLOCALE="Érvénytelen „locale”! Futtassa újra az IEs4Linux-ot és válasszon egy érvényeset."
MSG_WARNING_ROOT="Ne használja az IE-t rendszergazda felhasználóként, mert ez hatalmas biztonsági kockázatot jelent. Megfontolandó még egy különálló felhasználó használata is az IE futtatásához."

# Post Install messages
MSG_INSTALLATIONS_FINISHED="Az IEs 4 Linux telepítése befejeződött."
MSG_RUN_IES="Az IE-k futtatásához a következő parancsokat használhatja:"
MSG_NEEDS_TRANSLATION="Ha van 5 perce, segítsen a program szerzőjének az IEs4Linux lefordításában az ön nyelvére.\nTovábbi információ: http://tatanka.com.br/ies4linux/forum/viewtopic.php?p=2"
