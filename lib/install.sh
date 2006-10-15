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
		wineprefixcreate &> /dev/null || {
			wineprefixcreate
			error $MSG_ERROR_NO_WINEPREFIXCREATE
		}
	
		# Discover Wine folders
		DRIVEC=drive_c
		WINDOWS=Windows
		SYSTEM=system
		SYSTEM32=System32
		FONTS=Fonts
		INF=Inf
		COMMAND=Command
		if [ -d "$BASEDIR/ie6/fake_windows" ]; then DRIVEC=fake_windows; fi
		if [ -d "$BASEDIR/ie6/$DRIVEC/windows" ]; then WINDOWS=windows; fi
		if [ -d "$BASEDIR/ie6/$DRIVEC/$WINDOWS/system32" ]; then SYSTEM32=system32; fi
		if [ -d "$BASEDIR/ie6/$DRIVEC/$WINDOWS/fonts" ]; then FONTS=fonts; fi
		if [ -d "$BASEDIR/ie6/$DRIVEC/$WINDOWS/inf" ]; then INF=inf;fi
		if [ -d "$BASEDIR/ie6/$DRIVEC/$WINDOWS/command" ]; then COMMAND=command;fi 
		export DRIVEC WINDOWS SYSTEM FONTS INF COMMAND

		# symlinking system to system32
		if [ -d "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$SYSTEM32" ]; then 
			rm -rf "$BASEDIR/ie6/$DRIVEC/$WINDOWS/"{S,s}ystem
			cd "$BASEDIR/ie6/$DRIVEC/$WINDOWS/"
			ln -s "$SYSTEM32" "system"
		fi

	subsection $MSG_EXTRACTING_CABS
		cd "$BASEDIR/tmp"
		extractCABs "$DIR"/{ADVAUTH,CRLUPD,HHUPD,IEDOM,IE_EXTRA,IE_S*,SCR56EN,SETUPW95,VGX}.CAB
		extractCABs ie_1.cab
		rm -f *cab regsvr32.exe setup*

	subsection $MSG_PROCESSING_INF
		for i in *.inf; do
			wine rundll32 setupapi.dll,InstallHinfSection DefaultInstall 128 ./$i &> /dev/null
		done
		rm *hlp
	
	subsection $MSG_INSTALLING IE 6
		mv *.inf "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$INF/"
		mv cscript.exe "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$COMMAND/"
		mv wscript.exe "$BASEDIR/ie6/$DRIVEC/$WINDOWS/"
		
		mv sch128c.dll  "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$SYSTEM/schannel.dll"
		mkdir -p "$BASEDIR/ie6/$DRIVEC/Program Files/Internet Explorer"
		mv iexplore.exe "$BASEDIR/ie6/$DRIVEC/Program Files/Internet Explorer/iexplore.exe"
		
		mkdir -p "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$SYSTEM/sfp/ie/"
		mv vgx.cat "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$SYSTEM/sfp/ie/"
		mv -f * "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$SYSTEM/"
	
	subsection $MSG_INSTALLING_FONTS
		extractCABs -F "*TTF" "$DIR"/FONT*CAB
		mv *ttf "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$FONTS/"

	subsection $MSG_INSTALLING RICHED20
		extractCABs -F ver1200.exe "$DOWNLOADDIR/249973USA8.exe"
		extractCABs "$BASEDIR/tmp/ver1200.exe"
		wine rundll32 setupapi.dll,InstallHinfSection DefaultInstall 128 ./1200up.inf &> /dev/null
		mv *.inf "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$INF/"
		rm -f *
	
	subsection $MSG_INSTALLING ActiveX MFC40
		extractCABs "$DOWNLOADDIR/mfc40.cab"
		extractCABs mfc40.exe
		wine rundll32 setupapi.dll,InstallHinfSection DefaultInstall 128 ./mfc40.inf &> /dev/null
		mv *.inf "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$INF/"
		rm -f *
	
	subsection $MSG_INSTALLING DCOM98
		extractCABs -d "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$SYSTEM/" "$DOWNLOADDIR/DCOM98.EXE"
		wine rundll32 setupapi.dll,InstallHinfSection DefaultInstall 128 ./dcom98.inf &> /dev/null
		rm -f *

	subsection $MSG_INSTALLING_REGISTRY
		add_registry "$IES4LINUX"/winereg/ie6.reg
		add_registry "$IES4LINUX"/winereg/homepage.reg
	
	subsection $MSG_FINALIZING
		wineboot &> /dev/null
		touch "$BASEDIR/ie6/.firstrun"
		createShortcuts ie6 6.0
		chmod -R u+rwx "$BASEDIR/ie6"
		clean_tmp
	
	ok
}

