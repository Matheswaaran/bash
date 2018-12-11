#call_i5C () {
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
	echo i5 check rm -rf $i5c
fi
done
#}
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
	echo amd check rm -rf $amC
fi
done
