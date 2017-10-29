#tim="$(date +%s)"
#filen="root_.tar.gz"
#mv root* oldroot/${tim}${filen}
#tar --exclude='oldroot' --exclude='root.tar.gz' -czf root.tar.gz data
#echo -ne 'Decrypting...\t#####                     \r'
echo  'Decrypting...'
gpg --decrypt < root_.tar.gz > root.tar.gz
#echo -ne 'Inflating...\t##############             \r'
echo  'Inflating...'
tar xzf root.tar.gz
#echo -ne 'Almost done...\t#####################      \r'
echo 'Almost done...'
rm -f root.tar.gz
echo 'Complete...'
#mv data data2
