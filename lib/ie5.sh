# IEs 4 Linux
# Install ie5

print_section Installing IE 5
print_subsection Extracting and copying IE files

cd "$BASEDIR"/tmp/
new_installation ie5

wine "$DOWNLOADDIR"/ie501sp2.exe &> /dev/null || exit
cd IE*

cabextract -q IE_S*CAB &> /dev/null || exit
cabextract -q -L -d "$BASEDIR/ie5/$DRIVEC/$WINDOWS/$SYSTEM/" IE_1.CAB IEDOM.CAB &> /dev/null
mv "$BASEDIR"/ie5/$DRIVEC/$WINDOWS/$SYSTEM/sch128c.dll  "$BASEDIR"/ie5/$DRIVEC/$WINDOWS/$SYSTEM/schannel.dll
mv "$BASEDIR/ie5/$DRIVEC/$WINDOWS/$SYSTEM/iexplore.exe" "$BASEDIR/ie5/$DRIVEC/Program Files/Internet Explorer/IEXPLORE.EXE"

cabextract -q -L -d "$BASEDIR/ie5/$DRIVEC/$WINDOWS/$SYSTEM/" VBSCRIPT.CAB &> /dev/null
cabextract -q -L -F "pngfilt.dll" ADVAUTH.CAB &> /dev/null
cabextract -q -L -F "msvcrt.dll" SETUPW95.CAB &> /dev/null
cabextract -q -L -F "*TTF" FONT*CAB &> /dev/null
mv pngfilt.dll msvcrt.dll "$BASEDIR/ie5/$DRIVEC/$WINDOWS/$SYSTEM/"
mv *ttf "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$FONTS/"

print_subsection Configuring ie5
cat "$IES4LINUX"/winereg/model.system.reg |
                sed -e "s/6.0000/5.0002/g" |
                sed -e "s/6.0.2800.1106/5.00.2614.3500/g" |
                sed -e "s/MSXML3.DLL/MSXML.DLL/g" > "$BASEDIR"/ie5/system.reg
cp "$IES4LINUX"/winereg/model.user.reg "$BASEDIR"/ie5/user.reg

createShortcuts ie5 5.0
clean_tmp
print_ok
