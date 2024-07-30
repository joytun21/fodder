#!/bin/bash
clear
DIR="https://raw.githubusercontent.com/joytun21/fodder/main/"
wget -q -O /etc/systemd/system/kill-ssh.service "${DIR}kill-vme.service" && chmod +x kill-vme.service >/dev/null 2>&1
wget -q -O /etc/systemd/system/lock-ssh.service "${DIR}kill-vle.service" && chmod +x kill-vle.service >/dev/null 2>&1
chmod +x /etc/systemd/system/kill-ssh.service
chmod +x /etc/systemd/system/lock-ssh.service

systemctl daemon-reload

echo -e "\e[92;1m RESTART AUTOKILL SSH \e[0m"
systemctl restart kill-ssh
sleep 1
echo -e "\e[92;1m RESTART AUTOLOCK SSH \e[0m"
systemctl restart lock-ssh
sleep 1
echo -e "\e[92;1m MENJALANKAN SERVICE SSH KILL \e[0m"
systemctl enable kill-ssh
sleep 1
echo -e "\e[92;1m MENJALANKAN SERVICE SSH LOCK \e[0m"
systemctl enable lock-ssh
sleep 2
clear
