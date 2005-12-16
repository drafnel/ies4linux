#!/bin/bash
# IEs 4 Linux download module

print_section Downloading everything we need

# Evolt 
URL_IE6=http://www.mirror.ac.uk/mirror/ftp.evolt.org/ie/32bit/6.0/ie60.exe
URL_IE5=http://www.mirror.ac.uk/mirror/ftp.evolt.org/ie/32bit/5.01_SP2/ie501sp2.exe
URL_IE55=http://www.mirror.ac.uk/mirror/ftp.evolt.org/ie/32bit/5.5_SP2/ie55sp2.exe

# Microsoft updates
URL_DCOM98=http://download.microsoft.com/download/d/1/3/d13cd456-f0cf-4fb2-a17f-20afc79f8a51/DCOM98.EXE
URL_MFC40=http://activex.microsoft.com/controls/vc/mfc40.cab
URL_RICHED=http://download.microsoft.com/download/win98SE/Update/5072/W98/EN-US/249973USA8.exe

# Others
URL_FLASH=http://fpdownload.macromedia.com/get/flashplayer/current/swflash.cab
URL_IPIX=http://www.ipix.com/download/ipixx.cab

# md5sum 
MD5_IE6=f34f7f96e8307a01d51c9cc82abe90c2
MD5_IE55=a60d9f27385399e25413d9cc51949c51
MD5_IE5=c9e395c26bce21ee21230437e5574846
MD5_DCOM98=9a7bc7ff37168217123a5e28aadef897
MD5_MFC40=57b92899066e127dcb578b36ac6f6f4d
MD5_RICHED=069c9efff9e21793ef60c445c36c5509

# File Size
SIZE_DCOM98=1208
SIZE_IE6=78672
SIZE_IE55=86236
SIZE_IE5=81660
SIZE_MFC40=584
SIZE_RICHED=824

# Download and check MD5
_getInfo() {
	tmp="\$URL_${1}"
	FURL=`eval echo $tmp`
	tmp="\$SIZE_${1}"
	FSIZE=`eval echo $tmp`
	tmp="\$MD5_${1}"
	FMD5=`eval echo $tmp`
	FILENAME=`echo $FURL | sed -e "s/.*\///"`
	export FURL FSIZE FMD5 FILENAME
}
download() {
	_getInfo $1
	
	# Download 'static' files
	if [ ! -e "$DOWNLOADDIR/$FILENAME" ]; then
	        wget $FURL $WGETFLAGS -O "$DOWNLOADDIR/$FILENAME"
	else
		size=` du -sk "$DOWNLOADDIR/$FILENAME" | awk '{print $1}' `
		if [ $size -lt $FSIZE ]; then
			wget $FURL $WGETFLAGS --continue -O "$DOWNLOADDIR/$FILENAME"
		fi			
	fi
	        
	# Check MD5
	md5=`$MD5SUM "$DOWNLOADDIR/$FILENAME"`
        if [ "${md5:0:32}" != "$FMD5" ]; then
	        rm -rf "$DOWNLOADDIR/$FILENAME"
      	fi
}
download-dyn() {
	_getInfo $1
	if [ ! -e "$DOWNLOADDIR/$FILENAME" ]; then tmp=1; fi
	if [ "$FSIZE" = "" ]; then tmp=1; fi
	if [ "$tmp" = "1" ]; then
		wget $FURL $WGETFLAGS --continue -O "$DOWNLOADDIR/$FILENAME"
		md5=`$MD5SUM "$DOWNLOADDIR/$FILENAME"`
		size=` du -sk "$DOWNLOADDIR/$FILENAME" | awk '{print $1}' `
		echo export MD5_${1}=${md5:0:32} >> ~/.ies4linux/config
		echo export SIZE_${1}=$size >> ~/.ies4linux/config
	else
		download $1
	fi
}

# Default downloads
download DCOM98
download MFC40
download RICHED

# IE downloads
if [ "$INSTALLIE6" = "1" ] ; then
	download IE6
fi
if [ "$INSTALLIE55" = "1" ] ; then
	download IE55
fi
if [ "$INSTALLIE5" = "1" ] ; then
        download IE5
fi

# Other downloads
if [ "$INSTALL_FLASH" = "yes" ]; then
	download-dyn FLASH
fi
if [ "$INSTALL_IPIX" = "yes" ]; then
	download-dyn IPIX
fi

print_ok
