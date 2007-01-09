# IEs 4 Linux 2.0
# English Strings

# Translation details
TRANSLATION_LOCALE="viVN"
TRANSLATION_WHO="Giang Trần <gavintran at gmail dot com>"
TRANSLATION_LANGUAGE="Vietnamese"
TRANSLATION_VERSION="1.4"
TRANSLATION_ENCODING="UTF8"

# ANSWER OPTIONS (should be the first letter of localized 'yes' and 'no'
YES=y
NO=n

MSG_WELCOME_TEXT="Xin chào, $(whoami)! Tôi là IEs4Linux.\n Tôi có thể cài đặt IE 6,5.5 và 5.0 cho bạn một cách dễ dàng và nhanh chóng.\nBạn chỉ cần nhấn 'enter' 4 lần mà thôi."
MSG_WELCOME_INSTRUCTIONS="Tôi sẽ hỏi bạn một số câu hỏi bây giờ.Chỉ cần trả lời $YES hoặc $NO (câu trả lời mặc định được in đậm)"
MSG_WELCOME_QUESTION_IE55="IE 6 sẽ được tự động cài đặt.\nBạn có muốn cài đặt thêm IE 5.5 SP2 không?"
MSG_WELCOME_QUESTION_IE5="Và bạn có muốn cài đặt IE 5.01 SP2 không?"
MSG_LOCALES="IE có thể sử dụng các locale sau đây:"
MSG_CHOOSE_LOCALE="Mặc định là $IE6_LOCALE. Nhấn enter để giữ lại hoặc chọn một l lựa chọn khác: "

MSG_WELCOME_INSTRUCTIONS_DEFAULT="Theo mặc định, tôi sẽ cài đặt toàn bộ và $BASEDIR_DEFAULT\nTôi cũng sẽ cài đặt plugin Flash 9 và tạo biểu tượng ở Desktop."
MSG_WELCOME_QUESTION_CONFIGURE="Bạn đồng ý lựa chọn này chứ? (Để sửa đổi các lựa chọn cấp cao, hãy nhập $NO)"
MSG_CONFIGURE_FLASH="Tôi được phép cài đặt plugin Adobe Flash 9 chứ?"
MSG_CONFIGURE_SHORTCUTS="Và tôi cũng có thể tạo biểu tượng Desktop chứ?"
MSG_CONFIGURE_BASEDIR_MSG="Toàn bộ sẽ được cài đặt vào $BASEDIR_DEFAULT"
MSG_CONFIGURE_BASEDIR_QUESTION="Nhấn enter để giữ lại hoặc nhập tên của thư mục mới (đường dẫn tuyệt đối):"
MSG_CONFIGURE_BINDIR_MSG="Bộ khởi động binary sẽ được tạo ở $BINDIR_DEFAULT"
MSG_CONFIGURE_BINDIR_QUESTION="Nhấn enter để giữ lại hoặc nhập tên của thư mục mới "

MSG_CONFIGURE_WGET="Tôi sẽ sử dụng wget để tải các tập tin. Nếu bạn cần một số flag đặc biệt (proxy,...), nhập chúng vào: "
MSG_START="Ổn cả rồi! Bắt đầu cài đặt..."
# Sections
MSG_DOWNLOADING="Đang tại toàn bộ mọi thứ chúng ta cần"
MSG_INSTALLING="Đang cài đặt"
MSG_INSTALLING_FLASH="Đang cài đặt Flash Player 9"

# Subsections
MSG_INITIALIZING="Đang khởi tạo"
MSG_CREATING_PREFIX="Đang tạo Wine Prefix"
MSG_EXTRACTING_CABS="Đang giải nén tập tin CAB"
MSG_INSTALLING_FONTS="Đang cài đặt font TTF"
MSG_INSTALLING_REGISTRY="Đang cài đặt registry"
MSG_FINALIZING="Đang hoàn tất"
MSG_COPYING_IE6="Đang sao chép cài đặt ie6"
MSG_EXTRACTING_FILES="Đang giải nén tập tin"
MSG_PROCESSING_INF="Đang thi hành tập tin inf"
MSG_PERFORM_INSTALLATIONS="Đang tiến hành cài đặt"
MSG_INSTALLING_FLASH_ON="Đang cài đặt flash on"

