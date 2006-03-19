#!/bin/bash
# IEs 4 Linux Plugin
# Install Flash Player

print_section Installing Flash Player 8
print_subsection Preparing installation

cd "$BASEDIR/tmp/"

# Copy Flash files
cabextract -q -d "$BASEDIR/tmp/" "$DOWNLOADDIR/swflash.cab" &> /dev/null
FLASHOCX=$BASEDIR/tmp/*.ocx

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

# Function that installs Flash Player on a IE
install_flash_player() {
	set_wine_prefix "$BASEDIR/$1/"
	mkdir -p "$BASEDIR/$1/$DRIVEC/$WINDOWS/$SYSTEM/Macromed/Flash/"
	cp GetFlash.exe $FLASHOCX "$BASEDIR/$1/$DRIVEC/$WINDOWS/$SYSTEM/Macromed/Flash/"
	add_registry "$BASEDIR/tmp/add.reg"
	register_dll "C:\\Windows\\System\\Macromed\\Flash\\$FLASHOCX"
}

# Install Flash where we need
if [ "$INSTALLIE6" = "1" ]; then
	print_subsection Installing flash on ie6
	install_flash_player ie6
fi
if [ "$INSTALLIE55" = "1" ]; then
	print_subsection Installing flash on ie55
	install_flash_player ie55
fi
if [ "$INSTALLIE5" = "1" ]; then
	print_subsection Installing flash on ie5
	install_flash_player ie5
fi

clean_tmp
print_ok
