# rm -rf alist* data/ #Uncomment this line to update
if [ ! -f "alist" ];then
  curl -L https://github.com/Xhofe/alist/releases/latest/download/alist-linux-amd64.tar.gz -o alist.tar.gz
  tar -zxvf alist.tar.gz
  rm -f alist.tar.gz
  mv alist-linux-amd64 alist
fi
./alist -docker
