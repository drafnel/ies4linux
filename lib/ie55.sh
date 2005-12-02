# IEs 4 Linux
# Install ie55

print_section Installing IE 5.5
print_subsection Extracting and copying IE files

cd "$BASEDIR"/tmp/
new_installation ie55

wine "$DOWNLOADDIR"/ie55sp2.exe &> /dev/null || exit
cd IE*

cabextract -q IE_S*CAB &> /dev/null
cabextract -q -L -d "$BASEDIR/ie55/$DRIVEC/$WINDOWS/$SYSTEM/" IE_1.CAB IEDOM.CAB &> /dev/null
mv "$BASEDIR"/ie55/$DRIVEC/$WINDOWS/$SYSTEM/sch128c.dll  "$BASEDIR"/ie55/$DRIVEC/$WINDOWS/$SYSTEM/schannel.dll
mv "$BASEDIR/ie55/$DRIVEC/$WINDOWS/$SYSTEM/iexplore.exe" "$BASEDIR/ie55/$DRIVEC/Program Files/Internet Explorer/IEXPLORE.EXE"

cabextract -q -L -d "$BASEDIR/ie55/$DRIVEC/$WINDOWS/$SYSTEM/" VBSCRIPT.CAB &> /dev/null
cabextract -q -L -F "pngfilt.dll" ADVAUTH.CAB &> /dev/null
cabextract -q -L -F "msvcrt.dll" SETUPW95.CAB &> /dev/null
cabextract -q -L -F "*TTF" FONT*CAB &> /dev/null
mv pngfilt.dll msvcrt.dll "$BASEDIR/ie55/$DRIVEC/$WINDOWS/$SYSTEM/"
mv *ttf "$BASEDIR/ie6/$DRIVEC/$WINDOWS/$FONTS/"

print_subsection Configuring ie55
cat "$IES4LINUX"/winereg/model.system.reg |
                sed -e "s/6.0000/5.5000/g" |
                sed -e "s/6.0.2800.1106/5.50.4807.2300/g" |
                sed -e "s/MSXML3.DLL/MSXML.DLL/g" > "$BASEDIR"/ie55/system.reg
cp "$IES4LINUX"/winereg/model.user.reg "$BASEDIR"/ie55/user.reg

createShortcuts ie55 5.5
clean_tmp
print_ok

