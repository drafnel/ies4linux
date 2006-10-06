# IEs 4 Linux 2.0

# Translation details
TRANSLATION_LOCALE="idID"
TRANSLATION_WHO="Teguh asmara <tegara7 at yahoo dot com>"
TRANSLATION_LANGUAGE="Indonesia"
TRANSLATION_VERSION="1.0"
TRANSLATION_ENCODING="UTF8"

# ANSWER OPTIONS (should be the first letter of localized 'yes' and 'no'
YES=y
NO=t

MSG_WELCOME_TEXT="Selamat datang, $(whoami)! Aku adalah IEs4Linux.\nAku bisa menginstal IE 6, 5.5 and 5.0 untukmu dengan mudah dan cepat.\nKamu hanya sejauh empat 'enter' dari IE mu."
MSG_WELCOME_INSTRUCTIONS="Mulai sekarang aku akan menanyakan beberapa pertanyaan. Cukup menjawab $YES or $NO (jawaban default ditampilkan dengan huruf tebal)"

MSG_WELCOME_QUESTION_IE55="IE 6 akan di install secara otomatis.\nApakah kamu ingin menginstal IE 5.5 SP2 juga?"
MSG_WELCOME_QUESTION_IE5="Dan apakah kamu juga ingin menginstal IE 5.01 SP2?"

MSG_LOCALES="IE dapat di install dengan menggunakan bahasa local di bawah ini:"
MSG_CHOOSE_LOCALE="Default nya adalah $IE6_LOCALE. Tekan enter untuk tetap menggunakannya atau pilih yang lain: "

MSG_WELCOME_INSTRUCTIONS_DEFAULT="Secara default, Aku akan meng instal semuanya di $BASEDIR_DEFAULT\nAku juga akan meng instal plugin Flash 9 dan membuat shotcut di Desktop."
MSG_WELCOME_QUESTION_CONFIGURE="Apakah ini OK untukmu? (Untuk mengkonfigurasi setingan ahli ketik $NO)"

MSG_CONFIGURE_FLASH="Bolehkah aku instal plugin Adobe Flash 9?"
MSG_CONFIGURE_SHORTCUTS="Dan bagaimana dengan ikon Desktop? Bolehkah aku membuatnya?"

MSG_CONFIGURE_BASEDIR_MSG="Semuanya akan diinstal di $BASEDIR_DEFAULT"
MSG_CONFIGURE_BASEDIR_QUESTION="Tekan tombol enter untuk tetap menggunakan pilihan ini atau Ketik folder baru (path lengkap): "

MSG_CONFIGURE_BINDIR_MSG="Peluncur binari akan dibuat dan diletakkan di $BINDIR_DEFAULT"
MSG_CONFIGURE_BINDIR_QUESTION="Tekan tombol enter untuk tetap menggunakan pilihan ini atau Ketik folder baru: "

MSG_CONFIGURE_WGET="Kita akan menggunakan wget untuk men-download semua file. Jika kamu butuh flag spesial (proxy,...), ketik sekarang: "

MSG_START="Baiklah! Mari kita mulai proses instalasinya..."

# Sections
MSG_DOWNLOADING="Mendownload semua yang kita butuhkan"
MSG_INSTALLING="Menginstal"
MSG_INSTALLING_FLASH="Menginstal Flash Player 9"

# Subsections
MSG_INITIALIZING="Menganalisa"
MSG_CREATING_PREFIX="Membuat prefix Wine"
MSG_EXTRACTING_CABS="Mengekstrak file-file CAB"
MSG_INSTALLING_FONTS="Menginstal Huruf TTF"
MSG_INSTALLING_REGISTRY="Menginstal registry"
MSG_FINALIZING="Penyelesaian"
MSG_COPYING_IE6="Meng kopi instalasi ie6"
MSG_EXTRACTING_FILES="Mengekstrak file-file"
MSG_PROCESSING_INF="Memproses file inf"
MSG_PERFORM_INSTALLATIONS="Melakukan proses Instalasi"
MSG_INSTALLING_FLASH_ON="Menginstal flash 9"

# Errors
MSG_ERROR_INSTALL_WINE="Kamu harus menginstall wine terlebih dahulu! \nDownload wine di: http://www.winehq.org"
MSG_ERROR_INSTALL_CABEXTRACT="Kamu harus menginstall cabextract terlebih dahulu! \nDownload Cabextract di: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_UPDATE_CABEXTRACT="Kamu harus mengupdate cabextract terlebih dahulu! \nDDownload Cabextract di: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_INVALIDLOCALE="Pilihan bahasa local salah! Silahkan jalankan IEs4Linux lagi dan pilih yang benar."
MSG_WARNING_ROOT="Kau adalah Root! Ini sangat mengkhawatirkan! IE terlalu tidak aman untukmu dengan memberinya hak akses root.\nButuh sebuah sebuah saran dari seorang teman? Jalankan aku sebagai user normal atau, Yang terbaik, jika kamu dapat membuat user lagi, hanya khusus untuk menangani IE mu."

# Post Install messages
MSG_INSTALLATIONS_FINISHED="Proses Instalasi IEs 4 Linux telah selesai!"
MSG_RUN_IES="Untuk menjalankan IE mu, ketik:"
MSG_NEEDS_TRANSLATION="Jika kamu punya waktu 5 menit, bantu aku menerjemahkan IEs4Linux ke bahasamu.\nKunjungi: http://tatanka.com.br/ies4linux/forum/viewtopic.php?p=2"

# TRANSLATION VERSION 1.2
MSG_WARNING_OLDWINE="IEs4Linux 2.0 di kembangkan hanya untuk dijalankan dengan Wine versi (0.9.x). Sepertinya kamu menggunakan versi lama ($(wine --version)). Sangat di anjurkan agar kamu mengupdate wine milikmu ke versi paling baru (Pergilah ke: www.winehq.com)."
MSG_ERROR_NO_WINEPREFIXCREATE="Wine milikmu tidak memiliki wineprefixcreate terinstal. Mungkin kamu menjalankan Wine versi lama. Cobalah untuk mengupdate wine ke versi paling baru."
MSG_ERROR_CABEXTRACTING="Terjadi error disaat mencoba mengekstrak dengan cabextract pada suatu file."

# TRANSLATION VERSION 1.3
MSG_ERROR_INSTALL_WGET="Kamu butuh menginstal 'wget' terlebih dahulu!"
MSG_ERROR_INSTALL_UNZIP="Kamu butuh menginstal 'unzip' terlebih dahulu!"

