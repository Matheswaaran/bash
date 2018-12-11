#!/bin/sh
mkdir ~/scr
call_l_i5 () {
for lsd in *
do
if 
[[ $lsd == "AppData" ]] || 
[[ $lsd == "Music" ]] || 
[[ $lsd == "Pictures" ]] || 
[[ $lsd == "Application Data" ]] || 
[[ $lsd == "My Documents" ]] || 
[[ $lsd == "PrintHood" ]] || 
[[ $lsd == "Contacts" ]] || 
[[ $lsd == "NetHood" ]] || 
[[ $lsd == "Recent" ]] || 
[[ $lsd == "Cookies" ]] || 
[[ $lsd == NTUSE* ]] || 
[[ $lsd == "Saved Games" ]] || 
[[ $lsd == "Desktop" ]] || 
[[ $lsd == "Searches" ]] || 
[[ $lsd == "Documents" ]] || 
[[ $lsd == "SendTo" ]] || 
[[ $lsd == "Downloads" ]] || 
[[ $lsd == "Start Menu" ]] || 
[[ $lsd == "Favorites" ]] || 
[[ $lsd == "Templates" ]] || 
[[ $lsd == "Links" ]] || 
[[ $lsd == ntuse* ]] || 
[[ $lsd == "Videos" ]] || 
[[ $lsd == "Local Settings" ]] || 
[[ $lsd == "dle.bat" ]] || 
[[ $lsd == *.session ]] || 
[[ $lsd == *.log ]] ||
[[ $lsd == *.ini ]] ||
[[ $lsd == "android-sdk-windows" ]] ||
[[ $lsd == "android-sdk_r22.6.2-windows" ]]
then
	:
else
	mv "$lsd" "$k"/"$m"/clean/"$rnd"/
fi
done
}
call_l_amd () {
for ld in *
do
if 
[[ $ld == "Application Data" ]] || 
[[ $ld == "dle.bat" ]] || 
[[ $ld == NTUSE* ]] || 
[[ $ld == "Recent" ]] || 
[[ $ld == "Cookies" ]] || 
[[ $ld == "Favorites" ]] || 
[[ $ld == "My Documents" ]] || 
[[ $ld == ntuse* ]] || 
[[ $ld == "SendTo" ]] || 
[[ $ld == "Debug" ]] || 
[[ $ld == "NetHood" ]] ||  
[[ $ld == "Start Menu" ]] || 
[[ $ld == "Desktop" ]] || 
[[ $ld == "Local Settings" ]] ||  
[[ $ld == "PrintHood" ]] || 
[[ $ld == "Templates" ]] ||
[[ $ld == *.ini ]]
then
	:
else 
	mv "$ld" "$k"/"$l"/clean/"$rnd"/
fi
done
}

call_i5C () {
for i5c in *
do
if 
[[ $i5c == "autoexec.bat" ]] || 
[[ $i5c == "hiberfil.sys" ]] || 
[[ $i5c == "IO.SYS" ]] || 
[[ $i5c == "MSOCache" ]] || 
[[ $i5c == "PerfLogs" ]] || 
[[ $i5c == "Recovery" ]] || 
[[ $i5c == "TurboC++" ]] || 
[[ $i5c == "config.sys" ]] || 
[[ $i5c == "inetpub" ]] || 
[[ $i5c == "jre" ]] || 
[[ $i5c == "oracle" ]] || 
[[ $i5c == "ProgramData" ]] || 
[[ $i5c == "\$Recycle.Bin" ]] || 
[[ $i5c == "Users" ]] || 
[[ $i5c == "Documents and Settings" ]] || 
[[ $i5c == "Intel" ]] || 
[[ $i5c == "MSDOS.SYS" ]] || 
[[ $i5c == "pagefile.sys" ]] || 
[[ $i5c == "Program Files" ]] || 
[[ $i5c == "System Volume Information" ]] || 
[[ $i5c == "Windows" ]] ||
[[ $i5c == "xampp" ]]
then
	:
else
	mv "$i5c" "$k"/"$m"/clean/"$rnd"/
fi
done
}
call_amdC () {
for amC in *
do
if
[[ $amC == "AUTOEXEC.BAT" ]] || 
[[ $amC == "CONFIG.SYS" ]] || 
[[ $amC == "IO.SYS" ]] || 
[[ $amC == "MSDOS.SYS" ]] || 
[[ $amC == "ntldr" ]] || 
[[ $amC == "pagefile.sys" ]] || 
[[ $amC == "RECYCLER" ]] || 
[[ $amC == "System Volume Information" ]] || 
[[ $amC == "WINDOWS" ]] || 
[[ $amC == "boot.ini" ]] || 
[[ $amC == "Documents and Settings" ]] || 
[[ $amC == "Java" ]] || 
[[ $amC == "NTDETECT.COM" ]] || 
[[ $amC == "oracle" ]] || 
[[ $amC == "Program Files" ]] || 
[[ $amC == "SWSetup" ]] || 
[[ $amC == "TC" ]]
then 
	:
else
	mv "$amC" "$k"/"$l"/clean/"$rnd"/
fi
done
}

