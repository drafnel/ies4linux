# IEs 4 Linux 2.0
# Spanish Strings

# Translation details
TRANSLATION_LOCALE="esAR"
TRANSLATION_WHO="Guillermo Joandet <gjoandet at gmail dot com>"
TRANSLATION_LANGUAGE="Español"
TRANSLATION_VERSION="1.0"
TRANSLATION_ENCODING="UTF8"

# ANSWER OPTIONS (should be the first letter of localized 'yes' and 'no'
YES=y
NO=n

MSG_WELCOME_TEXT="Bienvenido, $(whoami)! Soy IEs4Linux.\nPuedo instalar IE 6, 5.5 y 5.0 por usted de forma sencilla y rápida.\nUsted está sólo a unos pocos 'Enter' de sus IEs."
MSG_WELCOME_INSTRUCTIONS="Voy a formularle algunas preguntas ahora. Sólo elija $YES o $NO (la respuesta por defecto es la que está en negrita)"

MSG_WELCOME_QUESTION_IE55="IE 6 será instalado en forma automática.\n¿Desea instalar además IE 5.5 SP2?"
MSG_WELCOME_QUESTION_IE5="¿Desea instalar también IE 5.01 SP2?"
MSG_LOCALES="IEs puede ser instalado usando alguna de las siguientes localizaciones:"
MSG_CHOOSE_LOCALE="La localización por defecto es $IE6_LOCALE. Presione enter para mantenerla o seleccione una diferente: "

MSG_WELCOME_INSTRUCTIONS_DEFAULT="Por defecto, instalaré todo en $HOME/.ies4linux\nTambién instalaré el plugin de Flash 8 y crearé accesos directos en el Escritorio."
MSG_WELCOME_QUESTION_CONFIGURE="¿Es esto correcto para usted? (Para configurar opciones avanzadas tipee $NO)"

MSG_CONFIGURE_FLASH="¿Debo instalar el plugin de Macromedia Flash 8?"
MSG_CONFIGURE_SHORTCUTS="¿Debo crear los accesos directos en el Escritorio?"

MSG_CONFIGURE_BASEDIR_MSG="Todo va a ser instalado en $HOME/.ies4linux/"
MSG_CONFIGURE_BASEDIR_QUESTION="Presione enter para mantener este directorio o tipee el nuevo: "

MSG_CONFIGURE_BINDIR_MSG="Los ejecutables serán creados en $HOME/bin/"
MSG_CONFIGURE_BINDIR_QUESTION="Presione enterHit enter to keep this or type the new folder: "
MSG_CONFIGURE_BINDIR_QUESTION="Presione enter para mantener este directorio o tipee el nuevo: "
MSG_CONFIGURE_WGET="Vamos a utilizar wget para descargar los archivos. Si es necesario algún parámetro adicional, ingréselo ahora: "

MSG_START="¡Muy Bien!. Vamos a comezar las instalaciones..."

# Sections
MSG_DOWNLOADING="Descargando todo lo que necesitamos"
MSG_INSTALLING="Instalando"
MSG_INSTALLING_FLASH="Instalando Flash Player 8"

# Subsections
MSG_INITIALIZING="Inicializando"
MSG_CREATING_PREFIX="Creando el Prefijo Wine"
MSG_EXTRACTING_CABS="Extrayendo de archivos CAB"
MSG_INSTALLING_FONTS="Instalando Fuentes TTF"
MSG_INSTALLING_REGISTRY="Instalando el registro"
MSG_FINALIZING="Finalizando"
MSG_COPYING_IE6="Copiando la instalación de ie6"
MSG_EXTRACTING_FILES="Extrayendo archivos"
MSG_PROCESSING_INF="Procesando el archivo inf"
MSG_PERFORM_INSTALLATIONS="Efectuando Instalaciones"
MSG_INSTALLING_FLASH_ON="Instalando flash"
# Errors
MSG_ERROR_INSTALL_WINE="¡Necesita instalar wine! \nDescarguelo desde: http://www.winehq.org"
MSG_ERROR_INSTALL_CABEXTRACT="¡Necesita instalar cabextract! \nDescarguelo desde : http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_UPDATE_CABEXTRACT="¡Necesita actualizar cabextract! \nDescarguelo de: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_INVALIDLOCALE="¡Localización inválida! Por favor ejecute IEs4Linux nuevamente y elija una opción correcta."
MSG_WARNING_ROOT="¡Usted es root! ¡Esto es altamente desaconsejable¡ IE es demasiado inseguro para darle acceso root.\n¿Desea un consejo de amigo? Ejecuteme como usuario normal, o, lo que es mejor, cree un usuario separado para administrar sus IEs."

# Post Install messages
MSG_INSTALLATIONS_FINISHED="¡Las instalaciones de IEs 4 Linux finalizaron!"
MSG_RUN_IES="Para ejecutar sus IEs, tipee:"
MSG_NEEDS_TRANSLATION="Si dispone de 5 minutos, puede ayudar con la traducción de IEs4Linux en su idioma.\nVisite: http://tatanka.com.br/ies4linux/forum/viewtopic.php?p=2"