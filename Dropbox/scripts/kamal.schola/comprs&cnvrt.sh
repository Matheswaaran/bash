# This script will convert all 'jpg' files under current folder in to 'pdf' files size less than 125KB
# First command will replace all empty spaces in file names by '_' 
for i in *.jpg; do mv "$i" "${i/ /_}"
a=126976
#a=124KB

mkdir ok

echo " " > ok/log.txt

for j in *.jpg
do
{
rm -f ok/${j/.jpg/.pdf};
echo "$j working...";
	for k in {35..20..-1}
	do
	{
	convert $j -resize $k% ok/tmp.pdf;
	b=$(wc -c <ok/tmp.pdf);

		if [ $b -ge $a ];
		then 
		rm -f ok/tmp.pdf;
		else
		echo "$j size = "$(wc -c <$j)" & compress % is $k" >> ok/log.txt 
		mv ok/tmp.pdf ok/${j/.jpg/.pdf}
		echo Done
		break;
		fi

	}
	done

}
done
