# download.sh Download every file we need

# IE6 MS Downloads
URL_IE6_CABS=http://download.microsoft.com/download/ie6sp1/finrel/6_sp1/W98NT42KMeXP
IE6_CABS="ADVAUTH CRLUPD HHUPD IEDOM IE_EXTRA IE_S1 IE_S2 IE_S5 IE_S4 IE_S3 IE_S6 SCR56EN SETUPW95 FONTCORE FONTSUP VGX"
# other cabs BRANDING GSETUP95 IEEXINST README SWFLASH

# FUNCTIONS
download() {
	local URL=$1
	local FILENAME=$(echo $URL | sed -e "s/.*\///")
	local DIR=$(echo $URL | grep $URL_IE6_CABS | sed -e "s/.*W98NT42KMeXP\//ie6\//;s/\/[^\/]*$/\//")
	subsection $FILENAME

	# SCR56EN is always downloaded from EN-US
	[ "$FILENAME" = "SCR56EN.CAB" ] && URL=$URL_IE6_CABS/EN-US/SCR56EN.CAB

	# If file does not exist, remove it from 'files'
	[ ! -f "$DOWNLOADDIR/$DIR$FILENAME" ] && {
		grep -v "$DIR$FILENAME" "$DOWNLOADDIR/files" > "$DOWNLOADDIR/files2"
		mv "$DOWNLOADDIR/files2" "$DOWNLOADDIR/files"
	}

	# Download file
	if ! cat "$DOWNLOADDIR/files" | grep $DIR$FILENAME &> /dev/null ; then
		if wget  -c $URL $WGETFLAGS -O "$DOWNLOADDIR/$DIR$FILENAME"; then
			echo $DIR$FILENAME >> "$DOWNLOADDIR/files"
		else
			return 1
		fi
	fi
}

downloadEvolt() {
	local EVOLT_MIRROR1=http://www.mirrorservice.org/sites/browsers.evolt.org/browsers
	local EVOLT_MIRROR2=http://planetmirror.com/pub/browsers
	local EVOLT_MIRROR3=http://download.mirror.ac.uk/mirror/ftp.evolt.org

	if ! download $EVOLT_MIRROR1/$1 ; then
		if ! download $EVOLT_MIRROR2/$1 ; then
			if ! download $EVOLT_MIRROR3/$1 ; then
				error Could not find a suitable Evolt mirror
				exit
			fi
		fi
	fi
}

# CODE
section $MSG_DOWNLOADING
	mkdir -p "$DOWNLOADDIR"
	touch "$DOWNLOADDIR/files"
	
	# Default downloads
	download http://download.microsoft.com/download/d/1/3/d13cd456-f0cf-4fb2-a17f-20afc79f8a51/DCOM98.EXE
	download http://activex.microsoft.com/controls/vc/mfc40.cab
	download http://download.microsoft.com/download/win98SE/Update/5072/W98/EN-US/249973USA8.exe
	
	[ "$INSTALLIE6"  = "1" ] && {
		mkdir -p "$DOWNLOADDIR/ie6/$IE6_LOCALE"
		for cab in $IE6_CABS; do
			download "$URL_IE6_CABS/$IE6_LOCALE/$cab.CAB"
		done
	}
	[ "$INSTALLIE55" = "1" ] && downloadEvolt ie/32bit/standalone/ie55sp2_9x.zip
	[ "$INSTALLIE5"  = "1" ] && downloadEvolt ie/32bit/standalone/ie501sp2_9x.zip
	[ "$INSTALLFLASH" = "1" ] && {
		download "http://download.macromedia.com/get/shockwave/cabs/flash/swflash.cab" || error Cannot download flash
	}

	# Easter eggs
	[ "$INSTALLIE1"  = "1" ] && downloadEvolt ie/32bit/1.0/Msie10.exe
	[ "$INSTALLIE15" = "1" ] && downloadEvolt ie/32bit/1.5/IE15I386.EXE
	[ "$INSTALLIE2"  = "1" ] && downloadEvolt ie/32bit/2.0/msie20.exe
	[ "$INSTALLIE3"  = "1" ] && downloadEvolt ie/32bit/3.02/win95typical/msie302r.exe
ok
