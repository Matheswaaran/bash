#==========================================
#            File check
#==========================================
# method 1 using 'test'
#==========================================
# test -f <filename.ext> && <true part say "echo yes"> || <false part>
# example:
test -f mozilla.pdf && echo yes || echo no
#==========================================
# method 2 using 'if else'
#==========================================
# using if else
#!/bin/bash
file="/etc/hosts"
if [ -f "$file" ]
then
	echo "$file found."
else
	echo "$file not found."
fi
#==========================================
#          Ping check
#==========================================
#ping <ip> -c <no. of pings>
#if [ $? = 0 ]
#then
#  echo ok
#else
#  echo ng
#fi
#==========================================
# example
ping 192.168.6.254 -c 1
if [ $? = 0 ]
then
  echo ok
else
  echo ng
fi
