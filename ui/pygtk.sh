
# Inherits most functions from terminal.sh
source "$IES4LINUX"/ui/terminal.sh

# Currently PyGTK UI differs only by configuration
initAndConfigure() {
	# Export GUI Strings
	# TODO make this simpler
	export GUI_TITLE GUI_INSTALL_IE6 GUI_INSTALL_IE55 GUI_INSTALL_IE5 GUI_INSTALL_FLASH GUI_CREATE_ICONS GUI_OK GUI_CANCEL 
	export GUI_LOCALE GUI_IE GUI_EXTRA GUI_INSTALLATION_OPTIONS
	export GUI_ADVANCED_OPTIONS GUI_ADVANCED_BASEDIR GUI_ADVANCED_BINDIR GUI_ADVANCED_DOWNLOADDIR GUI_ADVANCED_WGETFLAGS
	
	local tmp_file="$IES4LINUX"/ui/pygtk_result.sh

	python "$IES4LINUX"/ui/ies4linux.py gtk > "$tmp_file"
	
	if [ "$?" = "1" ]; then 
		exit 1
	fi
	if [ "$(cat "$tmp_file")" = "" ]; then 	
		rm "$tmp_file"
		exit 0
	fi

	source "$tmp_file"
	rm "$tmp_file"

	#exit 0
}