# Kommander user interface.
# We have two .kmdr files that need to be adjusted before used. One is the main installation dialog
# and the other one is the advanced dialog.

debug Using kommander gui
kmdr="$HOME/.ies4linux/tmp/dialog.kmdr"
temp="$HOME/.ies4linux/tmp/dialog.kmdr2"

# Auxiliary functions
function prepare_installation_dialog {
	cp "$IES4LINUX/ui/kommander/installation.kmdr" "$kmdr"
	remove_special_chars
	add_locale_select
	replace_variables GUI_TITLE GUI_OK GUI_CANCEL GUI_ADVANCED GUI_PLUGINS GUI_LOCALE GUI_ICONS GUI_MENU GUI_DESKTOP GUI_IES
	check_bool_options INSTALLIE6 INSTALLIE55 INSTALLIE5 INSTALLFLASH CREATE_DESKTOP_ICON CREATE_MENU_ICON
	add_logo
	finish_installation_commands
}

function prepare_advanced_dialog {
	cp "$IES4LINUX/ui/kommander/advanced.kmdr" "$kmdr"
	remove_special_chars
	replace_variables GUI_TITLE GUI_OK GUI_ADVANCED_OPTIONS GUI_ADVANCED_NOTICE GUI_IES
	replace_variables GUI_BETA_NOTICE GUI_BASEDIR GUI_BINDIR GUI_DOWNLOADDIR GUI_WGETFLAGS GUI_INSTALLING
	check_bool_options INSTALLIE7
	text_options BASEDIR BINDIR DOWNLOADDIR WGETFLAGS
	add_logo
	finish_advanced_commands
}

function remove_special_chars {
	sed -e "s/&amp;//" "$kmdr" > "$temp"
	mv "$temp" "$kmdr"
}

function add_locale_select {
	locale_num=0
	item_start="<item><property name=\"text\"><string>"
	item_end="</string></property></item>"
	total_locales=$(echo $IE6_LOCALES | wc -w )
	for locale in $IE6_LOCALES; do
		if [ "$locale" = "$IE6_LOCALE" ]; then
			select_locale=$locale_num
		fi

		if [ "${locale_num}" = "$((total_locales - 1))" ]; then
			sed -e "s@LOCALE_ITEM@${locale}@" "$kmdr" > "$temp"
		else
			sed -e "s@LOCALE_ITEM@${locale}${item_end}${item_start}LOCALE_ITEM@" "$kmdr" > "$temp"
		fi
		
		mv "$temp" "$kmdr"
		locale_num=$((locale_num + 1))
	done

	# HACK Select locale
	sed -e "s@<number>0</number>@<number>$select_locale</number>@" "$kmdr" > "$temp"
	mv "$temp" "$kmdr"
}

function replace_variables {
	for var in $*; do
		eval "sed -e \"s/$var/\$$var/\" \"$kmdr\" > \"$temp\"" 2> /dev/null
		if [ "$?" = "1" ]; then
			eval "sed -e \"s@$var@\$$var@\" \"$kmdr\" > \"$temp\""
		fi
		mv "$temp" "$kmdr"
	done
}

function check_bool_options {
	for var in $*; do
		if [ "$(eval echo \$$var)" = "1" ] ; then
			bool=true
		else
			bool=false
		fi

		# add checked
		sed -e "s@${var}</cstring>@${var}</cstring></property><property name=\"checked\"><bool>$bool</bool>@" "$kmdr" > "$temp"
		mv "$temp" "$kmdr"

		# add command listener
		COM="@if (!@$var.checked) echo export $var=0 @endif @if (@$var.checked) echo export $var=1 @endif"
		sed -e "s/#COMMANDS#/$COM\n#COMMANDS#/" "$kmdr" > "$temp"
		sed -e "s/#ADVANCED#/$COM\n#ADVANCED#/" "$temp" > "$kmdr"
	done
}

function text_options {
	for var in $*; do
		# add text value
		t1="$var</cstring>"
		t2="$var</cstring></property><property name=\"text\"><string>$(eval echo \$$var)</string>"
		sed -e "s@$t1@$t2@" "$kmdr" > "$temp"
		mv "$temp" "$kmdr"

		# add command listener
		sed -e "s/#COMMANDS#/export ${var}=\"@${var}.text\" \n #COMMANDS#/" "$kmdr" > "$temp"
		mv "$temp" "$kmdr"
        done
}

function finish_installation_commands {
	COM="echo export IE6_LOCALE=@locale.text \n echo export CANCELLED=false \n echo export NEXT_DIALOG= \n"
	sed -e "s/#COMMANDS#/$COM\n/" "$kmdr" > "$temp"

	COM="echo export IE6_LOCALE=@locale.text \n echo export CANCELLED=false \n echo export NEXT_DIALOG=advanced \n"
	sed -e "s/#ADVANCED#/$COM\n/" "$temp" > "$kmdr"
}

function finish_advanced_commands {
	COM="echo export CANCELLED=false \n echo export NEXT_DIALOG=installation \n"
	sed -e "s/#COMMANDS#/$COM\n/" "$kmdr" > "$temp"
	mv "$temp" "$kmdr"
}

function add_logo {
	sed -e "s@</UI>@@" "$kmdr" > "$temp"
	cat "$IES4LINUX"/ui/kommander/logo.kmdr >> "$temp"
	echo "</UI>" >> "$temp"
	mv "$temp" "$kmdr"
}

function show_dialog {
	eval $(kmdr-executor --icon "$IES4LINUX/lib/ies4linux.svg" "$kmdr")
}


# Execute
# NEXT_DIALOG controls what dialog we should show
# CANCELLED controls user exit

NEXT_DIALOG=installation

while [ "$NEXT_DIALOG" == "installation" ] || [ "$NEXT_DIALOG" == "advanced" ]; do
	CANCELLED=true

	if [ "$NEXT_DIALOG" == "installation" ]; then
		prepare_installation_dialog
		show_dialog
	elif [ "$NEXT_DIALOG" == "advanced" ]; then
		prepare_advanced_dialog
		show_dialog
	fi

	if [ "$CANCELLED" != "false" ]; then
		exit
	fi
	
done

# Execute command on Konsole
konsole -T "${GUI_TITLE}" --nomenubar --notabbar --noclose --schema BlackOnWhite --icon "$IES4LINUX/lib/ies4linux.svg" --vt_sz 60x30 -e "$IES4LINUX/lib/install.sh"

# Remove temp files
rm "$kmdr" "$temp"

