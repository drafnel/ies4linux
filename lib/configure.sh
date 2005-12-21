#!/bin/bash
# IEs4Linux configuration module

source $IES4LINUX/lib/config.md5
mkdir -p ~/.ies4linux

# Apply configuration
source "$IES4LINUX"/config
if [ -e ~/.ies4linux/config ]; then
	source ~/.ies4linux/config
fi

# FreeBSD compatibility
if `md5sum --version &> /dev/null` ;then
  export MD5SUM="md5sum"
else
  export MD5SUM="md5 -q"
fi

md5=`$MD5SUM "$IES4LINUX"/config `
if [ "${md5:0:32}" != "$MD5_IES4LINUX_CONFIG" ]; then
	source "$IES4LINUX"/config
fi

# Save updated configuration
echo "# Auto-generated IEs4Linux config file" > ~/.ies4linux/config
function svcfg() {
	tmp="\$$1"
	value=`eval echo $tmp`
	if [ "$value" != "" ]; then
		echo -e "export $1=\"$value\"" >> ~/.ies4linux/config
	fi
}
function saveConfigs() {
	for a in $@; do 
		svcfg $a 
	done
}

saveConfigs BASEDIR BINDIR DOWNLOADDIR WGETFLAGS CREATE_ICON
saveConfigs INSTALL_FLASH INSTALL_GOOGLE_ADSENSE INSTALL_IPIX INSTALL_IEDEVTOOLBAR
saveConfigs MD5_FLASH SIZE_FLASH MD5_IPIX SIZE_IPIX

export BASEDIR DOWNLOADDIR BINDIR WGETFLAGS CREATE_ICON INSTALL_FLASH
export LOG=$HOME/.ies4linux/ies4linux.log

mkdir -p $HOME/.ies4linux
mkdir -p $BINDIR
mkdir -p $BASEDIR
