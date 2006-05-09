# Import default strings
source "$IES4LINUX"/lang/enUS.sh

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
es	ar	esAR	ES
es	.	esAR	ES
de	de	deDE	DE
de	.	deDE	DE
bg	bg	bgBG	EN-US
nl	.	nlNL	NL
sv	.	enUS	SV
ja	.	enUS	JA
ko	.	enUS	KO
da	.	enUS	DA
cn	.	enUS	CN
tw	.	enUS	TW
fi	.	enUS	FI
hu	.	enUS	HU
ar	.	enUS	AR
he	.	enUS	HE
el	.	enUS	EL
tr	.	enUS	TR
END
# Spanish and portuguese still needs other translations (pt_PT, es_ES...)

SYSLANG=$(echo ${LANG:0:2} | tr A-Z a-z)
SYSCOUNTRY=$(echo ${LANG:3:2} | tr A-Z a-z)
SYSENCODING=UTF-8
[ "${LANG:5:1}" = "." ] && SYSENCODING=${LANG:6}
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
