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

# Others
URL_FLASH=http://fpdownload.macromedia.com/get/flashplayer/current/swflash.cab
URL_IPIX=http://www.ipix.com/download/ipixx.cab

# md5sum 
MD5_IE6=f34f7f96e8307a01d51c9cc82abe90c2
MD5_IE55=a60d9f27385399e25413d9cc51949c51
MD5_IE5=c9e395c26bce21ee21230437e5574846
MD5_DCOM98=9a7bc7ff37168217123a5e28aadef897
MD5_MFC40=57b92899066e127dcb578b36ac6f6f4d

# File Size
SIZE_DCOM98=1208
SIZE_IE6=78672
SIZE_IE55=86236
SIZE_IE5=81660
SIZE_MFC40=584

# Download and check MD5
download() {
	FILENAME=`echo $1 | sed -e "s/.*\///"`

	if [ "$2" != "" ]; then
		# Download 'static' files
		if [ ! -e "$DOWNLOADDIR/$FILENAME" ]; then
		        wget $1 $WGETFLAGS -O "$DOWNLOADDIR/$FILENAME"
		else
			size=` du -sk "$DOWNLOADDIR/$FILENAME" | awk '{print $1}' `
			if [ $size -lt $3 ]; then
				wget $1 $WGETFLAGS -O "$DOWNLOADDIR/$FILENAME"
			fi			
		fi
	        
		# Check MD5
		md5=`md5sum "$DOWNLOADDIR/$FILENAME"`
	        if [ "${md5:0:32}" != "$2" ]; then
		        rm -rf "$DOWNLOADDIR/$FILENAME"
	      	fi
	else
		# Download 'dinamic' files, like Flash
		 wget $1 $WGETFLAGS --continue -O "$DOWNLOADDIR/$FILENAME"
	fi
}

# Default downloads
download $URL_DCOM98 $MD5_DCOM98 $SIZE_DCOM98
download $URL_MFC40 $MD5_MFC40 $SIZE_MFC40

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
	download $URL_FLASH
fi
if [ "$INSTALL_IPIX" = "yes" ]; then
	download $URL_IPIX $MD5_IPIX $SIZE_IPIX
fi

print_ok
