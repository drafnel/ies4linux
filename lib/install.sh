#!/usr/bin/env bash
#
# IEs 4 Linux
# Developed by: Sergio Luis Lopes Junior <slopes at gmail dot com>
# Project site: http://tatanka.com.br/ies4linux
# Released under the GNU GPL. See LICENSE for more information
#
# install.sh
#	Perform all installations. This is IEs4Linux kernel.
#
#	At this point, all environment should be set, all variables should have
#	the final correct value
#
# This script does:
#	- Show user what we will do
#	- Prepare needed folders
#	- Download all files
#	- Install IE 6 SP1
#	- Install Adobe Flash Player 9
#	- Install IE 5.5
#	- Install IE 5.01
#	- Install IE 7 (alpha procedure)
#	- Install IE 1.0
#	- Install IE 1.5
#	- Install IE 2.0
#	- Show user how to run installed IEs

# Inialitazion module #########################################################

# See if user chose at least one IE
if [ "$((INSTALLIE6+INSTALLIE55+INSTALLIE5+INSTALLIE7+INSTALLIE1+INSTALLIE2+INSTALLIE15))" = "0" ]; then
	exit 0
fi

# Show what we will do
section "$(I) will:"
	IES=""
	[ "$INSTALLIE6" = "1" ] && IES="6.0"
	[ "$INSTALLIE55" = "1" ] && IES="$IES, 5.5"
	[ "$INSTALLIE5"  = "1" ] && IES="$IES, 5.01"
	[ "$INSTALLIE1"  = "1" ] && IES="$IES, 1.0"
	[ "$INSTALLIE15"  = "1" ] && IES="$IES, 1.5"
	[ "$INSTALLIE2"  = "1" ] && IES="$IES, 2.0"
	[ "$INSTALLIE7"  = "1" ] && IES="$IES, 7.0"
	subsection - $MSG_OPTION_INSTALL_IES $IES
	subsection - $MSG_OPTION_LOCALE	 $IE6_LOCALE

	[ "$INSTALLFLASH" = "1" ] && subsection - $MSG_OPTION_INSTALL_FLASH
	[ "$INSTALLCOREFONTS" = "1" ] && subsection - Install MS Core Fonts
	[ "$CREATE_ICON" = "1"  ] && subsection - $MSG_OPTION_CREATE_ICONS
	subsection - $MSG_OPTION_BASEDIR $BASEDIR
	#subsection - $MSG_OPTION_DOWNLOADDIR $DOWNLOADDIR
ok

# Prepare folders
mkdir -p "$BINDIR"       || error $MSG_ERROR_CREATE_FOLDER $BINDIR
mkdir -p "$BASEDIR/tmp/" || error $MSG_ERROR_CREATE_FOLDER $BASEDIR
mkdir -p "$DOWNLOADDIR"  || error $MSG_ERROR_CREATE_FOLDER $DOWNLOADDIR
cp "$IES4LINUX/lib/ies4linux.png" "$IES4LINUX/lib/ies4linux.svg" "$BASEDIR"

# Download module #############################################################

