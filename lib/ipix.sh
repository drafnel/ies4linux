#!/bin/bash
# IEs 4 Linux Plugin
# Install IPIX Plugin

print_section Installing IPIX Plugin

cabextract -q -d $BASEDIR/tmp/ $DOWNLOADDIR/ipixx.cab &> /dev/null

install_ipix() {
	set_wine_prefix $BASEDIR/$1/
	cp IPIXX.ocx IPX32d56.dll mm32dcmp.dll $BASEDIR/$1/$DRIVEC/$WINDOWS/$SYSTEM/
	cp IPIXX.inf  $BASEDIR/$1/$DRIVEC/$WINDOWS/$INF/ 
	register_dll "C:\\Windows\\System\\IPIXX.ocx"
}

if [ "$INSTALLIE6" = "1" ]; then
	print_subsection Installing ipix on ie6
	install_ipix ie6
fi
if [ "$INSTALLIE55" = "1" ]; then
	print_subsection Installing ipix on ie55
	install_ipix ie55
fi
if [ "$INSTALLIE5" = "1" ]; then
	print_subsection Installing ipix on ie5
	install_ipix ie5
fi

clean_tmp
print_ok
