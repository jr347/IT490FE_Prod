input="/home/johnny/feqa/config"
packageNum=`./getPackageNum.php FEpackage-v | xargs`
echo $packageNum
cd /tmp/
mkdir feqav-
while IFS= read -r a
do sudo cp -r $a /tmp/feqav-
done < "$input"
tar -czvf feqav-$packageNum.tar.gz feqav-

scp feqav-$packageNum.tar.gz kamran@192.168.43.104:/home/kamran/git/IT490/rabbitmqexample/rabbitmqtest

cd /tmp/
sudo rm -r feqav-
sudo rm feqav-$packageNum.tar.gz

cd /home/johnny/feqa
./sendDeployR.php