source "$IES4LINUX/lib/flash.sh"

[ "$INSTALLIE55"   = "1" ] &&  {
	section $MSG_INSTALLING IE 5.5
		kill_wineserver
		set_wine_prefix "$BASEDIR/ie55/"

	subsection $MSG_COPYING_IE6
		rm -rf "$BASEDIR/ie55"
		cp -PR "$BASEDIR"/ie6 "$BASEDIR"/ie55
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
		touch "$BASEDIR/ie6/.firstrun"
		createShortcuts ie55 5.5
		chmod -R u+rwx "$BASEDIR/ie55"
		clean_tmp
	
	ok
}

[ "$INSTALLIE5"   = "1" ] &&  {
	section $MSG_INSTALLING IE 5.0
		kill_wineserver
		set_wine_prefix "$BASEDIR/ie5/"

	subsection $MSG_COPYING_IE6
		rm -rf "$BASEDIR/ie5"
		cp -PR "$BASEDIR"/ie6 "$BASEDIR"/ie5
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
		touch "$BASEDIR/ie6/.firstrun"
		createShortcuts ie5 5.0
		chmod -R u+rwx "$BASEDIR/ie5"
		clean_tmp

	ok
}

# Some Easter Eggs
[ "$INSTALLIE1"   = "1" ] &&  {
	section $MSG_INSTALLING IE 1.0
		kill_wineserver
		rm -rf "$BASEDIR/ie1"
		mkdir -p "$BASEDIR/ie1/$DRIVEC/Program Files/Internet Explorer/History"
		mkdir -p "$BASEDIR/ie1/$DRIVEC/Program Files/Internet Explorer/dcache"

	subsection $MSG_CREATING_PREFIX
		set_wine_prefix "$BASEDIR/ie1/"
		wineprefixcreate &> /dev/null

	subsection $MSG_EXTRACTING_CABS
		cd "$BASEDIR/tmp"
		extractCABs "$DOWNLOADDIR"/Msie10.exe
		extractCABs iexplore.cab -d "$BASEDIR/ie1/$DRIVEC/Program Files/Internet Explorer/"
		
	subsection $MSG_INSTALLING_REGISTRY
		add_registry "$IES4LINUX"/winereg/.ie1.reg
		
	subsection $MSG_FINALIZING
		createShortcuts ie1 1.0
		chmod -R u+rwx "$BASEDIR/ie1"
		clean_tmp
	
	ok
}
[ "$INSTALLIE15"   = "1" ] &&  {
	section $MSG_INSTALLING IE 1.5
		kill_wineserver
		rm -rf "$BASEDIR/ie15"
		mkdir -p "$BASEDIR/ie15/$DRIVEC/Program Files/Internet Explorer/History"

	subsection $MSG_CREATING_PREFIX
		set_wine_prefix "$BASEDIR/ie15/"
		wineprefixcreate &> /dev/null

	subsection $MSG_EXTRACTING_CABS
		cd "$BASEDIR/tmp"
		extractCABs "$DOWNLOADDIR"/IE15I386.EXE -d "$BASEDIR/ie15/$DRIVEC/Program Files/Internet Explorer/"
		
	subsection $MSG_INSTALLING_REGISTRY
		add_registry "$IES4LINUX"/winereg/.ie1.reg
		
	subsection $MSG_FINALIZING
		createShortcuts ie15 1.5
		chmod -R u+rwx "$BASEDIR/ie15"
		clean_tmp
	
	ok
}
[ "$INSTALLIE2"   = "1" ] &&  {
	section $MSG_INSTALLING IE 2.0
		kill_wineserver
		rm -rf "$BASEDIR/ie2"
		mkdir -p "$BASEDIR/ie2/$DRIVEC/Program Files/Internet Explorer/History"

	subsection $MSG_CREATING_PREFIX
		set_wine_prefix "$BASEDIR/ie2/"
		wineprefixcreate &> /dev/null

	subsection $MSG_EXTRACTING_CABS
		cd "$BASEDIR/tmp"
		extractCABs "$DOWNLOADDIR"/msie20.exe
		extractCABs iexplore.cab -d "$BASEDIR/ie2/$DRIVEC/Program Files/Internet Explorer/"
		
	subsection $MSG_INSTALLING_REGISTRY
		add_registry "$IES4LINUX"/winereg/.ie1.reg
		
	subsection $MSG_FINALIZING
		createShortcuts ie2 2.0
		chmod -R u+rwx "$BASEDIR/ie2"
		clean_tmp
	
	ok
}
