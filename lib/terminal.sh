#!/bin/bash
# IEs 4 Linux 
# Text terminal User Interface

initAndConfigure() {
	# print welcome screen
	echo -e "\E[34;1m$MSG_WELCOME_TEXT"; tput sgr0
	echo
	echo -e $MSG_WELCOME_INSTRUCTIONS
	echo

	yesno_question "$MSG_WELCOME_QUESTION_IE55"
	INSTALLIE55=$?

	yesno_question "$MSG_WELCOME_QUESTION_IE5"
	INSTALLIE5=$?

	echo -e "$MSG_LOCALES"
	echo EN-US PT-BR DE FR ES IT PT HU RU NL SV
	echo JA KO NO DA CN TW FI PL AR HE CS EL TR
	text_question "$MSG_CHOOSE_LOCALE" IE6_LOCALE
	IE6_LOCALE=$(echo $IE6_LOCALE | tr a-z A-Z)
	! echo "$IE6_LOCALES" | grep "$IE6_LOCALE" &> /dev/null && error $MSG_ERROR_INVALIDLOCALE

	echo -e $MSG_WELCOME_INSTRUCTIONS_DEFAULT
	yesno_question "$MSG_WELCOME_QUESTION_CONFIGURE"

	[ "$?" = "0" ]  && {
		yesno_question "$MSG_CONFIGURE_FLASH"
		INSTALLFLASH=$?

		yesno_question "$MSG_CONFIGURE_SHORTCUTS"
		CREATE_ICON=$?

		echo -e "$MSG_CONFIGURE_BASEDIR_MSG"
		text_question "$MSG_CONFIGURE_BASEDIR_QUESTION" BASEDIR
		mkdir -p "$BASEDIR"

		echo -e "$MSG_CONFIGURE_BINDIR_MSG"
		text_question "$MSG_CONFIGURE_BINDIR_QUESTION" BINDIR
		mkdir -p "$BINDIR"
		
		text_question "$MSG_CONFIGURE_WGET" WGETFLAGS_2
		export WGETFLAGS="$WGETFLAGS $WGETFLAGS_2"
	}

	echo -e "\E[34;1m$MSG_START\n"; tput sgr0
}

yesno_question(){
	echo -en "\E[1m"
	echo -en $1
	tput sgr0
	echo -n " [ "
	echo -en "\E[1m$YES"; tput sgr0
	echo -en " | $NO"
	echo -en " ] \E[34m"
	read answer
	tput sgr0
	echo
	echo $answer | grep -i $NO &> /dev/null
	return $?
}

text_question(){
	echo -en "\E[1m"
	echo -e $1
	tput sgr0
	echo -en "\E[34m"
	read answer
	tput sgr0
	echo
	[ ! "$answer" = "" ] && eval "export $2=\"$answer\""
}

warning() {
	echo -en "\E[31;1m"
	echo -e $*
	echo
        tput sgr0
}
error() {
	warning $*
	exit 1
}
section() {
	echo -e "\E[1m$*"; tput sgr0
}
subsection() {
	echo " $*"
}
ok() {
	echo -e "\E[34;1m[ OK ]\n"; tput sgr0
}
print_error() {
	local tmp="\$${1}"
	{
		eval echo $tmp
	} > /dev/stderr
	exit
}

