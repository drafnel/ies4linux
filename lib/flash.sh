# IEs 4 Linux Plugin
# Install Flash Player

[ "$INSTALLFLASH" = "1" ] && {
	section $MSG_INSTALLING_FLASH
		cd "$BASEDIR/tmp/"

	subsection $MSG_EXTRACTING_FILES
		cabextract -q -d "$BASEDIR/tmp/" "$DOWNLOADDIR/swflash.cab" &> /dev/null
		FLASHOCX=$(echo $BASEDIR/tmp/*.ocx | sed -e "s/.*\///")
	
	subsection $MSG_INSTALLING_FLASH_ON ie6
		cp swflash.inf "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$INF/"
		wine rundll32 setupapi.dll,InstallHinfSection DefaultInstall 128 ./swflash.inf &> /dev/null
		register_dll "C:\\Windows\\System\\Macromed\\Flash\\$FLASHOCX"
		wineboot &> /dev/null
		
	clean_tmp
	ok
}
