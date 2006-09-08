# IEs 4 Linux 
# Text terminal User Interface

# Ask for every configuration variable which isn't already defined.

initAndConfigure() {
	# print welcome screen
	echo -e "\E[34;1m$MSG_WELCOME_TEXT"; tput sgr0
	echo
	echo -e $MSG_WELCOME_INSTRUCTIONS
	echo

	if test -z "$INSTALLIE55"; then
		yesno_question "$MSG_WELCOME_QUESTION_IE55" $INSTALLIE55_DEFAULT
		INSTALLIE55=$?
	fi

	if test -z "$INSTALLIE5"; then
		yesno_question "$MSG_WELCOME_QUESTION_IE5" $INSTALLIE5_DEFAULT
		INSTALLIE5=$?
	fi

	if "$USING_GUESSED_IE6_LOCALE"; then
		# Ask, to be sure.
		echo -e "$MSG_LOCALES"
		echo $IE6_LOCALES | fmt -w 40
		text_question "$MSG_CHOOSE_LOCALE" IE6_LOCALE $IE6_LOCALE
		IE6_LOCALE=$(echo $IE6_LOCALE | tr a-z A-Z)
	fi
	if ! echo " $IE6_LOCALES " | grep " $IE6_LOCALE " &> /dev/null; then
		error $MSG_ERROR_INVALIDLOCALE
	fi

	if test -z "$INSTALLFLASH" || test -z "$CREATE_ICON" || test -z "$BASEDIR" || test -z "$BINDIR" || test -z "$WGETFLAGS" ; then
		echo -e $MSG_WELCOME_INSTRUCTIONS_DEFAULT
		yesno_question "$MSG_WELCOME_QUESTION_CONFIGURE"  1

		if test "$?" = "0"; then
			if test -z "$INSTALLFLASH"; then
				yesno_question "$MSG_CONFIGURE_FLASH" $INSTALLFLASH_DEFAULT
				INSTALLFLASH=$?
			fi
		
			if test -z "$CREATE_ICON"; then
				yesno_question "$MSG_CONFIGURE_SHORTCUTS" $CREATE_ICON_DEFAULT
				CREATE_ICON=$?
			fi
		
			if test -z "$BASEDIR"; then
				echo -e "$MSG_CONFIGURE_BASEDIR_MSG"
				text_question "$MSG_CONFIGURE_BASEDIR_QUESTION" BASEDIR "$BASEDIR_DEFAULT"
			fi
		
			if test -z "$BINDIR"; then
				echo -e "$MSG_CONFIGURE_BINDIR_MSG"
				text_question "$MSG_CONFIGURE_BINDIR_QUESTION" BINDIR "$BINDIR_DEFAULT"
			fi
		
			if test -z "$WGETFLAGS"; then
				text_question "$MSG_CONFIGURE_WGET" WGETFLAGS "$WGETFLAGS_DEFAULT"
				export WGETFLAGS="--continue $WGETFLAGS"
			fi
		else
			test -z "$BASEDIR" 	&& BASEDIR=$BASEDIR_DEFAULT
			test -z "$BINDIR" 	&& BINDIR=$BINDIR_DEFAULT
			test -z "$INSTALLFLASH" && INSTALLFLASH=$INSTALLFLASH_DEFAULT
			test -z "$CREATE_ICON" 	&& CREATE_ICON=$CREATE_ICON_DEFAULT
			test -z "$WGETFLAGS" 	&& WGETFLAGS=$WGETFLAGS_DEFAULT
		fi
	fi
	test -z "$DOWNLOADDIR" && DOWNLOADDIR="$BASEDIR/$DOWNLOADDIR_SUFFIX"

	echo -e "\E[34;1m$MSG_START\n"; tput sgr0
}

yesno_question(){
	local prompt="$1"
	local default="$2"

	while true; do
		echo -en "\E[1m"
		echo -en "$prompt"
		tput sgr0
		echo -n " [ "
		if test "x$2" = "x1"; then
			tput bold
			echo -en "$YES"
			tput sgr0
			echo -en " / $NO"
		else
			echo -en "$YES / "
			tput bold
			echo -en "$NO"
			tput sgr0
		fi
		echo -en " ] \E[34m"
		read answer
		tput sgr0
		echo
		
		# The first character counts. If they said blank, then assume the
		# default. If they provided something invalid, go round again.
		
		answer_lc=`echo $answer | tr A-Z a-z`
		case "$answer_lc" in
			"${NO:0:1}"*)
			return 0
			;;
			"${YES:0:1}"*)
			return 1
			;;
			"")
			return $default
			;;
			*)
			warning "Please answer $YES or $NO, or hit enter to accept the default" ## TRANSLATEME
			;;
		esac
	done
}

text_question(){
	local prompt="$1"
	local var_name="$2"
	local default="$3"

	echo -en "\E[1m"
	echo -e $1
	tput sgr0
	echo -en "\E[34m"
	read answer
	tput sgr0
	echo

	if test -z "$answer"; then
		eval "export $var_name=\"$default\""
	else
		eval "export $var_name=\"$answer\""
	fi
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

ask_for_translation() {
	[ "$NEEDSTRANSLATION" = "1" ] && {
		echo -e "\E[34;1m$MSG_NEEDS_TRANSLATION"; tput sgr0
	}
}

# Help is English only
show_help() {
   cat <<__END_HELP__

Usage: ./ies4linux [OPTIONS]

This script downloads and automagically installs multiple versions of
Microsoft Internet Explorer on Wine.


IE6 will always be installed at BASEDIR/ie6/. You can configure other things:

 --install-ie55         Install (or not) IE5.5 in BASEDIR/ie55/
 --no-install-ie55

 --install-ie5          Install (or not) IE5 in BASEDIR/ie5/
 --no-install-ie5

 --install-flash        Install (or not) Adobe Flash Player 9 too
 --no-install-flash

 --install-icon         Install(or not) an icon in Desktop
 --no-install-icon

 --basedir BASEDIR      Base location for installs [$BASEDIR_DEFAULT]
 --bindir BINDIR        Location of your bin folder [$BINDIR_DEFAULT]
 --downloaddir DLDIR    Where downloads will go [BASEDIR/$DOWNLOADDIR_SUFFIX]

 --locale LOCALE        The locale for the installation [\$LANG determines]
 --list-locales         Display all possible locales and exit
 --wget-flags FLAGS     Extra flags for wget [$WGETFLAGS_DEFAULT]

 --help / -h            Display this message and exit OK

IE6 will be installed

By default, ies4linux will run interactively and ask you for most of
the details above. The defaults make sense for most people, so just running

  ./ies4linux

on its own will result in a working IE.

__END_HELP__
}


