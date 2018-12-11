#!/bin/sh
mkdir ~/scr
call_l_i5 () {
for lsd in *
do
if 
[[ $lsd = "AppData" ]] || 
[[ $lsd = "Music" ]] || 
[[ $lsd = "Pictures" ]] || 
[[ $lsd = "Application Data" ]] || 
[[ $lsd = "My Documents" ]] || 
[[ $lsd = "PrintHood" ]] || 
[[ $lsd = "Contacts" ]] || 
[[ $lsd = "NetHood" ]] || 
[[ $lsd = "Recent" ]] || 
[[ $lsd = "Cookies" ]] || 
[[ $lsd = NTUSE* ]] || 
[[ $lsd = "Saved Games" ]] || 
[[ $lsd = "Desktop" ]] || 
[[ $lsd = "Searches" ]] || 
[[ $lsd = "Documents" ]] || 
[[ $lsd = "SendTo" ]] || 
[[ $lsd = "Downloads" ]] || 
[[ $lsd = "Start Menu" ]] || 
[[ $lsd = "Favorites" ]] || 
[[ $lsd = "Templates" ]] || 
[[ $lsd = "Links" ]] || 
[[ $lsd = ntuse* ]] || 
[[ $lsd = "Videos" ]] || 
[[ $lsd = "Local Settings" ]] || 
[[ $lsd = "dle.bat" ]] || 
[[ $lsd = *.session ]] || 
[[ $lsd = *.log ]] ||
[[ $lsd = *.ini ]] ||
[[ $lsd = "android-sdk-windows" ]] ||
[[ $lsd = "android-sdk_r22.6.2-windows" ]]
then
	:
else
	rm -rf $lsd
fi
done
}
call_l_amd () {
for ld in *
do
if 
[[ $ld = "Application Data" ]] || 
[[ $ld = "dle.bat" ]] || 
[[ $ld = NTUSE* ]] || 
[[ $ld = "Recent" ]] || 
[[ $ld = "Cookies" ]] || 
[[ $ld = "Favorites" ]] || 
[[ $ld = "My Documents" ]] || 
[[ $ld = ntuse* ]] || 
[[ $ld = "SendTo" ]] || 
[[ $ld = "Debug" ]] || 
[[ $ld = "NetHood" ]] ||  
[[ $ld = "Start Menu" ]] || 
[[ $ld = "Desktop" ]] || 
[[ $ld = "Local Settings" ]] ||  
[[ $ld = "PrintHood" ]] || 
[[ $ld = "Templates" ]] ||
[[ $ld = *.ini ]]
then
	:
else 
	rm -rf $ld
fi
done
}

call_i5C () {
for i5c in *
do
if 
[[ $i5c = "autoexec.bat" ]] || 
[[ $i5c = "hiberfil.sys" ]] || 
[[ $i5c = "IO.SYS" ]] || 
[[ $i5c = "MSOCache" ]] || 
[[ $i5c = "PerfLogs" ]] || 
[[ $i5c = "Recovery" ]] || 
[[ $i5c = "TurboC++" ]] || 
[[ $i5c = "config.sys" ]] || 
[[ $i5c = "inetpub" ]] || 
[[ $i5c = "jre" ]] || 
[[ $i5c = "oracle" ]] || 
[[ $i5c = "ProgramData" ]] || 
[[ $i5c = "\$Recycle.Bin" ]] || 
[[ $i5c = "Users" ]] || 
[[ $i5c = "Documents and Settings" ]] || 
[[ $i5c = "Intel" ]] || 
[[ $i5c = "MSDOS.SYS" ]] || 
[[ $i5c = "pagefile.sys" ]] || 
[[ $i5c = "Program Files" ]] || 
[[ $i5c = "System Volume Information" ]] || 
[[ $i5c = "Windows" ]]
then
	:
else
	rm -rf $i5c
fi
done
}
call_amdC () {
for amC in *
do
if
[[ $amC = "AUTOEXEC.BAT" ]] || 
[[ $amC = "CONFIG.SYS" ]] || 
[[ $amC = "IO.SYS" ]] || 
[[ $amC = "MSDOS.SYS" ]] || 
[[ $amC = "ntldr" ]] || 
[[ $amC = "pagefile.sys" ]] || 
[[ $amC = "RECYCLER" ]] || 
[[ $amC = "System Volume Information" ]] || 
[[ $amC = "WINDOWS" ]] || 
[[ $amC = "boot.ini" ]] || 
[[ $amC = "Documents and Settings" ]] || 
[[ $amC = "Java" ]] || 
[[ $amC = "NTDETECT.COM" ]] || 
[[ $amC = "oracle" ]] || 
[[ $amC = "Program Files" ]] || 
[[ $amC = "SWSetup" ]] || 
[[ $amC = "TC" ]]
then 
	:
else
	rm -rf $amC
fi
done
}

del_call () {
rm -f *.C && rm -f *.c && rm -f *.CPP && rm -f *.cpp && rm -f *.BAK
rm -f *.bak && rm -f *.txt && rm -f *.TXT && rm -f *.vbp && rm -f *.frm
rm -f *.dsw && rm -f *.dsp && rm -f *.rps && rm -f *.java && rm -f *.mdb
rm -f *.jpg && rm -f *.tif && rm -f *.bmp && rm -f *.docx && rm -f *.doc
rm -f *.ppt && rm -f *.pdf && rm -f *.xls && rm -f *.html && rm -f *.xml
rm -f *.jsp && rm -f *.zip && rm -f *.rar && rm -f *.png && rm -f *.js
}

