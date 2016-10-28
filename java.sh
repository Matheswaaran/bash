tar_file=$1
java_ver=$2
java_dir=/usr/local/java

# Checking the arguments
if [[ $tar_file == "" && $java_ver == "" ]]; then
	echo "Error  :Please give two arguments.."
	echo "Format : ./java.sh <tar_file> <java_version>"
else
	#Java Installation
	file /sbin/init
	sudo mkdir $java_dir
	sudo cp -r $tar_file $java_dir
	cd $java_dir
	sudo tar xvzf $tar_file

	# adding data into /etc/profile

	sudo echo "JAVA_HOME=/usr/local/java/jdk1.7.0_45
	JRE_HOME=""$""JAVA_HOME/jre
	PATH=""$""PATH:""$""JAVA_HOME/bin:""$""JRE_HOME/bin
	export JAVA_HOME
	export JRE_HOME" >> /etc/profile

	# Updating alternatives

	sudo update-alternatives --install "/usr/bin/java" "java" "/usr/local/java/jdk$java_ver/jre/bin/java" 1

	sudo update-alternatives --install "/usr/bin/javac" "javac" "/usr/local/java/jdk$java_ver/bin/javac" 1

	# set path 

	sudo update-alternatives --set java /usr/local/java/jdk$java_ver/jre/bin/java

	sudo update-alternatives --set javac /usr/local/java/jdk$java_ver/bin/javac

	# Reloading /etc/profile

	. /etc/profile

	echo "Restart your system to complete installation...."
	echo "1 --> Proceed to Restart"
	echo "2 --> Restart Later"

	read option

	if [[ $option -eq 1 ]]; then
		sudo init 6
	else
		echo "Installation Completed...."
	fi
fi