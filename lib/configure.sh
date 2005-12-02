#!/bin/bash
# IEs4Linux configuration module

source $IES4LINUX/lib/config.md5
mkdir -p ~/.ies4linux

# Apply configuration
source "$IES4LINUX"/config
if [ -e ~/.ies4linux/config ]; then
	source ~/.ies4linux/config
fi

md5=` md5sum "$IES4LINUX"/config `
if [ "${md5:0:32}" != "$MD5_IES4LINUX_CONFIG" ]; then
	source "$IES4LINUX"/config
fi

# Save updated configuration
echo "# Auto-generated IEs4Linux config file" > ~/.ies4linux/config
function svcfg() {
	echo -e "export $1=\"$2\"" >> ~/.ies4linux/config
}
svcfg BASEDIR $BASEDIR
svcfg BINDIR $BINDIR
svcfg DOWNLOADDIR $DOWNLOADDIR
svcfg WGETFLAGS $WGETFLAGS
svcfg CREATE_ICON $CREATE_ICON
svcfg INSTALL_FLASH $INSTALL_FLASH
svcfg INSTALL_GOOGLE_ADSENSE $INSTALL_GOOGLE_ADSENSE
svcfg INSTALL_IPIX $INSTALL_IPIX
svcfg INSTALL_IEDEVTOOLBAR $INSTALL_IEDEVTOOLBAR




