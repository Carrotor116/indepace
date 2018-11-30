#!/bin/bash 

old=$(which proxychains4 || ls ~/.opt/ | grep proxychains-ng)

if [ -n "$old" ];then
  echo 'proxychains has installed'
  exit
fi

git clone https://github.com/rofl0r/proxychains-ng.git ~/.opt/proxychains-ng 
cd ~/.opt/proxychains-ng && ./configure && make
echo "alias proxychains4='/home/nls1/nonu/.opt/proxychains-ng/proxychains4 -f /home/nls1/nonu/.opt/proxychains-ng/src/proxychains.conf'" >> ~/.alias
echo -e "\ninstall succeed\nyou need to point out proxy server in ~/.opt/proxychains-ng/src/proxychains.conf to make sure proxychains4 workround\n"
