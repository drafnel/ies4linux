# Loading kommander gui
debug Using kommander gui
kmdr="$HOME/.ies4linux/tmp/installation.kmdr"
temp="$HOME/.ies4linux/tmp/installation.kmdr2"

# First remove all & kmdr-editor writes
sed -e "s/&amp;//" "$IES4LINUX/ui/installation.kmdr" > "$kmdr"

# Add locales
locale_num=0
item_start="<item><property name=\"text\"><string>"
item_end="</string></property></item>"
total_locales=$(echo $IE6_LOCALES | wc -w )
for locale in $IE6_LOCALES; do
	if [ "$locale" = "$GUESSED_IE6_LOCALE" ]; then
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

# Search for special strings and replace them
variables="GUI_TITLE GUI_OK GUI_CANCEL GUI_ADVANCED GUI_PLUGINS GUI_LOCALE GUI_ICONS GUI_MENU GUI_DESKTOP GUI_IES"
for var in $variables; do
	eval "sed -e \"s/$var/\$$var/\" \"$kmdr\" > \"$temp\""
	mv "$temp" "$kmdr"
done

# Execute kommander
eval $(kmdr-executor --icon "$IES4LINUX/lib/ies4linux.svg" "$kmdr")

if [ "$CANCELLED" != "false" ]; then
	echo $GUI_CANCEL_INSTALL
	exit
fi

# Execute command on Konsole
konsole -T "${GUI_TITLE}" --nomenubar --notabbar --noclose --schema BlackOnWhite --icon "$IES4LINUX/lib/ies4linux.svg" --vt_sz 60x30 -e "$IES4LINUX/lib/install.sh"

