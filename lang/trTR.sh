# IEs 4 Linux 2.0
# Turkish Strings

# Translation details
TRANSLATION_LOCALE="trTR"
TRANSLATION_WHO="Fatih Asici <fatih.asici at gmail dot com>"
TRANSLATION_LANGUAGE="Turkish"
TRANSLATION_VERSION="1.0"
TRANSLATION_ENCODING="UTF8"

# ANSWER OPTIONS (should be the first letter of localized 'yes' and 'no'
YES=e
NO=h

MSG_WELCOME_TEXT="Hoşgeldiniz, $(whoami)! Ben IEs4Linux.\nSenin için IE 6, 5.5 ve 5.0 sürümlerini hızlı ve kolay bir şekilde kurabilirim.\nIE'den sadece dört 'enter' tuşu uzaktasınız."
MSG_WELCOME_INSTRUCTIONS="Şimdi size birkaç soru soracağım. Sadece $YES veya $NO şeklinde yanıt verin (öntanımlı yanıt koyu renkli olandır)"

MSG_WELCOME_QUESTION_IE55="IE 6 otomatik olarak kurulacak.\nAyrıca IE 5.5 SP2'yi de kurmak ister misiniz?"
MSG_WELCOME_QUESTION_IE5="Peki IE 5.01 SP2'yi kurmak ister misiniz?"

MSG_LOCALES="IE'ler aşağıdaki yerelleri kullanarak kurulabilirler:"
MSG_CHOOSE_LOCALE="Öntanımlı yerel $IE6_LOCALE. Öntanımlıyı seçmek için enter'a basın ya da başka birini seçin: "

MSG_WELCOME_INSTRUCTIONS_DEFAULT="Öntanımlı olarak, her şeyi $BASEDIR_DEFAULT altına kuracağım\nAyrıca Flash 9 eklentisini de kurup masaüstü kısayollarını oluşturacağım."
MSG_WELCOME_QUESTION_CONFIGURE="Bunlar size uygun mu? (Gelişmiş ayarları yapılandırmak için $NO girin)"

MSG_CONFIGURE_FLASH="Adobe Flash 9 eklentisini kurayım mı?"
MSG_CONFIGURE_SHORTCUTS="Peki ya masaüstü simgeleri? Onları da oluşturayım mı?"

MSG_CONFIGURE_BASEDIR_MSG="Her şey $BASEDIR_DEFAULT dizini altına kurulacak."
MSG_CONFIGURE_BASEDIR_QUESTION="Bu ayarı korumak için enter'a basın ya da yeni klasörü girin: "

MSG_CONFIGURE_BINDIR_MSG="İkilileri çalıştıracak betikler $BINDIR_DEFAULT altına kurulacak"
MSG_CONFIGURE_BINDIR_QUESTION="Bu ayarı korumak için enter'a basın ya da yeni klasörü girin: "

MSG_CONFIGURE_WGET="Dosyaları indirmek için wget kullanacağız. Eğer özel bir bayrağa ihtiyacınız varsa (vekil sunucu,...), onları şimdi girin: "

MSG_START="Tamam! Hadi kurulumlara başlayalım..."

# Sections
MSG_DOWNLOADING="Gerek duyduğumuz her şey indiriliyor"
MSG_INSTALLING="Kuruluyor"
MSG_INSTALLING_FLASH="Flash Player 9 kuruluyor"

# Subsections
MSG_INITIALIZING="Hazırlanıyor"
MSG_CREATING_PREFIX="Wine Öneki oluşturuluyor"
MSG_EXTRACTING_CABS="CAB dosyaları açılıyor"
MSG_INSTALLING_FONTS="TTF yazı tipleri kuruluyor"
MSG_INSTALLING_REGISTRY="Sistem kaydı kuruluyor"
MSG_FINALIZING="Sonlandırılıyor"
MSG_COPYING_IE6="ie6 kurulumu kopyalanıyor"
MSG_EXTRACTING_FILES="Dosyalar çıkartılıyor"
MSG_PROCESSING_INF="inf dosyası işleniyor"
MSG_PERFORM_INSTALLATIONS="Kurulumlar gerçekleştiriliyor"
MSG_INSTALLING_FLASH_ON="Flash kuruluyor:"

# Errors
MSG_ERROR_INSTALL_WINE="Önce wine'ı kurmanız gerekiyor! \nBuradan indirebilirsiniz: http://www.winehq.org"
MSG_ERROR_INSTALL_CABEXTRACT="Önce cabextract uygulamasını kurmanız gerekiyor! \nBuradan indirebilirsiniz: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_UPDATE_CABEXTRACT="Önce cabextract uygulamasını güncellemeniz gerekiyor! \nBuradan indirebilirsiniz: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_INVALIDLOCALE="Geçersiz yerel! Lütfen IEs4Linux'u yeniden çalıştırın ve geçerli birini seçin."
MSG_WARNING_ROOT="root kullanıcısısınız! Bu hiç önerilmez! IE kendisine root yetkisi vermek için çok güvensizdir.\nBir dost tavsiyesi ister misin? Beni normal kullanıcı olarak çalıştır veya daha iyisi, IE'lerini kullanmak için ayrı bir kullanıcı oluştur."

# Post Install messages
MSG_INSTALLATIONS_FINISHED="IEs 4 Linux kurulumlaru bitti!"
MSG_RUN_IES="IE'lerinizi çalıştırmak için, bunu girin:"
MSG_NEEDS_TRANSLATION="Eğer 5 dakikanız varsa, IEs4Linux'u kendi dilinize çevirmek için bana yardım edin.\nBurayı ziyaret edin: http://tatanka.com.br/ies4linux/forum/viewtopic.php?p=2"
