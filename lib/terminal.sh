# IEs 4 Linux 
# Text terminal User Interface

# Ask for every configuration variable which isn't already defined.

initAndConfigure() {
	# print welcome screen
	if test -z "$INSTALLIE55" || test -z "$INSTALLIE5" || test -z "$INSTALLFLASH" || test -z "$CREATE_ICON" || test -z "$BASEDIR" || test -z "$BINDIR" || test -z "$WGETFLAGS" || test -z "$DOWNLOADDIR" ; then
		if [ $NOCOLOR = 0 ]; then
			echo -e "\E[34;1m$MSG_WELCOME_TEXT"; tput sgr0
		else
			echo -e "$MSG_WELCOME_TEXT"
		fi
		echo
		echo -e $MSG_WELCOME_INSTRUCTIONS
		echo
	fi

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

	if [ $NOCOLOR = 0 ]; then
		echo -e "\E[34;1m$MSG_START\n"; tput sgr0
	else
		echo -e "$MSG_START\n"
	fi
}

yesno_question(){
	local prompt="$1"
	local default="$2"

	while true; do
		if [ $NOCOLOR = 0 ]; then echo -en "\E[1m"; fi
		echo -en "$prompt"
		if [ $NOCOLOR = 0 ]; then tput sgr0; fi
		echo -n " [ "
		if test "x$2" = "x1"; then
			if [ $NOCOLOR = 0 ]; then tput bold; fi
			echo -en "$YES"
			if [ $NOCOLOR = 0 ]; then tput sgr0; fi
			echo -en " / $NO"
		else
			echo -en "$YES / "
			if [ $NOCOLOR = 0 ]; then tput bold; fi
			echo -en "$NO"
			if [ $NOCOLOR = 0 ]; then tput sgr0; fi
		fi
		echo -en " ] "
		if [ $NOCOLOR = 0 ]; then echo -en "\E[34m"; fi
		read answer
		if [ $NOCOLOR = 0 ]; then tput sgr0; fi
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

	if [ $NOCOLOR = 0 ]; then echo -en "\E[1m"; fi
	echo -e $1
	if [ $NOCOLOR = 0 ]; then tput sgr0;fi
	if [ $NOCOLOR = 0 ]; then echo -en "\E[34m"; fi
	read answer
	if [ $NOCOLOR = 0 ]; then tput sgr0; fi
	echo

	if test -z "$answer"; then
		eval "export $var_name=\"$default\""
	else
		eval "export $var_name=\"$answer\""
	fi
}

warning() {
	if [ $NOCOLOR = 0 ]; then echo -en "\E[31;1m"; fi
	echo -e $*
	echo
	if [ $NOCOLOR = 0 ]; then tput sgr0; fi
}
error() {
	warning $*
	exit 1
}
section() {
	if [ $NOCOLOR = 0 ]; then 
		echo -e "\E[1m$*"; tput sgr0
	else
		local a="$*"		
		echo "$a"
		
		local i=0
		while [ $i -lt ${#a} ]; do
			echo -n "#"
			i=$((i+1))
		done
		echo
	fi
}
subsection() {
	echo "  $*"
}
ok() {
	if [ $NOCOLOR = 0 ]; then 
		echo -e "\E[34;1m[ OK ]\n"; tput sgr0
	else
		echo -e "[[ OK ]]\n"
	fi
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
		if [ $NOCOLOR = 0 ]; then	
			echo -e "\E[34;1m$MSG_NEEDS_TRANSLATION"; tput sgr0
		else
			echo -e ">> $MSG_NEEDS_TRANSLATION"
		fi
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
 --no-color             Don't show colors

 --help / -h            Display this message and exit OK

By default, ies4linux will run interactively and ask you for most of
the details above. The defaults make sense for most people, so just running

  ./ies4linux

on its own will result in a working IE.

__END_HELP__
}

