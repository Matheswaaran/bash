#!/bin/bash
#declare -i sc=0
declare -l mail
declare -u name
declare -i reg=0
declare -i n=0
#declare -i sl=0
mailCall () {
clear
while :
do
read -p "Type in your mail ID (e.g. a@abc.com) :" mail
if [[ $mail != ""  ]] && [[ $mail != " " ]] && [[ $mail != "0" ]]
then
mail=$(echo $mail | sed 's/\ //')
echo -e "========================\nYour Mail ID is :$mail"
sleep 1 && break
else clear && echo NULL Valuse is not accepted. Plz try again...
fi
done
}
nameCall () {
clear
while :
do
echo Type in your name with initial \(seperated by space\)
read -p "Name (e.g. M RAM):" name
if [[ $name != ""  ]] && [[ $name != " " ]] && [[ $name != "0" ]]
then
name=$(echo $name | sed 's/,/\ /g' | sed 's/\./\ /g')
name=$(echo $name | tr '[:lower:]' '[:upper:]')
name=$(echo $name | sed 's/[0-9]//g')
sleep 0.5
echo -e "============================\nCorrected value is : $name"
sleep 1 && break
else clear && echo NULL Valuse is not accepted. Plz try again...
fi
done
}
regCall () {
clear
echo Please type in your 12 digit Register Number.
while :
do
read -p "Register Number (e.g. 123456789012):" numC
numC=$(echo $numC | sed 's/\ //') # Remove white spaces in input
reg=${numC%%[A-Za-z]*}	# Remove all chars other than numerals
if [[ $reg != '0' ]] && [[ ${#reg} -eq 12 ]] && [[ $reg != "" ]]
then echo -e "=============================\nYour Reg. Number is $reg" && sleep 1 && break
else clear && echo "Your input is less than 12 digit (or) might contain charcters other than numbers. Plz try again..."
fi
done
}
rollCall () {
clear
echo Please type in your Roll Number.
while :
do
read -p "Roll Number (e.g. 21, 1, 01 etc.,):" roll
roll=$(echo $roll | sed 's/\ //') # Remove white spaces in input
n=${roll%%[A-Za-z]*}	# Remove all chars other than numerals
if [ $n != '0' ] && [ ${#n} -le 2 ]
then echo -e "========================\nYour Roll Number is $n" && sleep 1 && break
else clear && echo Your input is not 2 digit width \(or\) might contain charcters other than numbers. Plz try again...
fi
done
}
salCall () {
clear
while :
do
echo -e "Please type in your salution \nPress '1' for 'Mr', \nPress '2' for 'Ms', \nPress '3' for 'Mrs'"
read -p "Your Salution (e.g. 1, 2, 3):" sl
case $sl in
'1') sal='Mr' && break
;;
'2') sal='Ms' && break
;;
'3') sal='Mrs' && break
;;
*) clear && echo "You must have entered wrong input. Please try again..."
;;
esac
done
echo -e "=============================\nYour salution is $sal"
sleep 1
}
secCall () {
clear
while :
do
echo -e "Please type in your section \nPress '1' for 'A' sec, \nPress '2' for 'B' sec, \nPress '3' for 'C' sec \nPress '4' for 'D' sec "
read -p "Your Section (e.g. 1, 2, 3, 4):" sc
case $sc in
'1') sec='A' && break
;;
'2') sec='B' && break
;;
'3') sec='C' && break
;;
'4') sec='D' && break
;;
*) clear && echo "You must have entered wrong input. Please try again..."
;;
esac
done
echo "Your section is $sec"
sec=$(echo $sec | tr '[:upper:]' '[:lower:]')
sleep 1
}
endCall () {
#if [ $sal = "Mr"  ] 
#then 
echo $(date|sed 's/\ /,/g'|sed 's/:/,/g'|while IFS="," read f{1..8}; do echo $f3,$f2,$f4,$f5; done),$sal,$name,$reg,$(echo $sec | tr '[:lower:]' '[:upper:]'),$n,it$sec$n,$mail,$psd >> all.db.csv # e.g. date,Mr/Ms,Name,Reg.No,Sec[caps],RollNo,itsecroll,mail,pwd >> csv file
echo psd=$psd \&\& \echo \$psd \| passwd --stdin it$sec$n >> paswd.sh && chmod 755 paswd.sh
#else 
#echo $(date|sed 's/\ /,/g'|sed 's/:/,/g'|while IFS="," read f{1..8}; do echo $f3,$f2,$f4,$f5; done),$sal,$name,$reg,$sec,$n,it$(echo $sec | tr '[:upper:]' '[:lower:]')$n,$mail,$psd >> women.db.csv
#echo psd=$psd \&\& \echo \$psd \| passwd --stdin it$(echo $sec |tr '[:upper:]' '[:lower:]')$n >> women.pass.sh
#fi
clear
echo =================================================================================================
echo "Thanks for your co-operation. Please note down your telnet user ID & your password given below!"
echo =================================================================================================
echo "        	                User ID: it$sec$n      Password: $psd             "
echo =================================================================================================
echo Please try login with this password after a couple of minutes. Thanks. Program is exiting now!...
echo =================================================================================================
sleep 10
}
clear
psd=$((RANDOM % 100+10))
nameCall
salCall
regCall
rollCall
secCall
mailCall
clear
while :
do
echo ============================================================================================
echo ================================Please check your details===================================
echo "Your Name is				$sal $name"
echo "Your Section is 	      		$(echo $sec|tr '[:lower:]' '[:upper:]')"
echo "Your Register number is 		$reg"
echo "Your Roll number is     		$n"
echo "Your Email ID is 	      		$mail"
echo "Your Telnet login ID is 		it$(echo $sec | tr '[:upper:]' '[:lower:]')$n"
echo ============================================================================================
echo ==============================IS YOUR INFORMATION CORRECT?...===============================
echo ================================If NOT try the following====================================
echo Press '1' to edit/correct Name.
echo Press '2' - Salution.
echo Press '3' - Register Number.
echo Press '4' - Class Roll number.
echo Press '5' - Section.
echo Press '6' to edit/correct Email-ID.
echo ============================================================================================
echo If everything is ok, Press '7' to EXIT. NEVER CLOSE THE WINDOW WITH OUT EXITING....
echo ============================================================================================
read -p "Please type in your choice: " cas1
case $cas1 in
'1') nameCall && clear
;;
'2') salCall && clear
;;
'3') regCall && clear
;;
'4') rollCall && clear
;;
'5') secCall && clear
;;
'6') mailCall && clear
;;
'7') endCall && break
;;
*) clear && echo WRONG INPUT!.... Plz try again
;;
esac
done
#then echo "$(date|sed 's/\ /,/g'|sed 's/:/,/g'|while IFS="," read f{1..8}; do echo $f3,$f2,$f4,$f5; done),$sal,$name,$reg,$sec,$n,it$(echo $sec | tr '[:upper:]' '[:lower:]')$n,$mail" >> db.men.csv
#echo psd=$psd \&\& \echo \$psd \| passwd --stdin it\$\(\echo $sec \|tr \'\[\:upper:\]\' \'\[:lower:\]\'\)$n > men.pass.sh