# Errors
MSG_ERROR_INSTALL_WINE="Bạn phải cài đặt wine trước! Tải về tại đây: http://www.winehq.org"
MSG_ERROR_INSTALL_CABEXTRACT="Bạn phải cài đặt cabextract trước! \nTải về tại đây: http://www.kyz.uklinux.net"
MSG_ERROR_UPDATE_CABEXTRACT="Bạn phải nâng cấp cabextract trước! \nTải về tại đây: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_INVALIDLOCALE="locale không hợp lệ! Xin chạy lại IEs4Linux lần nữa và chọn 1 locale hợp lệ khác."
MSG_WARNING_ROOT="Bạn là root! Điều này không được khuyến khích! IE không an toàn đến mức mà bạn có thể cho nó quyền root.\nMuốn 1 lời khuyên từ 1 người bạn không? Chạy tôi dưới quyền 1 user bình thường, hay tốt hơn nữa tạo một user khác chỉ để quản lý IE."
# Post Install messages
MSG_INSTALLATIONS_FINISHED="Hoàn tất cài đặt IEs 4 Linux"
MSG_RUN_IES="Để chạy IE, nhập:"
MSG_NEEDS_TRANSLATION="Nếu bạn có 5 phút rảnh rỗi, hãy giúp tôi dịch IEs4Linux ra ngôn ngữ của bạn.\nGhé thăm: http://tatanka.com.br/ies4linux/forum/viewtopic.php?p=2"

# TRANSLATION VERSION 1.2
MSG_WARNING_OLDWINE="IEs4Linux 2.0 được phát triển sử dụng phiên bản Wine gần đây (0.9.x).Có vẻ như là bạn đang sử dụng phiên bản ($(wine --version)) cũ của Wine. Chúng tôi khuyến khích bạn nên cập nhật lên phiên bản Wine mới nhất (winehq.com)."
MSG_ERROR_NO_WINEPREFIXCREATE="Wine của bạn không cài đặt prefix wineprefixcreate. Có thể bạn đang sử dụng phiên bản Wine cũ. Hãy nâng cấp nó lên phiên bản mới nhất."
MSG_ERROR_CABEXTRACTING="Một lỗi xảy ra khi đang cabextract một số tập tin."

# TRANSLATION VERSION 1.3
MSG_ERROR_INSTALL_WGET="Bạn phải cài đặt 'wget' trước!"
MSG_ERROR_INSTALL_UNZIP="Bạn phải cài đặt 'unzip' trước!"

# TRANSLATION VERSION 1.4
GUI_TITLE="Internet Explorers cho Linux"
GUI_OK="Cài đặt"
GUI_CANCEL="Hủy bỏ"

GUI_INSTALLATION_OPTIONS="Lựa chọn cài đặt"
GUI_IE="Internet Explorer"
GUI_EXTRA="Extra"
GUI_INSTALL_IE6="Cài đặt Internet Explorer 6.0 SP1"
GUI_INSTALL_IE55="Cài đặt Internet Explorer 5.5"
GUI_INSTALL_IE5="Cài đặt Internet Explorer 5.01"
GUI_INSTALL_FLASH="Cài đặt Adobe Flash player 9"
GUI_CREATE_ICONS="Tạo biểu tượng Desktop"
GUI_LOCALE="Locale"

GUI_ADVANCED_OPTIONS="Lựa chọn cấp cao"
GUI_ADVANCED_BASEDIR="Thư mục chính"
GUI_ADVANCED_BINDIR="Thư mục Bin"
GUI_ADVANCED_DOWNLOADDIR="Thư mục tải về"
GUI_ADVANCED_WGETFLAGS="Wget Flags"
