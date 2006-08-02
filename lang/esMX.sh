# IEs 4 Linux 2.0
# Spanish (es-mx) Strings
# By Leonardo Juszkiewicz (x.cyclop@yahoo.com)

# Translation details
TRANSLATION_LOCALE="esMX"
TRANSLATION_WHO="Leonardo Juszkiewicz (x.cyclop at yahoo dot com)"
TRANSLATION_LANGUAGE="Español"
TRANSLATION_VERSION="1.0"
TRANSLATION_ENCODING="ISO-8859-1"

# ANSWER OPTIONS (should be the first letter of localized 'yes' and 'no'
YES=y
NO=n

MSG_WELCOME_TEXT="Bienvenido, $(whoami)! Soy IEs4Linux.\nPuedo instalar Internet Explorer 6.0, 5.5 y 5.0 fácil y rápidamente.\nEstás a unos pocos tecleos de obtener IE."
MSG_WELCOME_INSTRUCTIONS="Te haré algunas preguntas. Solamente responde $YES o $NO (la respuesta predeterminada es la que está en negrita)"

MSG_WELCOME_QUESTION_IE55="IE 6 será instalado automáticamente.\n¿Quieres instalar también IE 5.5 SP2?"
MSG_WELCOME_QUESTION_IE5="¿Quiéres instalar también IE 5.01 SP2?"

MSG_LOCALES="IE puede ser instalado usando uno de las siguientes carpetas:"
MSG_CHOOSE_LOCALE="La carpeta predeterminada es $IE6_LOCALE. Apreta ENTER o escoge una nueva carpeta"

MSG_WELCOME_INSTRUCTIONS_DEFAULT="Predeterminadamente, Instalaré todo en $BASEDIR_DEFAULT\nTambién instalaré el plugin de Flash Player 9 y crearé accesos directos en el escritorio."
MSG_WELCOME_QUESTION_CONFIGURE="¿Es correcto esto? (Para configurar opciones avanzadas escribe $NO)"

MSG_CONFIGURE_FLASH="¿Debo instalar el plugin de Flash Player 9? (recomendado)"
MSG_CONFIGURE_SHORTCUTS="¿Debo crear accesos directos en el escritorio?"

MSG_CONFIGURE_BASEDIR_MSG="Todo será instalado en $BASEDIR_DEFAULT"
MSG_CONFIGURE_BASEDIR_QUESTION="Apreta ENTER o indica una nueva carpeta (ruta absoluta): "

MSG_CONFIGURE_BINDIR_MSG="Los accesos directos se crearán en $BINDIR_DEFAULT"
MSG_CONFIGURE_BINDIR_QUESTION="Apreta ENTER o indica una nueva carpeta: "

MSG_CONFIGURE_WGET="Usaremos el comando wget para descargar archivos. Si necesitas algunos parámetros especiales (proxy...), escríbelos ahora: "

MSG_START="¡Muy bien! Vamos a empezar con la instalación"

# Sections
MSG_DOWNLOADING="Descargando todo lo que necesitamos"
MSG_INSTALLING="Instalando"
MSG_INSTALLING_FLASH="Instalando Flash Player 9"

# Subsections
MSG_INITIALIZING="Iniciando"
MSG_CREATING_PREFIX="Creando prefijo de Wine"
MSG_EXTRACTING_CABS="Extrayendo archivos CAB"
MSG_INSTALLING_FONTS="Instalando fuentes TTF"
MSG_INSTALLING_REGISTRY="Instalando el registro"
MSG_FINALIZING="Finalizando"
MSG_COPYING_IE6="Copiando la instalación de ie6"
MSG_EXTRACTING_FILES="Extrayendo archivos"
MSG_PROCESSING_INF="Procesando el archivo inf"
MSG_PERFORM_INSTALLATIONS="Llevando a cabo la instalación"
MSG_INSTALLING_FLASH_ON="Instalando Flash"

# Errors
MSG_ERROR_INSTALL_WINE="¡Primero necesitas instalar el Wine! \nDescárgalo de: http://www.winehq.org"
MSG_ERROR_INSTALL_CABEXTRACT="¡Primero necesitas instalar cabextract! \nDescárgalo de: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_UPDATE_CABEXTRACT="¡Primero necesitas actualizar cabextract! \nDescárgalo de: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_INVALIDLOCALE="¡Carpeta inválida! Por favor ejecuta IEs4Linux otra vez y escoge una carpeta válida."
MSG_WARNING_ROOT="¡Estás como root! No es aconsejable. IE es muy inseguro para que le des privilegios de root.\n¿Quiéres un tip de un amigo? Ejecútame como usuario normal o, mejor, si puedes, crea un usuario por aparte para usar IE."

# Post Install messages
MSG_INSTALLATIONS_FINISHED="¡La instalación de IEs 4 Linux ha terminado!"
MSG_RUN_IES="Para ejecutar IE escribe: "
MSG_NEEDS_TRANSLATION="Si tienes 5 minutos, ayúdame a traducir IEs4Linux a tu idioma.\nEntra a: http://tatanka.com.br/ies4linux/forum/viewtopic.php?p=2"

# TRANSLATION VERSION 1.2
MSG_WARNING_OLDWINE="IEs4Linux 2.0 está desarrollado para ser usado con las versiones recientes de Wine(0.9.X). Parece que estás usando una versión antigua ($(wine --version)). Es recomendable que actualices Wine a la última versión (Entra a: winehq.com)."
MSG_ERROR_NO_WINEPREFIXCREATE="Tu Wine no tiene el wineprefixcreate instalado. Talvez tienes una version antigua del Wine. Actualízalo a la última versión."
MSG_ERROR_CABEXTRACTING="Ha ocurrido un error al intentar extraer algunos archivos."