mkdir oldroot
mkdir data
echo "Now store all data inside the data/ directory and then run 'sout' to encrypt and exit "
touch ~/.bashrc
echo "#ssh-crypt-drive" >> ~/.bashrc
echo "alias sout='./logout.sh && exit'" >> ~/.bashrc
echo "alias lin='./login.sh'" >> ~/.bashrc
source ~/.bashrc
chmod +x login.sh
chmod +x logout.sh