# Download all files first
section $MSG_DOWNLOADING

	# Basic downloads for IE6
	URL_IE6_CABS=http://download.microsoft.com/download/ie6sp1/finrel/6_sp1/W98NT42KMeXP
	IE6_CABS="ADVAUTH CRLUPD HHUPD IEDOM IE_EXTRA IE_S1 IE_S2 IE_S5 IE_S4 IE_S3 IE_S6 SETUPW95 FONTCORE FONTSUP VGX"
	# other possible cabs BRANDING GSETUP95 IEEXINST README SWFLASH (SCR56EN)

	# All MS downloads
	subsection $MSG_DOWNLOADING_FROM microsoft.com:

	download http://download.microsoft.com/download/d/1/3/d13cd456-f0cf-4fb2-a17f-20afc79f8a51/DCOM98.EXE
	download http://activex.microsoft.com/controls/vc/mfc42.cab
	download http://download.microsoft.com/download/win98SE/Update/5072/W98/EN-US/249973USA8.exe

	mkdir -p "$DOWNLOADDIR/ie6/EN-US"
	mkdir -p "$DOWNLOADDIR/ie6/$IE6_LOCALE"

	for cab in $IE6_CABS; do
		download "$URL_IE6_CABS/$IE6_LOCALE/$cab.CAB"
	done

	# SCR56EN is always downloaded from EN-US
	download "$URL_IE6_CABS/EN-US/SCR56EN.CAB"
	
        [ "$INSTALLIE7" = "1" ] && {
		download "http://download.microsoft.com/download/3/8/8/38889DC1-848C-4BF2-8335-86C573AD86D9/IE7-WindowsXP-x86-enu.exe"
		#download "http://download.microsoft.com/download/whistler/Patch/q305601/WXP/EN-US/Q305601_WxP_SP1_x86_ENU.exe"
	}

	# All Evolt downloads
	if [ "$((INSTALLIE55+INSTALLIE5+INSTALLIE1+INSTALLIE2+INSTALLIE15))" -gt "0" ]; then
		echo
		subsection "Downloading from Evolt Browser Archive:"
	fi
        [ "$INSTALLIE55" = "1" ] && downloadEvolt ie/32bit/standalone/ie55sp2_9x.zip
        [ "$INSTALLIE5"  = "1" ] && downloadEvolt ie/32bit/standalone/ie501sp2_9x.zip
        [ "$INSTALLIE1"  = "1" ] && downloadEvolt ie/32bit/1.0/Msie10.exe
        [ "$INSTALLIE15" = "1" ] && downloadEvolt ie/32bit/1.5/IE15I386.EXE
        [ "$INSTALLIE2"  = "1" ] && downloadEvolt ie/32bit/2.0/msie20.exe
        [ "$INSTALLIE3"  = "1" ] && downloadEvolt ie/32bit/3.02/win95typical/msie302r.exe

        # Flash
        [ "$INSTALLFLASH" = "1" ] && {
        	echo
        	subsection "Downloading from macromedia.com:"
                download "http://download.macromedia.com/get/shockwave/cabs/flash/swflash.cab" || error Cannot download flash
        }

	# Core fonts
	[ "$INSTALLCOREFONTS" = "1" ] && {
        	echo
        	subsection "Downloading from sourceforge.net"

		export COREFONTS="andale32.exe arial32.exe arialb32.exe comic32.exe courie32.exe georgi32.exe impact32.exe times32.exe trebuc32.exe verdan32.exe wd97vwr32.exe webdin32.exe"
		for font in $COREFONTS; do
			download "http://internap.dl.sourceforge.net/sourceforge/corefonts/$font"
		done
	}
ok

# Someone needs to to something before we continue???
pre_install

# IE6 Installation module #####################################################

# IE6 Installation Process
if [ "$INSTALLIE6" = "1" ]; then
	section $MSG_INSTALLING IE 6
else
	section $MSG_INSTALLING IE
fi

subsection $MSG_INITIALIZING
	clean_tmp
	set_wine_prefix "$BASEDIR/ie6/"
	rm -rf "$BASEDIR/ie6"

subsection $MSG_CREATING_PREFIX
	create_wine_prefix

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
	clean_tmp
	cd "$BASEDIR/tmp"
	extractCABs "$DOWNLOADDIR/ie6/$IE6_LOCALE"/{ADVAUTH,CRLUPD,HHUPD,IEDOM,IE_EXTRA,IE_S*,SETUPW95,VGX}.CAB
	extractCABs "$DOWNLOADDIR/ie6/EN-US/SCR56EN.CAB"
	extractCABs ie_1.cab
	rm -f *cab regsvr32.exe setup*

subsection $MSG_INSTALLING IE 6
	mv cscript.exe "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$COMMAND/"
	mv wscript.exe "$BASEDIR/ie6/$DRIVEC/$WINDOWS/"
	
	mv sch128c.dll  "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$SYSTEM/schannel.dll"
	mkdir -p "$BASEDIR/ie6/$DRIVEC/Program Files/Internet Explorer"
	mv iexplore.exe "$BASEDIR/ie6/$DRIVEC/Program Files/Internet Explorer/iexplore.exe"
	
	mkdir -p "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$SYSTEM/sfp/ie/"
	mv vgx.cat "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$SYSTEM/sfp/ie/"
	mv -f * "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$SYSTEM/"
	clean_tmp

