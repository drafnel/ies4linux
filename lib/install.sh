# IEs 4 Linux
# Developed by: Sergio Luis Lopes Junior <slopes at gmail dot com>
# Project site: http://tatanka.com.br/ies4linux
# Released under the GNU GPL. See LICENSE for more information
# install.sh Perform all three ies installations

[ "$INSTALLIE6"   = "1" ] &&  {
	section $MSG_INSTALLING IE 6
	
	subsection $MSG_INITIALIZING
		DIR="$DOWNLOADDIR/ie6/$IE6_LOCALE/"
		set_wine_prefix "$BASEDIR/ie6/"
		rm -rf "$BASEDIR/ie6"

	subsection $MSG_CREATING_PREFIX
		wineprefixcreate &> /dev/null || exit
	
		# Discover Wine folders
		DRIVEC=drive_c
		WINDOWS=Windows
		SYSTEM=system
		SYSTEM32=System32
		FONTS=Fonts
		INF=Inf
		if [ -d "$BASEDIR/ie6/fake_windows" ]; then DRIVEC=fake_windows; fi
		if [ -d "$BASEDIR/ie6/$DRIVEC/windows" ]; then WINDOWS=windows; fi
		if [ -d "$BASEDIR/ie6/$DRIVEC/$WINDOWS/system32" ]; then SYSTEM32=system32; fi
		if [ -d "$BASEDIR/ie6/$DRIVEC/$WINDOWS/fonts" ]; then FONTS=fonts; fi
		if [ -d "$BASEDIR/ie6/$DRIVEC/$WINDOWS/inf" ]; then INF=inf;fi
		export DRIVEC WINDOWS SYSTEM FONTS INF

		# symlinking system to system32
		rm -rf "$BASEDIR/ie6/$DRIVEC/$WINDOWS/"{S,s}ystem
		cd "$BASEDIR/ie6/$DRIVEC/$WINDOWS/"
		ln -s "$SYSTEM32" "system"

	subsection $MSG_EXTRACTING_CABS
		cd "$BASEDIR/tmp"
		cabextract -Lq "$DIR"/{ADVAUTH,CRLUPD,IEDOM,IE_S*,SCR56EN,SETUPW95,VGX}.CAB &> /dev/null || error Error
		cabextract -Lq ie_1.cab &> /dev/null || error Error
		rm -f *cab *hlp regsvr32.exe setup*
	
	subsection $MSG_INSTALLING IE 6
		mv *.inf "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$INF/"
		mv cscript.exe "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$COMMAND/"
		mv wscript.exe "$BASEDIR/ie6/$DRIVEC/$WINDOWS/"
		
		mv sch128c.dll  "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$SYSTEM/schannel.dll"
		mkdir -p "$BASEDIR/ie6/$DRIVEC/Program Files/Internet Explorer"
		mv iexplore.exe "$BASEDIR/ie6/$DRIVEC/Program Files/Internet Explorer/iexplore.exe"
		
		mkdir -p "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$SYSTEM/sfp/ie/"
		mv vgx.cat "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$SYSTEM/sfp/ie/"
		mv * "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$SYSTEM/"
	
	subsection $MSG_INSTALLING_FONTS
		cabextract -Lq -F "*TTF" "$DIR"/FONT*CAB  &> /dev/null
		mv *ttf "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$FONTS/"

	subsection $MSG_INSTALLING RICHED20
		cabextract -q -F ver1200.exe "$DOWNLOADDIR/249973USA8.exe" || error Error
		cabextract -Lq "$BASEDIR/tmp/ver1200.exe" || error Error
		mv riched20.120 "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$SYSTEM/riched20.dll"
		mv riched32.dll usp10.dll "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$SYSTEM/"
	
	subsection $MSG_INSTALLING ActiveX MFC40
		cabextract -q "$DOWNLOADDIR/mfc40.cab" &> /dev/null
		cabextract -Lq mfc40.exe
		mv mfc40.dll msvcrt40.dll olepro32.dll "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$SYSTEM/"
	
	subsection $MSG_INSTALLING DCOM98
		cabextract -Lq -d "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$SYSTEM/" "$DOWNLOADDIR/DCOM98.EXE" || error Error
		mv "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$SYSTEM/rpcltscm.dll" "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$SYSTEM/rpcltspx.dll"
		mv "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$SYSTEM/dcom98.inf" "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$INF/"

	subsection $MSG_INSTALLING_REGISTRY
		add_registry "$IES4LINUX"/winereg/ie6.reg
		wineserver -k		
	
	subsection $MSG_FINALIZING
		cp "$IES4LINUX/lib/ie_wine.svg" "$BASEDIR/ie_wine.svg"
		createShortcuts ie6 6.0
		chmod u+rwx -R "$BASEDIR/ie6"
		clean_tmp
	
	ok
}

