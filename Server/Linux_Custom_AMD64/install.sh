#!/bin/bash
# Author:Turmi
# License:WTFPLv2
# Version:Pre-Release 20201019

echo -e Welcome to "\033[36;1mSGFG Toolkit\033[39;0m"!
echo Installer will automatic start in 10s.
echo Press Ctrl+C to abort.
sleep 10s

if cat /etc/issue | grep -q -E -i "debian"; then
  apt install curl
elif cat /etc/issue | grep -q -E -i "ubuntu"; then
  apt install curl
elif cat /proc/version | grep -q -E -i "el6.x86_64"; then
  yum install curl
elif cat /proc/version | grep -q -E -i "el7.x86_64"; then
  yum install curl
elif cat /proc/version | grep -q -E -i "el8.x86_64"; then
  dnf install curl
elif cat /etc/SuSE-release | grep -q -E -i "SUSE"; then
  zypper install curl
elif cat /etc/issue | grep -q -E -i "Fedora"; then
  dnf install curl
else
  echo what the fuck distro man?
  echo tell me on https://github.com/zjl88858/SGFG-Toolkit/issues
  exit 0
fi
