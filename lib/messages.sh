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
sv	.	svSE	SV
he	.	heIL	HE
sk	sk	skSK	EN-US
ro	ro	roRO	EN-US
lt	lt	ltLT	EN-US
ko	.	enUS	KO
fi	.	enUS	FI
ar	.	enUS	AR
el	.	enUS	EL
END
# Spanish and portuguese still needs other translations (pt_PT, es_ES...)

# Import default strings
source "$IES4LINUX"/lang/enUS.sh

# Check if user choosed and locale
USING_GUESSED_IE6_LOCALE=false
if test -z "$IE6_LOCALE"; then
    IE6_LOCALE="$IE6_LOCALE_DEFAULT"
    USING_GUESSED_IE6_LOCALE=true
fi


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

# Some helper variables
NEEDSTRANSLATION=0
FOUND_LANG=xx
FOUND_MSGFILE=xxXX

# Search into our Language Table
while read line; do
    l=$(echo $line | awk '{print $1}' | tr A-Z a-z)
    c=$(echo $line | awk '{print $2}' | tr A-Z a-z)
    f=$(echo $line | awk '{print $3}')
    i=$(echo $line | awk '{print $4}')

    if "$USING_GUESSED_IE6_LOCALE"; then
        # Make an informed guess using LANG and country subcode if applicable.
        if [ "$SYSLANG" = "$l" ]; then
            if [ "$c" = "." ] || [ "$SYSCOUNTRY" = "$c" ]; then
                export IE6_LOCALE="$i"
                FOUND_MSGFILE="$f"
                FOUND_LANG="$i"
                break
            fi
        fi
    else
        # Use the user-supplied IE6_LOCALE to find the msgcat
        if test "x$i" = "x$IE6_LOCALE"; then
            FOUND_MSGFILE="$f"
            FOUND_LANG="$l"
            break
        fi
    fi
done

# Load the message catalogue we just found.
msg_file="$IES4LINUX"/lang/"$FOUND_MSGFILE".sh
if ! test -f "$msg_file"; then
    echo "WARNING: unknown locale setting; no translations available."
    NEEDSTRANSLATION=1
else
    source "$msg_file"

    # Try to convert to user system encoding
    iconv_tmpfile="$IES4LINUX"/lang/lang.sh
    if iconv --version &> /dev/null; then
        iconv -f $TRANSLATION_ENCODING -t $SYSENCODING "$msg_file" > "$iconv_tmpfile" && source "$iconv_tmpfile"
	rm -f "$iconv_tmpfile"
    fi

    if [ ! "$FOUND_LANG" = "en" ] && [ $FOUND_MSGFILE = "enUS" ]; then
        NEEDSTRANSLATION=1
    fi
fi

exec 0<&6
