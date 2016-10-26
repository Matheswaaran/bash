for i in {a..d}
do
	if [[ "$i" == "b" ]]
	then
		echo "exit"
	else
		echo $i
	fi
done
