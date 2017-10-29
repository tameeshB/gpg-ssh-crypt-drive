tim="$(date +%s)"
filen="root_.tar.gz"
#echo -ne 'Initialising...\t####            \r'
echo  'Initialising...'
mv root.* oldroot/${tim}_${filen}
mv root_.* oldroot/${tim}_${filen}
#echo -ne 'Accumulating...\t#########            \r'
echo  'Accumulating...'
tar --exclude='oldroot' --exclude='root.tar.gz' -czf root.tar.gz data
#echo -ne 'Encrypting...\t##################     \r'
echo 'Encrypting...'
gpg --symmetric < root.tar.gz > root_.tar.gz
#echo -ne 'Almost there...\t#######################  \r'
echo 'Almost there...'
rm -f root.tar.gz
rm -rf data
#echo -ne 'Done!...\t#############################\r'
echo 'Done!...'
echo '';
#echo -ne 'Exitting in 3\r'
#sleep 1
#echo -ne 'Exitting in 2\r'
#sleep 1
echo 'Exitting'

