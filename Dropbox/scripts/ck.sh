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
[[ $lsd = "NetHood" ]] || [[ $lsd = "Recent" ]] || [[ $lsd = "Cookies" ]] || [[ $lsd = NTUSE* ]] || [[ $lsd = "Saved Games" ]] || [[ $lsd = "Desktop" ]] || [[ $lsd = "Searches" ]] || [[ $lsd = "Documents" ]] || [[ $lsd = "SendTo" ]] || [[ $lsd = "Downloads" ]] || [[ $lsd = "Start Menu" ]] || [[ $lsd = "Favorites" ]] || [[ $lsd = "Templates" ]] || [[ $lsd = "Links" ]] || [[ $lsd = ntuse* ]] || [[ $lsd = "Videos" ]] || [[ $lsd = "Local Settings" ]] || [[ $lsd = "dle.bat" ]] || [[ $lsd = *.session ]] ||
[[ $lsd = *.log ]]

then
#	do nothing
	:
else
	echo rm -rf $lsd
fi

done