subsection $MSG_INSTALLING DCOM98
	extractCABs -d "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$SYSTEM/" "$DOWNLOADDIR/DCOM98.EXE"
	mv "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$SYSTEM/rpcltscm.dll" "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$SYSTEM/rpcltspx.dll"
	mv "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$SYSTEM/dcom98.inf" "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$INF/"

#	This is very slow and do not add anything useful
#
# 	subsection $MSG_PROCESSING_INF
# 		mv *.inf "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$INF/"
# 		cd "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$INF/"
# 
# 		for i in *.inf; do
# 			subsubsection $i
# 			run_inf_file ./$i
# 		done
# 		cd "$BASEDIR/tmp"
#
# 	subsection $MSG_REGISTERING_DLLS	
# 		cd "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$SYSTEM"
# 		for dll in *.dll; do
# 			[ $dll = "itss.dll" ] && continue
# 			register_dll "C:\\Windows\\System\\$dll"
# 		done

subsection $MSG_INSTALLING_FONTS
	clean_tmp
	cd "$BASEDIR/tmp"
	extractCABs -F "*TTF" "$DOWNLOADDIR/ie6/$IE6_LOCALE/"/FONT*CAB
	mv *ttf "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$FONTS/"
	clean_tmp

[ "$INSTALLCOREFONTS" = "1" ] && {
subsection Installing Core Fonts
	for font in $COREFONTS; do
		extractCABs -F "*TTF" "$DOWNLOADDIR/$font"
	done
	extractCABs -F "*cab" "$DOWNLOADDIR/wd97vwr32.exe"
	extractCABs -F "*TTF" "$BASEDIR/tmp/viewer1.cab"
	chmod u+w "tahoma.ttf"
	mv *ttf "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$FONTS/"
}

subsection $MSG_INSTALLING ActiveX MFC42
	extractCABs "$DOWNLOADDIR/mfc42.cab"
	extractCABs mfc42.exe
	mv *.inf "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$INF/"
	mv {olepro32,msvcrt,mfc42}.dll "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$SYSTEM/"
	register_dll "C:\\Windows\\System\\olepro32.dll"
	register_dll "C:\\Windows\\System\\mfc42.dll"
	clean_tmp

subsection $MSG_INSTALLING RICHED20
	extractCABs -F ver1200.exe "$DOWNLOADDIR/249973USA8.exe"
	extractCABs "$BASEDIR/tmp/ver1200.exe"
	mv riched20.120 "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$SYSTEM/riched20.dll"
	mv riched32.dll usp10.dll "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$SYSTEM/"
	clean_tmp

subsection $MSG_INSTALLING_REGISTRY
	add_registry "$IES4LINUX"/winereg/ie6.reg
	install_home_page ie6

subsection $MSG_FINALIZING
	reboot_wine
	[ "$INSTALLIE6" = "1" ] &&  createShortcuts ie6 6.0
	chmod -R u+rwx "$BASEDIR/ie6"

ok

# Flash Installation module ###################################################

