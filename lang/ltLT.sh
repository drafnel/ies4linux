# IEs 4 Linux 2.0
# English Strings

# Translation details
TRANSLATION_LOCALE="ltLT"
TRANSLATION_WHO="Laurynas O. <lauris at remo dot lt>"
TRANSLATION_LANGUAGE="Lithuanian"
TRANSLATION_VERSION="1.2"
TRANSLATION_ENCODING="UTF8"

# ANSWER OPTIONS (should be the first letter of localized 'yes' and 'no'
YES=t
NO=n

MSG_WELCOME_TEXT="Sveikas, $(whoami)! Aš esu IEs4Linux.\nGaliu įdiegti IE 6, 5.5 ir 5.0 lengvai ir greitai.\nTu tiesiog esi už keturių klavišo 'Enter' paspaudimų nuo IEs."
MSG_WELCOME_INSTRUCTIONS="Dabar užduosiu tau keletą klausimų. Tiesiog atsakyk $YES arba $NO (atsakymas pagal nutylėjimą (default) yra paryškintas)"

MSG_WELCOME_QUESTION_IE55="IE 6 bus įdiegta automatiškai.\nAr nori įdiegti ir IE 5.5 SP2?"
MSG_WELCOME_QUESTION_IE5="Ar nori įdiegti IE 5.01 SP2?"

MSG_LOCALES="IEs gali būti įdiegta naudojant vieną iš šių lokalių:"
MSG_CHOOSE_LOCALE="Numatyta yra $IE6_LOCALE. Paspausk Enter arba pasirink kitą lokalę: "

MSG_WELCOME_INSTRUCTIONS_DEFAULT="Pagal nutylėjimą viskas bus įdiegta į $BASEDIR_DEFAULT\nTaip pat įdiegsiu Flash 9 įskiepį bei nuorodas darbalaukyje."
MSG_WELCOME_QUESTION_CONFIGURE="Ar viskas tinka? (Jei nori papildomai konfigūruoti - paspausk $NO)"

MSG_CONFIGURE_FLASH="Ar man įdiegti Adobe Flash 9 įskiepį?"
MSG_CONFIGURE_SHORTCUTS="Ar sukurti nuorodas darbalaukyje?"

MSG_CONFIGURE_BASEDIR_MSG="Viskas bus įdiegta $BASEDIR_DEFAULT"
MSG_CONFIGURE_BASEDIR_QUESTION="Paspausk Enter, jei nori palikti arba nurodyk kitą vietą (pilnas kelias): "

MSG_CONFIGURE_BINDIR_MSG="Binarinės programos bus sukurtos $BINDIR_DEFAULT"
MSG_CONFIGURE_BINDIR_QUESTION="Paspausk Enter, jei nori palikti arba nurodyk kitą vietą: "

MSG_CONFIGURE_WGET="Naudosiu wget parsiųsti failams. Jei reikia specialių opcijų (proxy,...), parašyk čia: "

MSG_START="Puiku! Pradėkime diegti..."

# Sections
MSG_DOWNLOADING="Siunčiu viską, ko mums prireiks"
MSG_INSTALLING="Diegiu"
MSG_INSTALLING_FLASH="Diegiu Flash Player 9"

# Subsections
MSG_INITIALIZING="Vykdau"
MSG_CREATING_PREFIX="Kuriu Wine Prefix"
MSG_EXTRACTING_CABS="Išskleidžiu CAB failus"
MSG_INSTALLING_FONTS="Diegiu TTF šriftus"
MSG_INSTALLING_REGISTRY="Diegiu registrą"
MSG_FINALIZING="Baigiu"
MSG_COPYING_IE6="Kopijuoju IE6 instaliaciją"
MSG_EXTRACTING_FILES="Išskleidžiu failus"
MSG_PROCESSING_INF="Vykdau inf failą"
MSG_PERFORM_INSTALLATIONS="Vykdau instaliacijas"
MSG_INSTALLING_FLASH_ON="Diegiu flash į"

# Errors
MSG_ERROR_INSTALL_WINE="Pirma reikia įdiegti Wine! \nParsisiųsti gali iš čia: http://www.winehq.org"
MSG_ERROR_INSTALL_CABEXTRACT="Pirma tu turi įdiegti cabextract! \nParsisiųsti gali iš čia: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_UPDATE_CABEXTRACT="Pirma tau reikia atnaujinti cabextract! \nParsisiųsti gali iš čia: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_INVALIDLOCALE="Klaidinga lokalė! Paleisk IEs4Linux iš naujo ir pasirink teisingą lokalę."
MSG_WARNING_ROOT="Tu esi root! Tai labai blogai! IE nėra tokia saugi, kad jai suteikti root teises.\nNori patarimo? Paleisk mane paprasto vartotojo teisėmis, ar, kas dar būtų geriau, sukurk atskirą vartotoją vien tik IEs programoms."

# Post Install messages
MSG_INSTALLATIONS_FINISHED="IEs 4 Linux diegimas baigtas!"
MSG_RUN_IES="Jei nori paleisti savo IEs, rašyk:"
MSG_NEEDS_TRANSLATION="Jei turi 5 minutes, padėk išversti IEs4Linux į savo gimtąją kalbą.\nAplankyk: http://tatanka.com.br/ies4linux/forum/viewtopic.php?p=2"

# TRANSLATION VERSION 1.2
MSG_WARNING_OLDWINE="IEs4Linux 2.0 sukurta naudojimui su naujesnėmis Wine versijomis (0.9.x). Atrodo, kad naudoji seną Wine versiją ($(wine --version)). Rekomenduočiau atnaujinti Wine į pačią naujausią versiją (eik į: winehq.com)."
MSG_ERROR_NO_WINEPREFIXCREATE="Tavo Wine neturi įdiegtos wineprefixcreate. Gali būti, kad naudoji seną Wine versiją. Pabandyk atnaujinti į naujausią šios programos versiją."
MSG_ERROR_CABEXTRACTING="Klaida bandant išarchyvuoti failus su cabextract."