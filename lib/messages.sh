# Import default strings
source "$IES4LINUX"/lang/enUS.sh
IE6_LOCALE=EN-US

exec 6<&0

# language table
# lang country msgfile ielocale
exec << END
en	.	enUS	EN-US
pt	br	ptBR	PT-BR
pt	.	ptBR	PT
cs	.	csCZ	CS
it	.	itIT	IT
fr	.	frFR	FR
ru	.	ruRU	RU
nb	.	nbNO	NO
nn	.	nbNO	NO
no	.	nbNO	NO 
pl	.	plPL	PL
es	.	esAR	ES
de	.	deDE	DE
bg	bg	bgBG	EN-US
nl	.	nlNL	NL
tw	.	zhTW	TW
tr	.	trTR	TR
ja	.	jaJP	JA
da	.	daDK	DA
hu	.	huHU	HU
cn	.	zhCN	CN
he	.	heIL	HE
sv	.	enUS	SV
ko	.	enUS	KO
fi	.	enUS	FI
ar	.	enUS	AR
el	.	enUS	EL
END
# Spanish and portuguese still needs other translations (pt_PT, es_ES...)

SYSLANG=$(echo ${LANG:0:2} | tr A-Z a-z)
SYSCOUNTRY=$(echo ${LANG:3:2} | tr A-Z a-z)

# try to discover encoding (or use utf8)
SYSENCODING=
if [ "${LANG:5:1}" = "." ]; then 
	SYSENCODING=${LANG:6}
elif locate --version &>/dev/null; then
	L=$(grep -m 1 ${LANG} $(locate X11/locale/locale.alias) | awk '{print $2}')
	SYSENCODING=${L:6}
else
	SYSENCODING=UTF-8
fi

NEEDSTRANSLATION=0

while read line; do
	l=$(echo $line | awk '{print $1}' | tr A-Z a-z)
	c=$(echo $line | awk '{print $2}' | tr A-Z a-z)
	f=$(echo $line | awk '{print $3}')
	i=$(echo $line | awk '{print $4}')

	if [ "$SYSLANG" = "$l" ]; then
		if [ "$c" = "." ] || [ "$SYSCOUNTRY" = "$c" ]; then
			export IE6_LOCALE=$i
			source "$IES4LINUX"/lang/$f.sh
			
			# Try to convert to user system encoding
			iconv --version &> /dev/null && {
				iconv -f $TRANSLATION_ENCODING -t $SYSENCODING "$IES4LINUX"/lang/$f.sh > "$IES4LINUX"/lang/lang.sh
				source "$IES4LINUX"/lang/lang.sh
			}

			[ ! "$l" = "en" ] && [ "$f" = "enUS" ] && NEEDSTRANSLATION=1

			break
		fi
	fi
done

exec 0<&6
