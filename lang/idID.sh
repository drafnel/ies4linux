# IEs 4 Linux 2.0
# English Strings

# Translation details
TRANSLATION_LOCALE="idID"
TRANSLATION_WHO="Sonny Susanto <sonny dot susanto at gmail dot com>"
TRANSLATION_LANGUAGE="Indonesia"
TRANSLATION_VERSION="1.3"
TRANSLATION_ENCODING="UTF8"

# ANSWER OPTIONS (should be the first letter of localized 'yes' and 'no'
YES=y
NO=n

MSG_WELCOME_TEXT="Selamat datang, $(whoami)! Saya adalah IEs4Linux.\nSaya dapat menginstall IE 6, 5.5 dan 5.0 untuk Anda secara mudah dan cepat.\nAnda hanya berjarak 4 'Enter' dari IE Anda."
MSG_WELCOME_INSTRUCTIONS="Saya akan memberikan beberapa pertanyaan kepada Anda. Cukup dengan menjawab $YES atau $NO (Jawaban standar akan ditampilkan dengan huruf tebal)"

MSG_WELCOME_QUESTION_IE55="IE 6 secara otomatis akan diisntall.\nApakah Anda ingin menginstall IE 5.5 SP2 juga?"
MSG_WELCOME_QUESTION_IE5="Dan apakah Anda ingin menginstall IE 5.01 SP2?"

MSG_LOCALES="IE dapat diinstall menggunakan salah satu locale berikut:"
MSG_CHOOSE_LOCALE="Default locale adalah $IE6_LOCALE. Tekan Enter untuk memilihnya atau ketik pilihan lainnya: "

MSG_WELCOME_INSTRUCTIONS_DEFAULT="Secara default, saya akan menginstall semua program di $BASEDIR_DEFAULT\nSaya juga akan menginstall Flash 9 plugin dan membuat shortcut pada Desktop."
MSG_WELCOME_QUESTION_CONFIGURE="Apakah OK untuk Anda? (Untuk melakukan konfigurasi detail, ketik $NO)"

MSG_CONFIGURE_FLASH="Bolehkah saya menginstall Adobe Flash 9 plugin?"
MSG_CONFIGURE_SHORTCUTS="Dan bagaimana dengan icon pada Desktop? Bolehkah saya membuatnya?"

MSG_CONFIGURE_BASEDIR_MSG="Semua program akan diinstall di $BASEDIR_DEFAULT"
MSG_CONFIGURE_BASEDIR_QUESTION="Tekan Enter untuk menginstall atau ketik folder baru (absolute path): "

MSG_CONFIGURE_BINDIR_MSG="Binary launcher akan dibuat di $BINDIR_DEFAULT"
MSG_CONFIGURE_BINDIR_QUESTION="Tekan Enter untuk menginstall atau ketik folder baru: "

MSG_CONFIGURE_WGET="Saya akan menggunakan wget untuk mendownload file. Jika Anda butuh flag spesicial (proxy,...), silahkan ketik sekarang: "

MSG_START="Baiklah! Mari kita mulai proses instalasi..."

# Sections
MSG_DOWNLOADING="Mendownload semua program yang dibutuhkan"
MSG_INSTALLING="Menginstall"
MSG_INSTALLING_FLASH="Instalasi Flash Player 9"

# Subsections
MSG_INITIALIZING="Inisialisasi"
MSG_CREATING_PREFIX="Membuat Wine Prefix"
MSG_EXTRACTING_CABS="Mengekstrak file-file CAB"
MSG_INSTALLING_FONTS="Menginstall Huruf TTF"
MSG_INSTALLING_REGISTRY="Menginstall registry"
MSG_FINALIZING="Finalisasi"
MSG_COPYING_IE6="Mengcopy instalasi ie6"
MSG_EXTRACTING_FILES="Mengekstrak file-file"
MSG_PROCESSING_INF="Memroses file inf"
MSG_PERFORM_INSTALLATIONS="Melakukan proses Instalasi"
MSG_INSTALLING_FLASH_ON="Menginstall Flash 9"

# Errors
MSG_ERROR_INSTALL_WINE="Anda harus menginstall wine terlebih dulu! \nSilahkan download disini: http://www.winehq.org"
MSG_ERROR_INSTALL_CABEXTRACT="Anda harus menginstall cabextract terlebih dulu! \nSilahkan download disini: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_UPDATE_CABEXTRACT="Anda harus mengupdate cabextract terlebih dulu! \nSilahkan download disini: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_INVALIDLOCALE="Pilihan locale salah! Silahkan Please jalankan IEs4Linux lagi dan pilih locale yang benar."
MSG_WARNING_ROOT="Anda adalah root! Hal ini sangat tidak disarankan! IE sangat tidak aman dengan memberinya hak akses root.\nButuh saran dari teman? Jalankan IEs4Linux dengan user normal atau lebih baik, jika Anda bisa, buat user terpisah yang hanya digunakan untuk menghandle IE Anda."

# Post Install messages
MSG_INSTALLATIONS_FINISHED="Proses instalasi 'IEs 4 Linux' telah berhasil!"
MSG_RUN_IES="Untuk menjalankan IE Anda, ketik:"
MSG_NEEDS_TRANSLATION="Jika Anda mempunyai waktu luang, bantu saya menerjemahkan IEs4Linux ke bahasa Anda.\nKunjungi: http://tatanka.com.br/ies4linux/forum/viewtopic.php?p=2"

# TRANSLATION VERSION 1.2
MSG_WARNING_OLDWINE="IEs4Linux 2.0 dikembangkan untuk digunakan dengan Wine terbaru versi (0.9.x). Sepertinya Anda menggunakan Wine versi lama, yaitu ($(wine --version)). Disarankan Anda melakukan update Wine Anda dengan versi terbaru (Go to: winehq.com)."
MSG_ERROR_NO_WINEPREFIXCREATE="Wine Anda tidak mempunyai wineprefixcreate. Mungkin Anda menjalankan versi Wine yang sudah lama. Silahkan mencoba mengupdate Wine ke versi terbaru."
MSG_ERROR_CABEXTRACTING="Kesalahan terjadi pada saat cabextract beberapa file."

# TRANSLATION VERSION 1.3
MSG_ERROR_INSTALL_WGET="Anda harus menginstall 'wget' lebih dulu!"
MSG_ERROR_INSTALL_UNZIP="Anda harus menginstall 'unzip' lebih dulu!"

# TRANSLATION VERSION 1.4
GUI_TITLE="Internet Explorer untuk Linux"
GUI_OK="Install"
GUI_CANCEL="Batal"

GUI_INSTALLATION_OPTIONS="Pilihan Instalasi"
GUI_IE="Internet Explorer"
GUI_EXTRA="Extra"
GUI_INSTALL_IE6="Install Internet Explorer 6.0 SP1"
GUI_INSTALL_IE55="Install Internet Explorer 5.5"
GUI_INSTALL_IE5="Install Internet Explorer 5.01"
GUI_INSTALL_FLASH="Install Adobe Flash player 9"
GUI_CREATE_ICONS="Membuat Icon Desktop"
GUI_LOCALE="Locale"

GUI_ADVANCED_OPTIONS="Pilihan Detail"
GUI_ADVANCED_BASEDIR="Direktori Base"
GUI_ADVANCED_BINDIR="Direktori Bin"
GUI_ADVANCED_DOWNLOADDIR="Direktori Download"
GUI_ADVANCED_WGETFLAGS="Wget Flags"
