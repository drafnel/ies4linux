# IEs 4 Linux
# Version: 2.0

# Translation details
TRANSLATION_LOCALE="ptBR"
TRANSLATION_WHO="Sérgio Lopes <slopes at gmail dot com>"
TRANSLATION_LANGUAGE="Português"
TRANSLATION_VERSION="1.2"
TRANSLATION_ENCODING="UTF8"

# ANSWER OPTIONS (should be the first letter of localized 'yes' and 'no'
YES=s
NO=n

MSG_WELCOME_TEXT="Bem-vindo, $(whoami)! Eu sou IEs4Linux.\nEu posso instalar os IE 6, 5.5 e 5.0 para você facilmente.\nVocê está apenas a 4 'enter' de distância dos seus IEs."
MSG_WELCOME_INSTRUCTIONS="Vou fazer algumas perguntas agora. Apenas responda $YES ou $NO (o padrão é o que está em negrito)"

MSG_WELCOME_QUESTION_IE55="IE 6 será instalado automaticamente.\nVocê quer instalar o IE 5.5 SP2 também?"
MSG_WELCOME_QUESTION_IE5="E você quer instalar o IE 5.01 SP2?"

MSG_LOCALES="Os IEs podem ser instalados usando uma das seguintes línguas:"
MSG_CHOOSE_LOCALE="O padrão é $IE6_LOCALE. Aperte 'enter' para manter $IE6_LOCALE ou digite algum outro:"

MSG_WELCOME_INSTRUCTIONS_DEFAULT="Vou instalar tudo em $BASEDIR_DEFAULT\nTambém instalarei o plugin Flash 9 e criarei ícones de atalho no Desktop."
MSG_WELCOME_QUESTION_CONFIGURE="Posso prosseguir? (Para configurar opções avançadas digite $NO)"

MSG_CONFIGURE_FLASH="Devo instalar o plugin Adobe Flash 9?"
MSG_CONFIGURE_SHORTCUTS="E os ícones no Desktop? Posso criá-los?"

MSG_CONFIGURE_BASEDIR_MSG="Tudo será instalado em $BASEDIR_DEFAULT"
MSG_CONFIGURE_BASEDIR_QUESTION="Tecle enter para aceitar ou digite outro diretório (caminho absoluto):"

MSG_CONFIGURE_BINDIR_MSG="Executáveis serão criados em $BINDIR_DEFAULT"
MSG_CONFIGURE_BINDIR_QUESTION="Tecle enter para aceitar ou digite outro diretório:"

MSG_CONFIGURE_WGET="Usaremos o wget para download. Se você precisa de alguma opção especial (proxy,...), digite-a agora: "

MSG_START="Tudo certo! Vamos começar a instalar as coisas então..."

# Sections
MSG_DOWNLOADING="Baixando tudo que precisamos"
MSG_INSTALLING="Instalando"
MSG_INSTALLING_FLASH="Instalando Flash Player 9"

# Subsections
MSG_INITIALIZING="Inicializando"
MSG_CREATING_PREFIX="Criando Wine Prefix"
MSG_EXTRACTING_CABS="Extraindo arquivos CAB"
MSG_INSTALLING_FONTS="Instalando Fontes TTF"
MSG_INSTALLING_REGISTRY="Instalando registro"
MSG_FINALIZING="Finalizando"
MSG_COPYING_IE6="Copiando instalação do ie6"
MSG_EXTRACTING_FILES="Extraindo arquivos"
MSG_PROCESSING_INF="Processando arquivo inf"
MSG_PERFORM_INSTALLATIONS="Efetuando instalações"
MSG_INSTALLING_FLASH_ON="Instalando flash no"


# Erros
MSG_ERROR_INSTALL_WINE="Você precisa instalar o wine antes! \nBaixe aqui: http://www.winehq.org"
MSG_ERROR_INSTALL_CABEXTRACT="Você precisa baixar o cabextract antes! \nBaixe aqui: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_UPDATE_CABEXTRACT="Você precisa atualizar o cabextract! \nBaixe aqui: http://www.kyz.uklinux.net/cabextract.php"
MSG_ERROR_INVALIDLOCALE="Língua inválida! Por favor rode o IEs4Linux de novo e escolha uma opção válida."
MSG_WARNING_ROOT="Você é o root! Isso é bastante desencorajado! O IE é inseguro demais para você lhe dar acesso root.\nQuer um conselho de amigo? Rode-me como seu usuário normal ou, o que é melhor, crie um usuário exclusivo para rodar seus IEs."

MSG_INSTALLATIONS_FINISHED="Instalações do IEs4Linux concluídas!"
MSG_RUN_IES="Para rodar seus IEs, digite:"