rm -rf alist* data/
curl -L https://github.com/Xhofe/alist/releases/latest/download/alist-linux-amd64.tar.gz -o alist.tar.gz
tar -zxvf alist.tar.gz
mv alist-linux-amd64 alist
./alist -docker
