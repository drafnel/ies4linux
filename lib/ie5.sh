# IEs 4 Linux
# Install ie5

print_section Installing IE 5
print_subsection Extracting and copying IE files

DIR="$BASEDIR/tmp/IE*"
cd $BASEDIR/tmp/

new_installation ie5
wine $DOWNLOADDIR/ie501sp2.exe &> /dev/null || exit

cabextract -q -d $DIR $DIR/IE_S*CAB &> /dev/null
cabextract -q -d $BASEDIR/ie5/$DRIVEC/$WINDOWS/$SYSTEM/ $DIR/IE_1.CAB $DIR/IEDOM.CAB &> /dev/null
mv $BASEDIR/ie5/$DRIVEC/$WINDOWS/$SYSTEM/IEXPLORE.EXE $BASEDIR/ie5/$DRIVEC/Program\ Files/Internet\ Explorer/IEXPLORE.EXE

cabextract -q -d $BASEDIR/ie5/$DRIVEC/$WINDOWS/$SYSTEM/ $DIR/VBSCRIPT.CAB  &> /dev/null
cabextract -q -F "pngfilt.dll" $DIR/ADVAUTH.CAB &> /dev/null
cabextract -q -F "*TTF" $DIR/FONT*CAB &> /dev/null
mv pngfilt.dll *TTF $BASEDIR/ie5/$DRIVEC/$WINDOWS/$SYSTEM/

print_subsection Configuring ie5
cat $IES4LINUX/winereg/model.system.reg |
                sed -e "s/6.0000/5.0002/g" |
                sed -e "s/6.0.2800.1106/5.00.2614.3500/g" |
                sed -e "s/MSXML3.DLL/MSXML.DLL/g" > $BASEDIR/ie5/system.reg
cp $IES4LINUX/winereg/model.user.reg $BASEDIR/ie5/user.reg

createShortcuts ie5 5.0
clean_tmp
print_ok
