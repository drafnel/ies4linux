# IEs 4 Linux
# Install ie6

print_section Installing IE 6
print_subsection Extracting and copying IE files

DIR="$BASEDIR/tmp/IE*"
cd $BASEDIR/tmp/

new_installation ie6
wine $DOWNLOADDIR/ie60.exe &> /dev/null || exit

cabextract -q -d $DIR $DIR/IE_S*CAB &> /dev/null
cabextract -q -d $BASEDIR/ie6/$DRIVEC/$WINDOWS/$SYSTEM/ $DIR/IE_1.CAB $DIR/IEDOM.CAB &> /dev/null
mv $BASEDIR/ie6/$DRIVEC/$WINDOWS/$SYSTEM/IEXPLORE.EXE $BASEDIR/ie6/$DRIVEC/Program\ Files/Internet\ Explorer/IEXPLORE.EXE

cabextract -q -d $BASEDIR/ie6/$DRIVEC/$WINDOWS/$SYSTEM/ $DIR/SCR56EN.CAB  &> /dev/null
cabextract -q -F "pngfilt.dll" $DIR/ADVAUTH.CAB &> /dev/null
cabextract -q -F "*TTF" $DIR/FONT*CAB  &> /dev/null
mv pngfilt.dll *TTF $BASEDIR/ie6/$DRIVEC/$WINDOWS/$SYSTEM/

print_subsection Configuring ie6
cp $IES4LINUX/winereg/model.system.reg $BASEDIR/ie6/system.reg
cp $IES4LINUX/winereg/model.user.reg $BASEDIR/ie6/user.reg

createShortcuts ie6 6.0
clean_tmp
print_ok
