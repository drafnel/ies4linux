#!/bin/sh

# Find wine in Mac OS X
# Credits: Mike Kronenberg, Sergio Lopes
# License: GPLv2

# is Wine in PATH?
if which wine &> /dev/null; then
	WINEHOME=$(dirname "$(which wine | head -n 1)")

#is wine in /Applications/Darwine?
elif [ -f /Applications/Darwine/Wine.bundle/Contents/bin/wine ]; then
	WINEHOME="/Applications/Darwine/Wine.bundle/Contents/bin"
	
# is wine in ~/Applications/Darwine?
elif [ -f ~/Applications/Darwine/Wine.bundle/Contents/bin/wine ]; then
	WINEHOME=$HOME/Applications/Darwine/Wine.bundle/Contents/bin

else	
	# is wine in locate db?
	WINEHOME=$(dirname "$(locate "bin/wineserver" | head -n 1)")
fi

# sorry, no wine found
[ "$WINEHOME" = "" ] && exit 1

# look for wine executables
[ -f "$WINEHOME"/wine ] && [ -f "$WINEHOME"/wineprefixcreate ] && [ -f "$WINEHOME"/wineboot ] && [ -f "$WINEHOME"/wineserver ] \
	 && echo $WINEHOME && exit 0

# did not found all executables
exit 1