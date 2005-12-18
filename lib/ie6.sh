# IEs 4 Linux
# Install ie6

print_section Installing IE 6
print_subsection Extracting and copying IE files

cd "$BASEDIR"/tmp/
new_installation ie6

wine "$DOWNLOADDIR"/ie60.exe &> /dev/null || exit
cd IE*

cabextract -q IE_S*CAB &> /dev/null || exit
cabextract -q -L -d "$BASEDIR"/ie6/$DRIVEC/$WINDOWS/$SYSTEM/ IE_1.CAB IEDOM.CAB &> /dev/null || exit
mv "$BASEDIR"/ie6/$DRIVEC/$WINDOWS/$SYSTEM/sch128c.dll  "$BASEDIR"/ie6/$DRIVEC/$WINDOWS/$SYSTEM/schannel.dll
mv "$BASEDIR"/ie6/$DRIVEC/$WINDOWS/$SYSTEM/iexplore.exe "$BASEDIR/ie6/$DRIVEC/Program Files/Internet Explorer/IEXPLORE.EXE"

cabextract -q -L -d "$BASEDIR"/ie6/$DRIVEC/$WINDOWS/$SYSTEM/ SCR56EN.CAB  &> /dev/null
cabextract -q -L -F "pngfilt.dll" ADVAUTH.CAB &> /dev/null
cabextract -q -L -F "msvcrt.dll" SETUPW95.CAB &> /dev/null
cabextract -q -L -F "*TTF" FONT*CAB  &> /dev/null
mv pngfilt.dll msvcrt.dll "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$SYSTEM/"
mv *ttf "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$FONTS/"

print_subsection Configuring ie6
cp "$IES4LINUX"/winereg/model.system.reg "$BASEDIR"/ie6/system.reg
cp "$IES4LINUX"/winereg/model.user.reg "$BASEDIR"/ie6/user.reg

createShortcuts ie6 6.0
clean_tmp
print_ok
