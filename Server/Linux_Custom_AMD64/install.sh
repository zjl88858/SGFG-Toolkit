#!/bin/bash
# Author:Turmi
# License:WTFPLv2
# Version:Pre-Release 20201019

echo -e Welcome to "\033[36;1mSGFG Toolkit\033[39;0m"!
echo Installer will automatic start in 10s.
echo Press Ctrl+C to abort.
sleep 10s

if cat /etc/issue | grep -q -E -i "debian"; then
  apt install curl whiptail gzip unzip
elif cat /etc/issue | grep -q -E -i "ubuntu"; then
  apt install curl whiptail gzip unzip
elif cat /proc/version | grep -q -E -i "el6.x86_64"; then
  yum install curl whiptail gzip unzip
elif cat /proc/version | grep -q -E -i "el7.x86_64"; then
  yum install curl whiptail gzip unzip
elif cat /proc/version | grep -q -E -i "el8.x86_64"; then
  dnf install curl whiptail gzip unzip
elif cat /etc/SuSE-release | grep -q -E -i "SUSE"; then
  zypper install curl whiptail gzip unzip
elif cat /etc/issue | grep -q -E -i "Fedora"; then
  dnf install curl whiptail gzip unzip
else
  echo what the fuck distro man?
  echo tell me on https://github.com/zjl88858/SGFG-Toolkit/issues
  exit 0
fi
{
sleep 1
mkdir -p /usr/sgfg
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
  } |  whiptail --gauge "Downloading SGFG Toolkit..." 6 60 0
