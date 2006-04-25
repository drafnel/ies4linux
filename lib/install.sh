# IEs 4 Linux
# Developed by: Sergio Luis Lopes Junior <slopes at gmail dot com>
# Project site: http://tatanka.com.br/ies4linux
# Released under the GNU GPL. See LICENSE for more information
#
# install.sh Perform all three ies installations

[ "$INSTALLIE6"   = "1" ] &&  {
	section Installing ie6
	
	subsection Initializing
		DIR="$DOWNLOADDIR/ie6/$IE6_LOCALE/"
		set_wine_prefix "$BASEDIR/ie6/"
		cd "$BASEDIR/tmp"
		rm -rf "$BASEDIR/ie6"

	subsection Creating Wine Prefix
		wineprefixcreate &> /dev/null || exit
	
		# maybe reg files don't appear and we have to wait
		# is this a wine bug?? it sounds so crazy... if anyone have any idea please tell me
		while ! ls "$BASEDIR/ie6" | grep system.reg &> /dev/null ; do 
			sleep 1
		done
	
		# Discover Wine folders
		DRIVEC=drive_c
		WINDOWS=Windows
		SYSTEM=System
		FONTS=Fonts
		INF=Inf
		if [ -d "$BASEDIR/ie6/fake_windows" ]; then DRIVEC=fake_windows; fi
		if [ -d "$BASEDIR/ie6/$DRIVEC/windows" ]; then WINDOWS=windows; fi
		if [ -d "$BASEDIR/ie6/$DRIVEC/$WINDOWS/system" ]; then SYSTEM=system; fi
		if [ -d "$BASEDIR/ie6/$DRIVEC/$WINDOWS/fonts" ]; then FONTS=fonts; fi
		if [ -d "$BASEDIR/ie6/$DRIVEC/$WINDOWS/inf" ]; then INF=inf;fi
		export DRIVEC WINDOWS SYSTEM FONTS INF

	subsection Extracting CAB files
		cabextract -q -L "$DIR"/{ADVAUTH,CRLUPD,IEDOM,IE_S*,SCR56EN,SETUPW95,VGX}.CAB &> /dev/null || error Error
		cabextract -q -L ie_1.cab &> /dev/null || error Error
		rm -f *cab *hlp regsvr32.exe setup*
	
	subsection Installing IE6
		mv *.inf "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$INF/"
		mv cscript.exe "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$COMMAND/"
		mv wscript.exe "$BASEDIR/ie6/$DRIVEC/$WINDOWS/"
		
		mv sch128c.dll  "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$SYSTEM/schannel.dll"
		mkdir -p "$BASEDIR/ie6/$DRIVEC/Program Files/Internet Explorer"
		mv iexplore.exe "$BASEDIR/ie6/$DRIVEC/Program Files/Internet Explorer/IEXPLORE.EXE"
		
		mkdir -p "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$SYSTEM/sfp/ie/"
		mv vgx.cat "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$SYSTEM/sfp/ie/"
		mv * "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$SYSTEM/"
	
	subsection Installing TTF Fonts
		cabextract -q -L -F "*TTF" "$DIR"/FONT*CAB  &> /dev/null
		mv *ttf "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$FONTS/"

	subsection Installing RICHED20
		cabextract -q -F ver1200.exe "$DOWNLOADDIR/249973USA8.exe" || error Error
		cabextract -q -L "$BASEDIR/tmp/ver1200.exe" || error Error
		mv riched20.120 "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$SYSTEM/riched20.dll"
		mv riched32.dll usp10.dll "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$SYSTEM/"
	
	subsection Installing ActiveX MFC40
		cabextract -q "$DOWNLOADDIR/mfc40.cab" &> /dev/null
		cabextract -q -L mfc40.exe
		mv mfc40.dll msvcrt40.dll olepro32.dll "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$SYSTEM/"
	
	subsection Installing DCOM98
		cabextract -q -d "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$SYSTEM/" "$DOWNLOADDIR/DCOM98.EXE" || error Error
		mv "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$SYSTEM/rpcltscm.dll" "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$SYSTEM/rpcltspx.dll"
		mv "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$SYSTEM/dcom98.inf" "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$INF/"

	subsection Installing registry
		cp "$IES4LINUX"/winereg/model.system.reg "$BASEDIR"/ie6/system.reg
		cp "$IES4LINUX"/winereg/model.user.reg "$BASEDIR"/ie6/user.reg
	
	subsection Finalizing
		cp "$IES4LINUX/lib/ie_wine.svg" "$BASEDIR/ie_wine.svg"
		createShortcuts ie6 6.0
		chmod u+rwx -R "$BASEDIR/ie6"
		clean_tmp
	
	ok
}

