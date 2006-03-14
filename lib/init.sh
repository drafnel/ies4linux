# IEs 4 Linux
# Init script

# Splash screen
echo -en "\E[34;1m"
echo "=================  IEs 4 Linux ================="
echo "Install IE6, IE5.5 and IE5 on Linux via Wine."
echo "Credits: Sergio Lopes <slopes at gmail dot com>"
echo "Project page: http://tatanka.com.br/ies4linux"
echo "See README file for more info"
echo " "
tput sgr0

# Check for cabextract
if ! cabextract --version > /dev/null ; then
        echo -e "\E[31;1mYou need to install cabextract first!"
        echo "Download it here: http://www.kyz.uklinux.net/cabextract.php"
        tput sgr0
        exit
fi
if ! cabextract --version | grep "1." > /dev/null ; then
        echo -e "\E[31;1mYou need to update cabextract first!"
        echo "Download it here: http://www.kyz.uklinux.net/cabextract.php"
        tput sgr0
        exit
fi

# Ask user what he wants to install
echo -e "\E[1mInstallation options:"; tput sgr0
echo -e "\E[1m[1]\E[0m Install IE6, IE5.5 and IE5"
echo -e "\E[1m[2]\E[0m Install only IE6"
echo -e "\E[1m[3]\E[0m Install only IE5.5"
echo -e "\E[1m[4]\E[0m Install only IE5.0"
echo -n "Please choose an option: "
read installoption
echo " "

# Determine User Option
if [ "$installoption" =  "1" ]; then
        OPTION="ie6 ie55 ie50"
        INSTALLIE6=1
        INSTALLIE55=1
        INSTALLIE5=1
elif [ "$installoption" = "2" ]; then
        OPTION="ie6"
        INSTALLIE6=1
elif [ "$installoption" = "3" ]; then
        OPTION="ie55"
        INSTALLIE55=1
elif [ "$installoption" = "4" ]; then
        OPTION="ie50"
        INSTALLIE5=1
else
        echo -e "\E[31;1mInvalid option! Please run again and choose a valid option"; tput sgr0; exit
fi

export INSTALLIE6 INSTALLIE55 INSTALLIE5 OPTION
