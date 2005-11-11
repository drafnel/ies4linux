# IEs 4 Linux
# Install ie55

print_section Installing IE 5.5
print_subsection Extracting and copying IE files

DIR="$BASEDIR/tmp/IE*"
cd $BASEDIR/tmp/

new_installation ie55
wine $DOWNLOADDIR/ie55sp2.exe &> /dev/null || exit

cabextract -q -d $DIR $DIR/IE_S*CAB &> /dev/null
cabextract -q -d $BASEDIR/ie55/$DRIVEC/$WINDOWS/$SYSTEM/ $DIR/IE_1.CAB  $DIR/IEDOM.CAB &> /dev/null
mv $BASEDIR/ie55/$DRIVEC/$WINDOWS/$SYSTEM/IEXPLORE.EXE $BASEDIR/ie55/$DRIVEC/Program\ Files/Internet\ Explorer/IEXPLORE.EXE

cabextract -q -d $BASEDIR/ie55/$DRIVEC/$WINDOWS/$SYSTEM/ $DIR/VBSCRIPT.CAB &> /dev/null
cabextract -q -F "pngfilt.dll" $DIR/ADVAUTH.CAB &> /dev/null
cabextract -q -F "*TTF" $DIR/FONT*CAB &> /dev/null
mv pngfilt.dll *TTF $BASEDIR/ie55/$DRIVEC/$WINDOWS/$SYSTEM/

print_subsection Configuring ie55
cat $IES4LINUX/winereg/model.system.reg |
                sed -e "s/6.0000/5.5000/g" |
                sed -e "s/6.0.2800.1106/5.50.4807.2300/g" |
                sed -e "s/MSXML3.DLL/MSXML.DLL/g" > $BASEDIR/ie55/system.reg
cp $IES4LINUX/winereg/model.user.reg $BASEDIR/ie55/user.reg

createShortcuts ie55 5.5
clean_tmp
print_ok

