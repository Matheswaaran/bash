y=$1
echo $y
y=$(echo $y | tr '[:lower:]' '[:upper:]')
echo $y
echo $y | tr '[:upper:]' '[:lower:]'
echo  "For bash version 4 & above..."
echo ${y^^}
#echo $z
echo ${y,,}
#echo $z


