#general init script
mkdir oldroot
mkdir data
echo "Now store all data inside the data/ directory and then run 'sout' to encrypt and exit "
touch ~/.bashrc
echo "#ssh-crypt-drive" >> ~/.bashrc
echo "alias sout='./logout.sh && exit'" >> ~/.bashrc
echo "alias lin='./login.sh'" >> ~/.bashrc
touch 1logged-in

#bashrc alias-ing stuff
source ~/.bashrc
chmod +x login.sh
chmod +x logout.sh
touch ~/.bash_profile

#bash-prof onlogin stuff
echo "#ssh-crypto" >> ~/.bash_profile
echo "tim='$(date)'" >> ~/.bash_profile
echo "llop1 = '$(ll | grep \'root\')'" >> ~/.bash_profile
echo "echo \"Login.sh trigger at [${tim}] -- ${llop1}\">>ssh-crypto.log" >> ~/.bash_profile
echo "lin" >> ssh-crypto.log
echo "llop2='$(ll | grep \'data\')'" >> ~/.bash_profile
echo "echo \"Login.sh trigger at [${tim}] -- ${llop2}\">>ssh-crypto.log" >> ~/.bash_profile

