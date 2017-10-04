docker network create enckv >/dev/null 2>/dev/null
sudo ntpdate  time.nist.gov

for ((i=1;i<10;i++));
do
  docker run -d --rm --name node$i --network enckv enckv
done