[ "$INSTALLFLASH" = "1" ] && {
	section $MSG_INSTALLING_FLASH
		clean_tmp
		cd "$BASEDIR/tmp/"

	subsection $MSG_EXTRACTING_FILES
		extractCABs "$DOWNLOADDIR/swflash.cab"
		FLASHOCX=$(echo $BASEDIR/tmp/*.ocx | sed -e "s/.*\///")
	
	subsection $MSG_INSTALLING_FLASH_ON ie6
		cp swflash.inf "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$INF/"
		run_inf_file ./swflash.inf
		register_dll "C:\\Windows\\System\\Macromed\\Flash\\$FLASHOCX"
		
	subsection $MSG_FINALIZING
		reboot_wine
		
	ok
}

# IE5.5 Installation module ###################################################

[ "$INSTALLIE55"   = "1" ] &&  {
	section $MSG_INSTALLING IE 5.5
		kill_wineserver
		set_wine_prefix "$BASEDIR/ie55/"
		clean_tmp

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
		install_home_page ie55

	subsection $MSG_FINALIZING
		createShortcuts ie55 5.5
		chmod -R u+rwx "$BASEDIR/ie55"
	
	ok
}

# IE5.0 Installation module ###################################################

[ "$INSTALLIE5"   = "1" ] &&  {
	section $MSG_INSTALLING IE 5.0
		kill_wineserver
		set_wine_prefix "$BASEDIR/ie5/"
		clean_tmp

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
		install_home_page ie5
	
	subsection $MSG_FINALIZING
		createShortcuts ie5 5.0
		chmod -R u+rwx "$BASEDIR/ie5"

	ok
}

# IE7.0 Installation module ###################################################

# ATTENTION: IES4LINUX IE7 SUPPORT IS PRE-PRE-ALPHA!
# USE ONLY TO HELP ME TESTING THIS FEATURE
[ "$INSTALLIE7"   = "1" ] &&  {
	section "$MSG_INSTALLING IE 7 (beta)"
		kill_wineserver
		set_wine_prefix "$BASEDIR/ie7/"
		clean_tmp

		# HACK before copying ie6 let user configure proxy
		if [ "$HACK_IE7_PROXY" = "1" ]; then
			echo "  HACK: Configure your Proxy now and then close ie6"
			"$BASEDIR"/bin/ie6
			echo "  HACK: Proceeding with the installation"
		fi

	subsection $MSG_COPYING_IE6
		rm -rf "$BASEDIR/ie7"
		cp -PR "$BASEDIR"/ie6 "$BASEDIR"/ie7
	
	subsection $MSG_EXTRACTING_FILES
		cd "$BASEDIR/tmp/"

# 		this is to msvcrt
# 		extractCABs "$DOWNLOADDIR"/Q305601_WxP_SP1_x86_ENU.exe
# 		cp msvcrt.dll "$BASEDIR/ie7/$DRIVEC/$WINDOWS/$SYSTEM"
# 		clean_tmp

		extractCABs "$DOWNLOADDIR"/IE7-WindowsXP-x86-enu.exe
		
		cp wininet.dll iertutil.dll shlwapi.dll urlmon.dll jscript.dll vbscript.dll advpack.dll "$BASEDIR/ie7/$DRIVEC/$WINDOWS/$SYSTEM"
		cp mshtml.dll mshtml.tlb mshtmled.dll mshtmler.dll inetcpl.cpl "$BASEDIR/ie7/$DRIVEC/$WINDOWS/$SYSTEM"
		cp ieapfltr.dll mstime.dll ieencode.dll "$BASEDIR/ie7/$DRIVEC/$WINDOWS/$SYSTEM"

		cp dxtmsft.dll dxtrans.dll pngfilt.dll  ieframe.dll "$BASEDIR/ie7/$DRIVEC/$WINDOWS/$SYSTEM"
		cp ieproxy.dll ieui.dll jsproxy.dll vgx.dll imgutil.dll "$BASEDIR/ie7/$DRIVEC/$WINDOWS/$SYSTEM"
		
		register_dll "C:\\Windows\\System\\mshtml.dll"
		register_dll "C:\\Windows\\System\\mshtmled.dll"
		register_dll "C:\\Windows\\System\\mshtmler.dll"
		register_dll "C:\\Windows\\System\\dxtmsft.dll"
		register_dll "C:\\Windows\\System\\dxtrans.dll"
		register_dll "C:\\Windows\\System\\pngfilt.dll"
		
		# we can't register these dlls
		#register_dll "C:\\Windows\\System\\msvcrt.dll"
		#register_dll "C:\\Windows\\System\\imgutil.dll"
		#register_dll "C:\\Windows\\System\\jscript.dll"
		#register_dll "C:\\Windows\\System\\vbscript.dll"

		# don't use ie7 exe
		#cp iexplore.exe "$BASEDIR/ie7/$DRIVEC/Program Files/Internet Explorer/iexplore.exe"

		cd update
		extractCABs idndl.exe
		cp normaliz.dll idndl.dll "$BASEDIR/ie7/$DRIVEC/$WINDOWS/$SYSTEM"

		register_dll "C:\\Windows\\System\\normaliz.dll"
		register_dll "C:\\Windows\\System\\idndl.dll"

	subsection $MSG_INSTALLING_REGISTRY
		add_registry "$IES4LINUX"/winereg/ie7.reg
		install_home_page ie7
	
	subsection $MSG_FINALIZING
		reboot_wine
		touch "$BASEDIR/ie7/.firstrun"
		createShortcuts ie7 7.0
		chmod -R u+rwx "$BASEDIR/ie7"

	ok
}

# Easter eggs module ##########################################################

[ "$INSTALLIE1"   = "1" ] &&  {
	section $MSG_INSTALLING IE 1.0
		kill_wineserver
		rm -rf "$BASEDIR/ie1"
		mkdir -p "$BASEDIR/ie1/$DRIVEC/Program Files/Internet Explorer/History"
		mkdir -p "$BASEDIR/ie1/$DRIVEC/Program Files/Internet Explorer/dcache"

	subsection $MSG_CREATING_PREFIX
		set_wine_prefix "$BASEDIR/ie1/"
		wineprefixcreate &> /dev/null
		clean_tmp

	subsection $MSG_EXTRACTING_CABS
		cd "$BASEDIR/tmp"
		extractCABs "$DOWNLOADDIR"/Msie10.exe
		extractCABs iexplore.cab -d "$BASEDIR/ie1/$DRIVEC/Program Files/Internet Explorer/"
		
	subsection $MSG_INSTALLING_REGISTRY
		add_registry "$IES4LINUX"/winereg/.ie1.reg
		install_home_page ie1
		
	subsection $MSG_FINALIZING
		createShortcuts ie1 1.0
		chmod -R u+rwx "$BASEDIR/ie1"
	
	ok
}
[ "$INSTALLIE15"   = "1" ] &&  {
	section $MSG_INSTALLING IE 1.5
		kill_wineserver
		rm -rf "$BASEDIR/ie15"
		mkdir -p "$BASEDIR/ie15/$DRIVEC/Program Files/Internet Explorer/History"

	subsection $MSG_CREATING_PREFIX
		set_wine_prefix "$BASEDIR/ie15/"
		create_wine_prefix
		clean_tmp

	subsection $MSG_EXTRACTING_CABS
		cd "$BASEDIR/tmp"
		extractCABs "$DOWNLOADDIR"/IE15I386.EXE -d "$BASEDIR/ie15/$DRIVEC/Program Files/Internet Explorer/"
		
	subsection $MSG_INSTALLING_REGISTRY
		add_registry "$IES4LINUX"/winereg/.ie1.reg
		install_home_page ie15
		
	subsection $MSG_FINALIZING
		createShortcuts ie15 1.5
		chmod -R u+rwx "$BASEDIR/ie15"
	
	ok
}
[ "$INSTALLIE2"   = "1" ] &&  {
	section $MSG_INSTALLING IE 2.0
		kill_wineserver
		rm -rf "$BASEDIR/ie2"
		mkdir -p "$BASEDIR/ie2/$DRIVEC/Program Files/Internet Explorer/History"

	subsection $MSG_CREATING_PREFIX
		set_wine_prefix "$BASEDIR/ie2/"
		create_wine_prefix
		clean_tmp

	subsection $MSG_EXTRACTING_CABS
		cd "$BASEDIR/tmp"
		extractCABs "$DOWNLOADDIR"/msie20.exe
		extractCABs iexplore.cab -d "$BASEDIR/ie2/$DRIVEC/Program Files/Internet Explorer/"
		
	subsection $MSG_INSTALLING_REGISTRY
		add_registry "$IES4LINUX"/winereg/.ie1.reg
		install_home_page ie2
		
	subsection $MSG_FINALIZING
		createShortcuts ie2 2.0
		chmod -R u+rwx "$BASEDIR/ie2"
	
	ok
}

# After Installation module ###################################################

# Remove IE6 if user do not want it
if [ "$INSTALLIE6" = "0" ]; then
	rm -rf "$BASEDIR/ie6"
fi

# Post install
kill_wineserver
cd "$IES4LINUX" && rm -rf "$BASEDIR/tmp"
post_install

section "$(I) installations finished!"

# Show user how to run her IEs
echo
section $MSG_RUN_IES
[ "$INSTALLIE6"  = "1" ] && run_ie 6
[ "$INSTALLIE55" = "1" ] && run_ie 55
[ "$INSTALLIE5"  = "1" ] && run_ie 5
[ "$INSTALLIE1"  = "1" ] && run_ie 1
[ "$INSTALLIE15" = "1" ] && run_ie 15
[ "$INSTALLIE2"  = "1" ] && run_ie 2
[ "$INSTALLIE3"  = "1" ] && run_ie 3
[ "$INSTALLIE7"  = "1" ] && run_ie 7
echo
