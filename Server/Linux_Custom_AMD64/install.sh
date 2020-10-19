#!/bin/bash
# Author:Turmi
# License:WTFPLv2
# Version:Pre-Release 20201019

echo -e Welcome to "\033[36;1mSGFG Toolkit\033[39;0m"!
echo Installer will automatic start in 10s.
echo Press Ctrl+C to abort.
sleep 10s

if cat /etc/issue | grep -q -E -i "debian"; then
  apt update
  apt install curl whiptail gzip unzip -y
elif cat /etc/issue | grep -q -E -i "ubuntu"; then
  apt update
  apt install curl whiptail gzip unzip -y
elif cat /proc/version | grep -q -E -i "el6.x86_64"; then
  yum makecache
  yum install curl whiptail gzip unzip -y
elif cat /proc/version | grep -q -E -i "el7.x86_64"; then
  yum makecache
  yum install curl whiptail gzip unzip -y
elif cat /proc/version | grep -q -E -i "el8.x86_64"; then
  dnf makecache
  dnf install curl whiptail gzip unzip -y
elif cat /etc/SuSE-release | grep -q -E -i "SUSE"; then
  zypper install curl whiptail gzip unzip -y
elif cat /etc/issue | grep -q -E -i "Fedora"; then
  dnf makecache
  dnf install curl whiptail gzip unzip -y
else
  echo what the fuck distro man?
  echo tell me on https://github.com/zjl88858/SGFG-Toolkit/issues
  exit 0
fi

{
sleep 1
wget -q https://github.com/ginuerzh/gost/releases/download/v2.11.1/gost-linux-amd64-2.11.1.gz >/dev/null
gunzip gost-linux-amd64-2.11.1.gz
echo 10
sleep 1
wget -q https://github.com/txthinking/brook/releases/download/v20200909/brook_linux_amd64 >/dev/null
echo 20
sleep 1
wget -q https://github.com/esrrhs/pingtunnel/releases/download/2.4/pingtunnel_linux64.zip >/dev/null
unzip pingtunnel_linux64.zip
echo 30
sleep 1
wget -q https://github.com/zjl88858/SGFG-Toolkit/raw/main/Server/Linux_Custom_AMD64/cfssl >/dev/null
echo 35
sleep 1
wget -q https://github.com/zjl88858/SGFG-Toolkit/raw/main/Server/Linux_Custom_AMD64/cfssl-certinfo >/dev/null
echo 40
sleep 1
wget -q https://github.com/zjl88858/SGFG-Toolkit/raw/main/Server/Linux_Custom_AMD64/cfssljson >/dev/null
echo 45
sleep 1
wget -q https://github.com/zjl88858/SGFG-Toolkit/raw/main/Server/Linux_Custom_AMD64/ca-config.json >/dev/null
echo 46
sleep 1
wget -q https://github.com/zjl88858/SGFG-Toolkit/raw/main/Server/Linux_Custom_AMD64/ca-csr.json >/dev/null
echo 47
sleep 1
wget -q https://github.com/zjl88858/SGFG-Toolkit/raw/main/Server/Linux_Custom_AMD64/ca-key.pem >/dev/null
echo 48
sleep 1
wget -q https://github.com/zjl88858/SGFG-Toolkit/raw/main/Server/Linux_Custom_AMD64/ca.pem >/dev/null
echo 49
sleep 1
wget -q https://github.com/zjl88858/SGFG-Toolkit/raw/main/Server/Linux_Custom_AMD64/config.json >/dev/null
echo 50
sleep 1
wget -q https://github.com/zjl88858/SGFG-Toolkit/raw/main/Server/Linux_Custom_AMD64/csr.json >/dev/null
echo 51
sleep 1
wget -q https://github.com/zjl88858/SGFG-Toolkit/raw/main/Server/Linux_Custom_AMD64/server-csr.json >/dev/null
echo 52
sleep 1
mkdir -p /usr/sgfg/cert
mv gost-linux-amd64-2.11.1 /usr/sgfg/gost
echo 60
mv brook_linux_amd64 /usr/sgfg/brook
echo 61
mv pingtunnel /usr/sgfg/pingtunnel
echo 62
mv cfssl /usr/sgfg/cert/cfssl
echo 63
mv cfssl-certinfo /usr/sgfg/cert/cfssl-certinfo
echo 64
mv cfssljson /usr/sgfg/cert/cfssljson
echo 65
mv ca-config.json /usr/sgfg/cert/
echo 66
mv ca-csr.json /usr/sgfg/cert/
echo 67
mv ca-key.pem /usr/sgfg/cert/
echo 68
mv ca.pem /usr/sgfg/cert/
echo 69
mv config.json /usr/sgfg/cert/
echo 70
mv csr.json /usr/sgfg/cert/
echo 71
mv server-csr.json /usr/sgfg/cert/
echo 80
sleep 1
chmod +x /usr/sgfg/gost
echo 81
chmod +x /usr/sgfg/brook
echo 82
chmod +x /usr/sgfg/pingtunnel
echo 83
chmod +x /usr/sgfg/cert/cfssl
echo 84
chmod +x /usr/sgfg/cert/cfssl-certinfo
echo 85
chmod +x /usr/sgfg/cert/cfssljson
echo 90
sleep 1
wget -q https://github.com/zjl88858/SGFG-Toolkit/raw/main/Server/Linux_Custom_AMD64/SGFG >/dev/null
echo 95
sleep 1
mv SGFG /usr/bin/sgfg
chmod +x /usr/bin/sgfg
echo 100
sleep 1
  } |  whiptail --gauge "Downloading SGFG Toolkit..." 6 60 0
echo install complete.
