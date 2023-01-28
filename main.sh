aria2_setup(){
[ -d .aria2 ] && rm -rf .aria2
mkdir -p .aria2
cd .aria2
wget https://github.com/P3TERX/aria2.conf/archive/refs/heads/master.tar.gz
tar -zxvf master.tar.gz --strip-components=1
rm -rf master.tar.gz
sed -i 's|rpc-secret|#rpc-secret|g' ./aria2.conf
sed -i 's|/root/||g' ./aria2.conf
touch aria2.session
./tracker.sh
cd ..
aria2c --conf-path=.aria2/aria2.conf -Z
}

# rm -rf alist* #Uncomment this line to update
if [ ! -f "alist" ];then
  curl -L https://github.com/alist-org/alist/releases/latest/download/alist-linux-musl-amd64.tar.gz -o alist.tar.gz
  tar -zxvf alist.tar.gz
  rm -f alist.tar.gz
fi
# aria2_setup #Uncomment this setup aria2
./alist server --no-prefix
