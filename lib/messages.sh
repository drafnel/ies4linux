exec 6<&0

# language table
# lang country msgfile ielocale	okpage
exec << END
en	.	enUS	EN-US	ok-en.html
pt	br	ptBR	PT-BR	ok-pt.html
pt	.	ptBR	PT	ok-pt.html
cs	.	csCZ	CS	ok-en.html
it	.	itIT	IT	ok-it.html
fr	.	frFR	FR	ok-fr.html
ru	.	ruRU	RU	ok-en.html
nb	.	nbNO	NO	ok-en.html
nn	.	nbNO	NO	ok-en.html
no	.	nbNO	NO 	ok-en.html
pl	.	plPL	PL	ok-pl.html
es	ar	esAR	ES	ok-es.html
es	mx	esMX	ES	ok-es.html
es	.	esES	ES	ok-es.html
ca	es	caES	ES	ok-es.html
de	.	deDE	DE	ok-de.html
bg	bg	bgBG	EN-US	ok-en.html
nl	.	nlNL	NL	ok-nl.html
tw	.	zhTW	TW	ok-en.html
tr	.	trTR	TR	ok-en.html
ja	.	jaJP	JA	ok-en.html
da	.	daDK	DA	ok-en.html
hu	.	huHU	HU	ok-en.html
cn	.	zhCN	CN	ok-zh.html
sv	.	svSE	SV	ok-en.html
he	.	heIL	HE	ok-en.html
sk	sk	skSK	EN-US	ok-sk.html
ro	ro	roRO	EN-US	ok-en.html
lt	lt	ltLT	EN-US	ok-lt.html
sl	sl	slSL	EN-US	ok-en.html
si	si	siSI	EN-US	ok-en.html
et	et	etET	EN-US	ok-en.html
fi	.	fiFI	FI	ok-fi.html
eo	.	eoXX	EN-US	ok-en.html
sr	yu	srYU	EN-US	ok-en.html
id	.	idID	EN-US	ok-en.html
lv	.	lvLV	EN-US	ok-en.html
ms	my	msMY	EN-US	ok-en.html
ko	.	enUS	KO	ok-en.html
ar	.	enUS	AR	ok-en.html
el	.	enUS	EL	ok-en.html
END

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
    export OK_URL=http://www.tatanka.com.br/ies4linux/$(echo $line | awk '{print $5}')

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
        iconv -f $TRANSLATION_ENCODING "$msg_file" > "$iconv_tmpfile" && source "$iconv_tmpfile"
	rm -f "$iconv_tmpfile"
    fi

    if [ ! "$FOUND_LANG" = "en" ] && [ $FOUND_MSGFILE = "enUS" ]; then
        NEEDSTRANSLATION=1
    fi
fi

exec 0<&6

# generate homepage registry file
cat <<FIM > "$IES4LINUX"/winereg/homepage.reg
[HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main]
"Start Page"="${OK_URL}"
FIM
