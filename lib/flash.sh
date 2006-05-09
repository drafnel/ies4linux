# IEs 4 Linux Plugin
# Install Flash Player

[ "$INSTALLFLASH" = "1" ] && {
	section $MSG_INSTALLING_FLASH
		cd "$BASEDIR/tmp/"

	subsection $MSG_EXTRACTING_FILES
		cabextract -q -d "$BASEDIR/tmp/" "$DOWNLOADDIR/swflash.cab" &> /dev/null
		FLASHOCX=$(echo $BASEDIR/tmp/*.ocx | sed -e "s/.*\///")

	subsection $MSG_PROCESSING_INF
		# Create add.reg
		sed -n -e 's/^\[/;\[/g;/^;\[SW.AddReg\]/,/^;\[/p;' swflash.inf > add.reg2
		sed '/^;/ d;/^\s/ d' add.reg2 > add.reg
		
		strings=` sed -n -e 's/\s//g;s/^\[/;\[/g;/^;\[strings\]/,/^;\[/p;/^;/d;/^\s/d' swflash.inf `
		for string in $strings; do
			key=` echo $string | awk -F '=' '/^[^;]/ {print $1}' ` 
			value=` echo $string | awk -F '"' '/^[^;]/ {print $2}' | sed -e 's/\//BARRA/g '`
		
			sed -e "s/%${key}%/${value}/g;s/BARRA/\//g" add.reg > add.reg2
			mv add.reg2 add.reg
		done
	
	subsection $MSG_INSTALLING_FLASH_ON ie6
		mkdir -p "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$SYSTEM/Macromed/Flash/"
		cp GetFlash.exe $FLASHOCX "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$SYSTEM/Macromed/Flash/"
		add_registry "$BASEDIR/tmp/add.reg"
		register_dll "C:\\Windows\\System\\Macromed\\Flash\\$FLASHOCX"
		wineserver -k
		
	clean_tmp
	ok
}
