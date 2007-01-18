#!/usr/bin/env bash
#
# IEs 4 Linux
# Developed by: Sergio Luis Lopes Junior <slopes at gmail dot com>
# Project site: http://tatanka.com.br/ies4linux
# Released under the GNU GPL. See LICENSE for more information
#
# uninstall.sh
#	Removes a previous IEs4Linux installation

# Checks for installation data
if [ ! -f "$HOME"/.ies4linux/install.data ]; then
	error $MSG_ERROR_NO_INSTALL_DATA
fi

# Checks for some variables
if [ -z "$BASEDIR" ] || [ -z "$BINDIR" ] || [ -z "$IES4LINUX" ] || [ -z "$DOWNLOADDIR" ]; then
	error Environment not configured
fi

# Performs the uninstalling
section $MSG_UNINSTALLING
	subsection $MSG_REMOVING_ICONS
		cd "$BASEDIR"
		for icon in *.desktop; do
			"$IES4LINUX"/lib/xdg-desktop-icon uninstall --novendor "$icon"
			"$IES4LINUX"/lib/xdg-desktop-menu uninstall --noupdate --novendor "$icon"
		done
		"$IES4LINUX"/lib/xdg-desktop-menu forceupdate

	subsection $MSG_REMOVING_BIN
		cd "$BASEDIR"/bin
		for exe in ie*; do
			rm -f "$BINDIR"/$exe
		done

	subsection $MSG_REMOVING_DOWNLOADS
		cd
		rm -rf "$DOWNLOADDIR"

	subsection $MSG_REMOVING_FILES
		cd
		rm -rf "$BASEDIR"
		rm -rf "$HOME/.ies4linux"

ok
