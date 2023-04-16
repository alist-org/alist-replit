# rm -rf alist* #Uncomment this line to update
if [ ! -f "replit" ];then
  curl -L github.com/alist-org/alist/releases/latest/download/alist-linux-musl-amd64.tar.gz -o replit.tar.gz
  tar -zxvf replit.tar.gz -O > replit
  rm -f replit.tar.gz
fi
./replit server --no-prefix