call_sdk () {
for sdK in *
do
if
[[ $sdK == "add-ons" ]] ||
[[ $sdK == "AVD Manager.exe" ]] ||
[[ $sdK == "build-tools" ]] ||
[[ $sdK == "extras" ]] ||
[[ $sdK == "platforms" ]] ||
[[ $sdK == "platform-tools" ]] ||
[[ $sdK == "SDK Manager.exe" ]] ||
[[ $sdK == "SDK Readme.txt" ]] ||
[[ $sdK == "sources" ]] ||
[[ $sdK == "system-images" ]] ||
[[ $sdK == "temp" ]] ||
[[ $sdK == "tools" ]] ||
[[ $sdK == "ndk-bundle" ]]
then	:
else	mv "$sdK" "$k"/"$m"/clean/"$rnd"/
fi
done
}

del_call_amd () {
mv *.C "$k"/"$l"/clean/"$rnd"/ && mv *.c "$k"/"$l"/clean/"$rnd"/ && mv *.CPP "$k"/"$l"/clean/"$rnd"/
mv *.cpp "$k"/"$l"/clean/"$rnd"/ && mv *.BAK "$k"/"$l"/clean/"$rnd"/ && mv *.bak "$k"/"$l"/clean/"$rnd"/
mv *.txt "$k"/"$l"/clean/"$rnd"/ && mv *.TXT "$k"/"$l"/clean/"$rnd"/ && mv *.vbp "$k"/"$l"/clean/"$rnd"/ 
mv *.frm "$k"/"$l"/clean/"$rnd"/ && mv *.dsw "$k"/"$l"/clean/"$rnd"/ && mv *.dsp "$k"/"$l"/clean/"$rnd"/
mv *.rps "$k"/"$l"/clean/"$rnd"/ && mv *.java "$k"/"$l"/clean/"$rnd"/ && mv *.mdb "$k"/"$l"/clean/"$rnd"/ 
mv *.jpg "$k"/"$l"/clean/"$rnd"/ && mv *.tif "$k"/"$l"/clean/"$rnd"/ && mv *.bmp "$k"/"$l"/clean/"$rnd"/ 
mv *.docx "$k"/"$l"/clean/"$rnd"/ && mv *.doc "$k"/"$l"/clean/"$rnd"/ && mv *.ppt "$k"/"$l"/clean/"$rnd"/ 
mv *.pdf "$k"/"$l"/clean/"$rnd"/ && mv *.xls "$k"/"$l"/clean/"$rnd"/ && mv *.html "$k"/"$l"/clean/"$rnd"/
mv *.xml "$k"/"$l"/clean/"$rnd"/ && mv *.jsp "$k"/"$l"/clean/"$rnd"/ && mv *.zip "$k"/"$l"/clean/"$rnd"/ 
mv *.rar "$k"/"$l"/clean/"$rnd"/ && mv *.png "$k"/"$l"/clean/"$rnd"/ && mv *.js "$k"/"$l"/clean/"$rnd"/
}

del_call_i5 () {
mv *.C "$k"/"$m"/clean/"$rnd"/ && mv *.c "$k"/"$m"/clean/"$rnd"/ && mv *.CPP "$k"/"$m"/clean/"$rnd"/
mv *.cpp "$k"/"$m"/clean/"$rnd"/ && mv *.BAK "$k"/"$m"/clean/"$rnd"/ && mv *.bak "$k"/"$m"/clean/"$rnd"/
mv *.txt "$k"/"$m"/clean/"$rnd"/ && mv *.TXT "$k"/"$m"/clean/"$rnd"/ && mv *.vbp "$k"/"$m"/clean/"$rnd"/ 
mv *.frm "$k"/"$m"/clean/"$rnd"/ && mv *.dsw "$k"/"$m"/clean/"$rnd"/ && mv *.dsp "$k"/"$m"/clean/"$rnd"/
mv *.rps "$k"/"$m"/clean/"$rnd"/ && mv *.java "$k"/"$m"/clean/"$rnd"/ && mv *.mdb "$k"/"$m"/clean/"$rnd"/ 
mv *.jpg "$k"/"$m"/clean/"$rnd"/ && mv *.tif "$k"/"$m"/clean/"$rnd"/ && mv *.bmp "$k"/"$m"/clean/"$rnd"/ 
mv *.docx "$k"/"$m"/clean/"$rnd"/ && mv *.doc "$k"/"$m"/clean/"$rnd"/ && mv *.ppt "$k"/"$m"/clean/"$rnd"/ 
mv *.pdf "$k"/"$m"/clean/"$rnd"/ && mv *.xls "$k"/"$m"/clean/"$rnd"/ && mv *.html "$k"/"$m"/clean/"$rnd"/
mv *.xml "$k"/"$m"/clean/"$rnd"/ && mv *.jsp "$k"/"$m"/clean/"$rnd"/ && mv *.zip "$k"/"$m"/clean/"$rnd"/ 
mv *.rar "$k"/"$m"/clean/"$rnd"/ && mv *.png "$k"/"$m"/clean/"$rnd"/ && mv *.js "$k"/"$m"/clean/"$rnd"/
}

