# IEs 4 Linux 2.0
# Malay Strings

# Translation details
TRANSLATION_LOCALE="msMY"
TRANSLATION_WHO="Nor Azlan Bin Idris <nor.azlan.idris at gmail dot com>"
TRANSLATION_LANGUAGE="BAHASA MELAYU"
TRANSLATION_VERSION="1.3"
TRANSLATION_ENCODING="UTF8"

# ANSWER OPTIONS (should be the first letter of localized 'yes' and 'no'
YES=y
NO=n

MSG_WELCOME_TEXT="Selamat Datang, $(whoami)! Saya adalah IEs4Linux.\nSaya boleh memasang IE 6, 5.5 and 5.0 untuk anda dengan mudah dan cepat.\nAnda hanya memerlukan 4 langkah mudah selepas ini untuk menggunakan IE."
MSG_WELCOME_INSTRUCTIONS="Saya akan menanya anda beberapa soalan selepas ini. Hanay perlu menjawab $YES atau $NO (perkataan yang tebal adalah jawapan asas)"

MSG_WELCOME_QUESTION_IE55="IE 6 akan dipasang secara automatik.\nAdakah anda ingin memasang IE 5.5 SP2?"
MSG_WELCOME_QUESTION_IE5="Adakah anda ingin memasang IE 5.01 SP2?"

MSG_LOCALES="IE boleh diapasang menggunakan salah satu dari bahasa tempatan anda seperti berikut:"
MSG_CHOOSE_LOCALE="Bahasa tempatang yang asas $IE6_LOCALE. Tekan enter untuk menggunakannya atau pilih yang lain: "

MSG_WELCOME_INSTRUCTIONS_DEFAULT="Sebagai asas, Saya akan memasang semuanya di $BASEDIR_DEFAULT\nSaya juga akan memasang plugin Flash 9 dan membuat pintasan di Desktop."
MSG_WELCOME_QUESTION_CONFIGURE="Adakah ia sesuai bagi anda? (Untuk mengubah pilihan, sila taip $NO)"

MSG_CONFIGURE_FLASH="Perlukah saya memasang plugin Flash 9?"
MSG_CONFIGURE_SHORTCUTS="Dan bagaimana denga ikon Desktop? Boleh saya membuatnya?"

MSG_CONFIGURE_BASEDIR_MSG="Segalanye akan dipasang di $BASEDIR_DEFAULT"
MSG_CONFIGURE_BASEDIR_QUESTION="Tekan enter kalau tidak mahu mengubah atau taip folder yang baru (absolute path): "

MSG_CONFIGURE_BINDIR_MSG="Pelancar binari akan dibina di $BINDIR_DEFAULT"
MSG_CONFIGURE_BINDIR_QUESTION="Tekan enter kalau tidak mahu mengubah atau taip folder yang baru: "

MSG_CONFIGURE_WGET="Kami akan menggunakan wget untuk memuat-turun fail-fail. Kalau anda memerlukan flag istimewa (proxy,...), taip ia sekarang: "

MSG_START="Wokey..haha! Mari kita mulakan proses pemasangan..."

# Sections
MSG_DOWNLOADING="Memuat-turun segala yang kami mahu"
MSG_INSTALLING="Proses Pemasangan"
MSG_INSTALLING_FLASH="Proses pemasangan Flash Player 9"

# Subsections
MSG_INITIALIZING="Initializing"
MSG_CREATING_PREFIX="Membina Prefix Wine"
MSG_EXTRACTING_CABS="Proses mengekstrak fail-fail CAB"
MSG_INSTALLING_FONTS="Proses memasang font-font TTF"
MSG_INSTALLING_REGISTRY="Proses pemasanganregistry"
MSG_FINALIZING="Proses pengakhiran"
MSG_COPYING_IE6="Proses menyalin pemasangan ie6"
MSG_EXTRACTING_FILES="Proses mengekstrak"
MSG_PROCESSING_INF="Memproses fail inf"
MSG_PERFORM_INSTALLATIONS="Persembahan pemasangan"
MSG_INSTALLING_FLASH_ON="Proses pemasangan flash dihidupkan"

# Errors
MSG_ERROR_INSTALL_WINE="Anda perlu memasang wine dahulu! \nMuat-turun ia di: http://www.winehq.org"
MSG_ERROR_INSTALL_CABEXTRACT="nda perlu memasang cabextract dahulu! \nMuat-turun ia di: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_UPDATE_CABEXTRACT="Anda perlu update cabextract dahulu! \nMuat-turun ia di: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_INVALIDLOCALE="Bahasa tempatan salah (locale)! Tolong jalankan IEs4Linux semula dan pilih yang betul."
MSG_WARNING_ROOT="Anda adalah root! Ini betul-betul tidak digalakkan! IE tidak selamat untuk anda menggunakan laluan root.\nMahu tip dari kawan? Jalankan saya sebagai pengguna biasa atau, apa-apa yang bagus, kalau anda boleh, buat pengguna yang berasingan hanya untuk menjalankan IE."

# Post Install messages
MSG_INSTALLATIONS_FINISHED="Pemasangan IEs 4 Linux sudah selesai..Yahooooo!"
MSG_RUN_IES="Untuk menjalankan IE anda, taip:"
MSG_NEEDS_TRANSLATION="Jika anda mempunyai masa sebanyak 5 minit, tolong saya mengalih-bahasa IEs4Linux ke bahasa anda.\nLawati: http://tatanka.com.br/ies4linux/forum/viewtopic.php?p=2"

# TRANSLATION VERSION 1.2
MSG_WARNING_OLDWINE="IEs4Linux 2.0 dibina menggunakan versi WINE semasa (0.9.x). Anda telah meggunakan versi lama ($(wine --version)). Saya cadangkan anda update wine anda dahulu ke versi baru (Go to: winehq.com)."
MSG_ERROR_NO_WINEPREFIXCREATE="Wine anda tidak mengandungi/memasang wineprefixcreate. Mungkin anda menjalan Wine versi lama. Cuba update ia ke versi baru."
MSG_ERROR_CABEXTRACTING="Kesalahan telah berlaku semasa mengekstrak sesetengah fail cab."

# TRANSLATION VERSION 1.3
MSG_ERROR_INSTALL_WGET="Anda perlu memasang 'wget' dahulu!"
MSG_ERROR_INSTALL_UNZIP="Anda perlu memasang 'unzip' dahulu!"
