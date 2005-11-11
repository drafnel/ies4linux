# IES4 Linux
# Install some plugins

if [ "$INSTALL_FLASH" = "yes" ]; then
        source $IES4LINUX/lib/flash.sh
fi

if [ "$INSTALL_IPIX" = "yes" ]; then
        source $IES4LINUX/lib/ipix.sh
fi

