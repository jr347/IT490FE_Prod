packageNum=`./getPrev.php FEpackage-v | xargs`
sudo cp /home/johnny/Desktop/feqav-$packageNum.tar.gz /var/www/html

cd /var/www/html

sudo tar -zxvf feqav-$packageNum.tar.gz

cd /home/johnny/Desktop
sudo rm -r feq*
