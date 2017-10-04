
for ((i=1;i<10;i++));
do
  docker stop node$i >/dev/null 2>/dev/null
#  docker rm node$i >/dev/null 2>/dev/null
done