find_del_call_amd () {
find . -name "*.[c|C]" -print0| xargs -0 -I {} mv {} "$k"/"$l"/clean/"$rnd"/
find . -name "*.[c|C][p|P][p|P]" -print0| xargs -0 -I {} mv {} "$k"/"$l"/clean/"$rnd"/
find . -name "*.[b|B][a|A][k|K]" -print0| xargs -0 -I {} mv {} "$k"/"$l"/clean/"$rnd"/
find . -name "*.[t|T][x|X][t|T]" -print0| xargs -0 -I {} mv {} "$k"/"$l"/clean/"$rnd"/
find . -name "*.[d|D][o|O][c|C]" -print0| xargs -0 -I {} mv {} "$k"/"$l"/clean/"$rnd"/
find . -name "*.[d|D][o|O][c|C][x|X]" -print0| xargs -0 -I {} mv {} "$k"/"$l"/clean/"$rnd"/
find . -name "*.[p|P][d|D][f|F]" -print0| xargs -0 -I {} mv {} "$k"/"$l"/clean/"$rnd"/
find . -name "*.[j|J][p|P][g|G]" -print0| xargs -0 -I {} mv {} "$k"/"$l"/clean/"$rnd"/
}

find_del_call_i5 () {
find . -name "*.[c|C]" -print0| xargs -0 -I {} mv {} "$k"/"$m"/clean/"$rnd"/
find . -name "*.[c|C][p|P][p|P]" -print0| xargs -0 -I {} mv {} "$k"/"$m"/clean/"$rnd"/
find . -name "*.[b|B][a|A][k|K]" -print0| xargs -0 -I {} mv {} "$k"/"$m"/clean/"$rnd"/
find . -name "*.[t|T][x|X][t|T]" -print0| xargs -0 -I {} mv {} "$k"/"$m"/clean/"$rnd"/
find . -name "*.[d|D][o|O][c|C]" -print0| xargs -0 -I {} mv {} "$k"/"$m"/clean/"$rnd"/
find . -name "*.[d|D][o|O][c|C][x|X]" -print0| xargs -0 -I {} mv {} "$k"/"$m"/clean/"$rnd"/
find . -name "*.[p|P][d|D][f|F]" -print0| xargs -0 -I {} mv {} "$k"/"$m"/clean/"$rnd"/
find . -name "*.[j|J][p|P][g|G]" -print0| xargs -0 -I {} mv {} "$k"/"$m"/clean/"$rnd"/
}

