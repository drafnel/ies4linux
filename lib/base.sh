# IEs 4 Linux
# Create a Basic Windows installation

print_section Creating basic Windows installation
set_wine_prefix "$BASEDIR/base/"

print_subsection Creating Wine Prefix
wineprefixcreate &> /dev/null || wine &> /dev/null || exit
discover_folders

mkdir -p "$BASEDIR/base/$DRIVEC/Program Files/Internet Explorer"
chmod u+rwx -R "$BASEDIR/base"
cd "$BASEDIR/tmp"

# Install DCOM98
print_subsection Installing DCOM98
cabextract -q -d "$BASEDIR/base/$DRIVEC/$WINDOWS/$SYSTEM/" "$DOWNLOADDIR/DCOM98.EXE" || exit
mv "$BASEDIR/base/$DRIVEC/$WINDOWS/$SYSTEM/dcom98.inf" "$BASEDIR/base/$DRIVEC/$WINDOWS/$INF/" || exit

# Install mfc40
print_subsection Installing ActiveX MFC40
cabextract -q $DOWNLOADDIR/mfc40.cab &> /dev/null
cabextract -q -F "mfc40.dll" mfc40.exe
mv mfc40.dll $BASEDIR/base/$DRIVEC/$WINDOWS/$SYSTEM/

# last things
print_subsection Finalizing
cp "$IES4LINUX/lib/ie_wine.svg" "$BASEDIR/ie_wine.svg"
chmod u+rwx -R "$BASEDIR/base"

clean_tmp
print_ok