find_del_call () {
find . -name "*.[c|C]" -exec rm '{}' \;
find . -name "*.[c|C][p|P][p|P]" -exec rm '{}' \;
find . -name "*.[b|B][a|A][k|K]" -exec rm '{}' \;
find . -name "*.[t|T][x|X][t|T]" -exec rm '{}' \;
find . -name "*.[d|D][o|O][c|C]" -exec rm '{}' \;
find . -name "*.[d|D][o|O][c|C][x|X]" -exec rm '{}' \;
find . -name "*.[p|P][d|D][f|F]" -exec rm '{}' \;
find . -name "*.[j|J][p|P][g|G]" -exec rm '{}' \;
}
mkdir -p ~/scr
j=/home/kannan/rscript
k=/home/kannan/mount/client
pwd1="maffei2"
pwd2="PSNACETIT"
cd ~/scr && echo unmounting:$k && umount $k -f
date > $j/log_del.txt
#=============While loop repeat================
while :
do
#echo "ls $j/sys/*.tx"
#if [[ -e "$j/sys/*.tx" ]]
if [[ "$(ls $j/sys/ | wc -l)" -ne 0 ]]
then
for i in {1..80..1}
do
if [[ -f "$j/sys/$i.tx" ]]
then
echo ==============
echo Trying IT$i...
echo ==============
	ping 192.168.6.$i -c 1 > /dev/null
	if [ $? = 0 ]
	then
		echo trying as AMD!
		mount //192.168.6.$i/c$ $k/ -o username=Administrator,password=$pwd1
		if [ -d "$k/TC" ]
		then
			echo Its AMD!
			cd $k/TC/
			del_call
			cd $k/TC/BIN/
			del_call
			find_del_call
			echo TC cleaned
			cd ~/scr
			cd $k/Documents\ and\ Settings/user/My\ Documents && rm -rf *
			cd $k/Documents\ and\ Settings/user/Desktop && rm -rf *
			echo "Docs & Desk cleaned"
			cd ~/scr && cd $k/
			call_amdC
			echo C drive Cleaned
			cd ~/scr && cd $k/Documents\ and\ Settings/user/
			echo user folder cleaned
			call_l_amd
			rm -f $j/sys/$i.tx
			echo ====================================================================IT$i is done!...
		else
			cd ~/scr && echo unmounting:$k && umount $k -f
			echo trying as I5
			mount //192.168.6.$i/c$ $k/ -o username=Administrator,password=$pwd2
			if [ -d "$k/TurboC++" ]
                	then
				echo Its I5
                        	cd $k/TurboC++/				
                        	del_call
                        	cd $k/TurboC++/Disk/TurboC3/BIN/
	                       	del_call
				find_del_call
				echo TC cleaned
				cd ~/scr
				cd $k/Users/user/Documents && rm -rf *
				cd $k/Users/user/Desktop && rm -rf *
				cd $k/Users/user/Downloads && rm -rf *	
				cd $k/Users/user/Pictures && rm -rf *	
				cd $k/Users/user/Videos && rm -rf *	
				cd $k/Users/user/Favorites && rm -rf *	
				cd $k/Users/user/Music && rm -rf *	
				echo user Docs, Desk, Dwnld, Pics, Vids Musc cleaned
				cd $k/Users/Public/Documents && rm -rf *
				cd $k/Users/Public/Desktop && rm -rf *
				cd $k/Users/Public/Downloads && rm -rf *	
				cd $k/Users/Public/Pictures && rm -rf *	
				cd $k/Users/Public/Videos && rm -rf *	
				cd $k/Users/Public/Favorites && rm -rf *	
				cd $k/Users/Public/Music && rm -rf *
				echo Public Docs, Desk, Dwnld, Pics, Vids Musc cleaned
#				cd $k/Users/Admin/Documents
#				rm -rf *
#				cd $k/Users/Admin/Documents
#				rm -rf *
				cd ~/scr && cd $k/
				call_i5C
				echo C Drive cleaned
#				cd ~/scr && cd $k/Users/Admin
#				call_l_i5
				cd ~/scr && cd $k/Users/user				
				call_l_i5
				echo user folder cleaned
				cd ~/scr && cd $k/Users/Public				
				call_l_i5
				echo Public folder cleaned
				rm -f $j/sys/$i.tx
				echo ====================================================================IT$i is done!...
			else
				echo IT$i found but Not mounted! >> $j/log_del.txt
			fi
		fi
		cd ~/scr && echo unmounting:$k && umount $k -f
	else
		echo ==============IT$i is down...================
	fi
else
	:
fi
done	# for 'for loop'
sleep 5
else
echo breaking script && break
fi
done	# for 'while loop'
echo Attempt success!
cd ~/
rmdir ~/scr
# HOW TO USE THIS SCRIPT
# Just create empty 'tx' file in the name of ip in which the computers you want to delete. For e.g. if the computer ip is 22, you have to 
# create '22.tx' file under the folder /home/kannan/rscript/sys/. Set the linux machine to NO GUI/multiuser mode [init 3]. And run the script
# /home/kannan/Dropbox/scripts/file.png.chk/mov.sh
# FUTURE WORKS
# Delete: Windows/Temp/* @ I5 pcs and also in AMD
# Delete: Users/user/AppData/Local/Temp/* |Users/TEMP.*/AppData/Local/Temp/* for I5 & also in AMD
