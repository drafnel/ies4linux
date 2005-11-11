#!/bin/bash
# IEs 4 Linux
# Developed by: Sergio Luis Lopes Junior <slopes at gmail dot com>
# Project site: http://tatanka.com.br/ies4linux
#
# Released under the GNU GPL. See LICENSE for more information

print_section Downloading everything we need

# DOWNLOAD VARIABLES

# Evolt Mirror 1
#URL_IE6="http://www.mirrorservice.org/sites/browsers.evolt.org/browsers/ie/32bit/6.0/ie60.exe"
#URL_IE5="http://www.mirrorservice.org/sites/browsers.evolt.org/browsers/ie/32bit/5.01_SP2/ie501sp2.exe"
#URL_IE55="http://www.mirrorservice.org/sites/browsers.evolt.org/browsers/ie/32bit/5.5_SP2/ie55sp2.exe"

# Evolt Mirror 2
URL_IE6=http://www.mirror.ac.uk/mirror/ftp.evolt.org/ie/32bit/6.0/ie60.exe
URL_IE5=http://www.mirror.ac.uk/mirror/ftp.evolt.org/ie/32bit/5.01_SP2/ie501sp2.exe
URL_IE55=http://www.mirror.ac.uk/mirror/ftp.evolt.org/ie/32bit/5.5_SP2/ie55sp2.exe

# Microsoft updates
URL_DCOM98=http://download.microsoft.com/download/d/1/3/d13cd456-f0cf-4fb2-a17f-20afc79f8a51/DCOM98.EXE
URL_RICHED=http://download.microsoft.com/download/win98SE/Update/5072/W98/EN-US/249973USA8.exe
URL_SCHANNEL=http://download.microsoft.com/download/win98SE/Patch/Q249863-128/W9X/EN-US/249863USA8_128.EXE
URL_MFC40=http://activex.microsoft.com/controls/vc/mfc40.cab
URL_MFC42=http://activex.microsoft.com/controls/vc/mfc42.cab

# Others
URL_FLASH=http://fpdownload.macromedia.com/get/flashplayer/current/swflash.cab
URL_IPIX=http://www.ipix.com/download/ipixx.cab

# md5sum 
MD5_IE6=f34f7f96e8307a01d51c9cc82abe90c2
MD5_IE55=a60d9f27385399e25413d9cc51949c51
MD5_IE5=c9e395c26bce21ee21230437e5574846
MD5_DCOM98=9a7bc7ff37168217123a5e28aadef897
MD5_RICHED=069c9efff9e21793ef60c445c36c5509
MD5_SCHANNEL=fd1f7fb7f7221a75ad533f2af0e281a6
MD5_FLASH=854bc61034c86fd88700427a53704cfb
MD5_MFC40=57b92899066e127dcb578b36ac6f6f4d
MD5_MFC42=fbe551338463f13c6a5e215db55ac21b
MD5_IPIX=c1a0c623d4a49a8362b2aba9cc46b8f3

# File Size
SIZE_DCOM98=1208
SIZE_RICHED=824
SIZE_SCHANNEL=200
SIZE_IE6=78672
SIZE_IE55=86236
SIZE_IE5=81660
SIZE_FLASH=728
SIZE_MFC40=584
SIZE_MFC42=624
SIZE_IPIX=592

# Download and check MD5
download() {
	FILENAME=`echo $1 | sed -e "s/.*\///"`

	# Download
	if [ ! -e $DOWNLOADDIR/$FILENAME ]; then
	        wget $1 $WGETFLAGS -O $DOWNLOADDIR/$FILENAME
	else
		size=` du -sk $DOWNLOADDIR/$FILENAME | awk '{print $1}' `
		if [ $size -lt $3 ]; then
			wget $1 $WGETFLAGS -O $DOWNLOADDIR/$FILENAME
		fi			
	fi
        
	# Check MD5
	md5=`md5sum $DOWNLOADDIR/$FILENAME`
        if [ "${md5:0:32}" != "$2" ]; then
	        rm -rf $DOWNLOADDIR/$FILENAME
      	fi
}

# Default downloads
download $URL_SCHANNEL $MD5_SCHANNEL $SIZE_SCHANNEL
download $URL_RICHED $MD5_RICHED $SIZE_RICHED
download $URL_DCOM98 $MD5_DCOM98 $SIZE_DCOM98
download $URL_MFC40 $MD5_MFC40 $SIZE_MFC40
# download $URL_MFC42 $MD5_MFC42 $SIZE_MFC42

# IE downloads
if [ "$INSTALLIE6" = "1" ] ; then
	download $URL_IE6 $MD5_IE6 $SIZE_IE6
fi
if [ "$INSTALLIE55" = "1" ] ; then
	download $URL_IE55 $MD5_IE55 $SIZE_IE55
fi
if [ "$INSTALLIE5" = "1" ] ; then
        download $URL_IE5 $MD5_IE5 $SIZE_IE5
fi

# Other downloads
if [ "$INSTALL_FLASH" = "yes" ]; then
	download $URL_FLASH $MD5_FLASH $SIZE_FLASH
fi
if [ "$INSTALL_IPIX" = "yes" ]; then
	download $URL_IPIX $MD5_IPIX $SIZE_IPIX
fi

print_ok
