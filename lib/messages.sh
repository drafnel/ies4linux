# Import default strings
source "$IES4LINUX"/lang/enUS.sh

exec 6<&0

# language table
# lang country msgfile ielocale
exec << END
en	.	enUS	EN-US
pt	br	ptBR	PT-BR
pt	.	ptBR	PT
de	.	enUS	DE
fr	.	enUS	FR
es	.	enUS	ES
it	.	enUS	IT
nl	.	enUS	NL
sv	.	enUS	SV
ja	.	enUS	JA
ko	.	enUS	KO
no	.	enUS	NO
da	.	enUS	DA
cn	.	enUS	CN
tw	.	enUS	TW
fi	.	enUS	FI
pl	.	enUS	PL
hu	.	enUS	HU
ar	.	enUS	AR
he	.	enUS	HE
cs	.	enUS	CS
ru	.	enUS	RU
el	.	enUS	EL
tr	.	enUS	TR
END

SYSLANG=$(echo ${LANG:0:2} | tr A-Z a-z)
SYSCOUNTRY=$(echo ${LANG:3:2} | tr A-Z a-z)

while read line; do
	l=$(echo $line | awk '{print $1}' | tr A-Z a-z)
	c=$(echo $line | awk '{print $2}' | tr A-Z a-z)
	f=$(echo $line | awk '{print $3}')
	i=$(echo $line | awk '{print $4}')

	if [ "$SYSLANG" = "$l" ]; then
		if [ "$c" = "." ] || [ "$SYSCOUNTRY" = "$c" ]; then
			export IE6_LOCALE=$i
			source "$IES4LINUX"/lang/$f.sh
			exec 0<&6
			break
		fi
	fi
done