[ "$INSTALLIE55"   = "1" ] &&  {
	section Installing ie55
	subsection Copying ie6 installation
		rm -rf "$BASEDIR/ie55"
		cp -r "$BASEDIR"/ie6 "$BASEDIR"/ie55
		DIR="$BASEDIR/ie55/$DRIVEC/$WINDOWS/$SYSTEM"
		rm "$DIR"/{browseui,dispex,dxtmsft,dxtrans,inetcpl,inetcplc,jscript,mshtml,mshtmled,mshtmler,shdocvw,urlmon}.*
	
	subsection Extracting specific files
		unzip -qq "$DOWNLOADDIR/ie55sp2_9x.zip"
		mv IE55SP2_9x/*{DLL,TLB,CPL} "$BASEDIR/ie55/$DRIVEC/$WINDOWS/$SYSTEM/"
		mv IE55SP2_9x/IEXPLORE.EXE "$BASEDIR/ie55/$DRIVEC/Program Files/Internet Explorer/IEXPLORE.EXE"
	
	subsection Installing registry
		cat "$IES4LINUX"/winereg/model.system.reg |
				sed -e "s/6.0000/5.5000/g" |
				sed -e "s/6.0.2800.1106/5.50.4807.2300/g" > "$BASEDIR"/ie55/system.reg
# 				sed -e "s/MSXML3.DLL/MSXML.DLL/g" > "$BASEDIR"/ie55/system.reg
		cp "$IES4LINUX"/winereg/model.user.reg "$BASEDIR"/ie55/user.reg
	
	subsection Finalizing
		createShortcuts ie55 5.5
		chmod u+rwx -R "$BASEDIR/ie55"
		clean_tmp
	
	ok
}

[ "$INSTALLIE5"   = "1" ] &&  {
	section Installing ie5
	subsection Copying ie6 installation
		rm -rf "$BASEDIR/ie5"
		cp -r "$BASEDIR"/ie6 "$BASEDIR"/ie5
		DIR="$BASEDIR/ie5/$DRIVEC/$WINDOWS/$SYSTEM"
		rm "$DIR"/{browseui,dispex,dxtmsft,dxtrans,inetcpl,inetcplc,jscript,mshtml,mshtmled,mshtmler,shdocvw,urlmon}.*
	
	subsection Extracting specific files
		unzip -qq "$DOWNLOADDIR/ie501sp2_9x.zip"
		mv IE501SP2_9x/*{DLL,TLB,CPL} "$BASEDIR/ie5/$DRIVEC/$WINDOWS/$SYSTEM/"
		mv IE501SP2_9x/IEXPLORE.EXE "$BASEDIR/ie5/$DRIVEC/Program Files/Internet Explorer/IEXPLORE.EXE"
	
	subsection Installing registry
		cat "$IES4LINUX"/winereg/model.system.reg |
				sed -e "s/6.0000/5.0002/g" |
				sed -e "s/6.0.2800.1106/5.00.2614.3500/g" > "$BASEDIR"/ie5/system.reg
# 				sed -e "s/MSXML3.DLL/MSXML.DLL/g" > "$BASEDIR"/ie5/system.reg
		cp "$IES4LINUX"/winereg/model.user.reg "$BASEDIR"/ie5/user.reg
	
	subsection Finalizing
		createShortcuts ie5 5.0
		chmod u+rwx -R "$BASEDIR/ie5"
		clean_tmp

	ok
}