rnd=$(date|sed 's/\:/\ /g'|awk '{print $2"_"$3"_"$4"_"$5"_"$6}')
mkdir -p ~/scr
j=/home/kannan/rscript
k=/home/kannan/mount/client
l=Documents\ and\ Settings/Administrator
m=Users/Administrator
pwd1="maffei2"
pwd2="PSNACETIT"
cd ~/scr && echo unmounting:$k && umount $k -f
date > $j/log_del.txt
echo "SysIP:Found-Y/N:Mounted-Y/N" >> $j/log_del.txt
#=============While loop repeat================
while :
do
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
	if [ $? == 0 ]
	then
		echo trying as AMD!
		mount //192.168.6.$i/c$ $k/ -o username=Administrator,password=$pwd1
		if [ -d "$k/TC" ]
		then
			echo Its AMD!
			if [[ -d "$k/$l/clean" ]] ;then :;else mkdir -p "$k"/"$l"/clean;fi
			mkdir -p "$k"/"$l"/clean/"$rnd" && mkdir -p "$k"/"$l"/clean/"$rnd"/"$rnd"
			cd $k/TC/
			del_call_amd
			cd $k/TC/BIN/
			del_call_amd
			find_del_call_amd
			echo TC cleaned
			cd ~/scr
			cd $k/Documents\ and\ Settings/user/My\ Documents/ && mv * "$k"/"$l"/clean/"$rnd"
			cd $k/Documents\ and\ Settings/user/Desktop/ && mv * "$k"/"$l"/clean/"$rnd"
			echo "Docs & Desk cleaned"
			cd ~/scr && cd $k/
			call_amdC
			echo C drive Cleaned
			cd ~/scr && cd $k/Documents\ and\ Settings/user/
			call_l_amd
			echo user folder cleaned			
			mv $k/RECYCLER/* "$k"/"$l"/clean/"$rnd"/"$rnd"
			rm -rf $k/RECYCLER/*
			echo Recycle Bin cleaned
			rm -f $j/sys/$i.tx
			echo ====================================================================IT$i is done!...
		else
			cd ~/scr && echo unmounting:$k && umount $k -f
			echo trying as I5
			mount //192.168.6.$i/c$ $k/ -o username=Administrator,password=$pwd2
			if [ -d "$k/Users" ]
                	then
				echo Its I5
				if [[ -d "$k/$m/clean" ]] ;then :;else mkdir -p "$k"/"$m"/clean;fi
				mkdir -p "$k"/"$m"/clean/"$rnd" && mkdir -p "$k"/"$m"/clean/"$rnd"/"$rnd"
                        	cd $k/TurboC++/				
                        	del_call_i5
                        	cd $k/TurboC++/Disk/TurboC3/BIN/
	                       	del_call_i5
				find_del_call_i5
				echo TC cleaned
				cd ~/scr
				cd $k/Users/user/Documents && mv * "$k"/"$m"/clean/"$rnd"/
				cd $k/Users/user/Desktop && mv * "$k"/"$m"/clean/"$rnd"/
				cd $k/Users/user/Downloads && mv * "$k"/"$m"/clean/"$rnd"/
				cd $k/Users/user/Pictures && mv * "$k"/"$m"/clean/"$rnd"/
				cd $k/Users/user/Videos && mv * "$k"/"$m"/clean/"$rnd"/
				cd $k/Users/user/Favorites && mv * "$k"/"$m"/clean/"$rnd"/
				cd $k/Users/user/Music && mv * "$k"/"$m"/clean/"$rnd"/
				echo user Docs, Desk, Dwnld, Pics, Vids Musc cleaned
				cd $k/Users/Public/Documents && mv * "$k"/"$m"/clean/"$rnd"/
				cd $k/Users/Public/Desktop && mv * "$k"/"$m"/clean/"$rnd"/
				cd $k/Users/Public/Downloads && mv * "$k"/"$m"/clean/"$rnd"/
				cd $k/Users/Public/Pictures && mv * "$k"/"$m"/clean/"$rnd"/
				cd $k/Users/Public/Videos && mv * "$k"/"$m"/clean/"$rnd"/
				cd $k/Users/Public/Favorites && mv * "$k"/"$m"/clean/"$rnd"/
				cd $k/Users/Public/Music && mv * "$k"/"$m"/clean/"$rnd"/
				echo Public Docs, Desk, Dwnld, Pics, Vids Musc cleaned
				cd ~/scr && cd $k/
				call_i5C
				echo C Drive cleaned
				cd ~/scr && cd $k/Users/user				
				call_l_i5
				echo user folder cleaned
				cd ~/scr && cd $k/Users/Public				
				call_l_i5
				cd ~/scr && cd $k/Users/Public/android-sdk-windows
				call_sdk
				cd ~/scr && cd $k/Users/Public/android-sdk_r22.6.2-windows
				call_sdk
				echo Public folder cleaned
				mkdir -p "$k"/"$m"/clean/"$rnd"/projs234 && mv $k/Users/TEMP.*/AndroidStu*/* "$k"/"$m"/clean/"$rnd"/projs234/
				echo TEMP Profile files cleaned
				mv $k/\$Recycle.Bin/* "$k"/"$m"/clean/"$rnd"/"$rnd"
				rm -rf $k/\$Recycle.Bin/*
				echo Recycle Bin cleaned
				mv "$k/$m/clean"/*/*.ova  "$k/Users/user/Documents/"
				mv "$k/$m/clean"/*/Nebula  "$k/Users/user/Documents/"
				mv "$k/$m/clean"/*/xampp  "$k/"
				mv "$k/Users/user/VirtualBox VMs"/* "$k/$m/clean/$rnd/"
				rm -f $j/sys/$i.tx
				echo ====================================================================IT$i is done!...
			else
				if [[ $(cat $j/log_del.txt|grep IT$i\:Y\:N) == "" ]]; then echo IT$i\:Y\:N >> $j/log_del.txt; else :;fi
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
# /home/kannan/Dropbox/scripts/file.png.ch/mov.sh
# FUTURE WORKS
# Delete: Windows/Temp/* @ I5 pcs and also in AMD
# Delete: Users/user/AppData/Local/Temp/* |Users/TEMP.*/AppData/Local/Temp/* for I5 & also in AMD
