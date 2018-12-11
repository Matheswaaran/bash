echo OUTPUT
echo ============================
for i in *.jpg; do echo $i; done
echo ============================
for i in *.jpg; do echo ${i/.jpg/}; done
echo ============================
for i in *.jpg; do echo ${i/.jpg/.pdf}; done
echo ============================