source "$IES4LINUX/lib/flash.sh"

[ "$INSTALLIE55"   = "1" ] &&  {
	section $MSG_INSTALLING IE 5.5
		set_wine_prefix "$BASEDIR/ie55/"

	subsection $MSG_COPYING_IE6
		rm -rf "$BASEDIR/ie55"
		cp -r "$BASEDIR"/ie6 "$BASEDIR"/ie55
		DIR="$BASEDIR/ie55/$DRIVEC/$WINDOWS/$SYSTEM"
		rm "$DIR"/{browseui,dispex,dxtmsft,dxtrans,inetcpl,inetcplc,jscript,mshtml,mshtmled,mshtmler,shdocvw,urlmon}.*
	
	subsection $MSG_EXTRACTING_FILES
		cd "$BASEDIR/tmp/"
		unzip -Lqq "$DOWNLOADDIR"/ie55sp2_9x.zip
		mv ie55sp2_9x/*{dll,tlb,cpl} "$BASEDIR/ie55/$DRIVEC/$WINDOWS/$SYSTEM/"
		mv ie55sp2_9x/iexplore.exe "$BASEDIR/ie55/$DRIVEC/Program Files/Internet Explorer/iexplore.exe"
	
	subsection $MSG_INSTALLING_REGISTRY
		add_registry "$IES4LINUX"/winereg/ie55.reg

	subsection $MSG_FINALIZING
		createShortcuts ie55 5.5
		chmod u+rwx -R "$BASEDIR/ie55"
		clean_tmp
	
	ok
}

[ "$INSTALLIE5"   = "1" ] &&  {
	section $MSG_INSTALLING IE 5.0
		set_wine_prefix "$BASEDIR/ie5/"

	subsection $MSG_COPYING_IE6
		rm -rf "$BASEDIR/ie5"
		cp -r "$BASEDIR"/ie6 "$BASEDIR"/ie5
		DIR="$BASEDIR/ie5/$DRIVEC/$WINDOWS/$SYSTEM"
		rm "$DIR"/{browseui,dispex,dxtmsft,dxtrans,inetcpl,inetcplc,jscript,mshtml,mshtmled,mshtmler,shdocvw,urlmon}.*
	
	subsection $MSG_EXTRACTING_FILES
		cd "$BASEDIR/tmp/"
		unzip -Lqq "$DOWNLOADDIR/ie501sp2_9x.zip"
		mv ie501sp2_9x/*{dll,tlb,cpl} "$BASEDIR/ie5/$DRIVEC/$WINDOWS/$SYSTEM/"
		mv ie501sp2_9x/iexplore.exe "$BASEDIR/ie5/$DRIVEC/Program Files/Internet Explorer/iexplore.exe"

	
	subsection $MSG_INSTALLING_REGISTRY
		add_registry "$IES4LINUX"/winereg/ie5.reg
	
	subsection $MSG_FINALIZING
		createShortcuts ie5 5.0
		chmod u+rwx -R "$BASEDIR/ie5"
		clean_tmp

	ok
}
