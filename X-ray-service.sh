#!/bin/bash
clear
DIR="https://raw.githubusercontent.com/joytun21/fodder/main/"
wget -q -O /etc/systemd/system/kill-vme.service "${DIR}kill-vme.service" && chmod +x kill-vme.service >/dev/null 2>&1
wget -q -O /etc/systemd/system/kill-vle.service "${DIR}kill-vle.service" && chmod +x kill-vle.service >/dev/null 2>&1
wget -q -O /etc/systemd/system/kill-tro.service "${DIR}kill-tro.service" && chmod +x kill-tro.service >/dev/null 2>&1
wget -q -O /etc/systemd/system/kill-ssr.service "${DIR}kill-ssr.service" && chmod +x kill-ssr.service >/dev/null 2>&1



chmod +x /etc/systemd/system/kill-vme.service
chmod +x /etc/systemd/system/kill-vle.service
chmod +x /etc/systemd/system/kill-tro.service
chmod +x /etc/systemd/system/kill-ssr.service

echo -e "\e[92;1m RESTART VLESS KILL \e[0m"
systemctl restart kill-vle
sleep 1
echo -e "\e[92;1m RESTART VMESS KILL \e[0m"
systemctl restart kill-vme
sleep 1
echo -e "\e[92;1m RESTART TROJAN KILL \e[0m"
systemctl restart kill-tro
sleep 1
echo -e "\e[92;1m RESTART SDWSK KILL \e[0m"
systemctl restart kill-ssr
sleep 1
echo -e "\e[92;1m MENJALANKAN SERVICE VMESS KILL \e[0m"
systemctl enable kill-vme
sleep 1
echo -e "\e[92;1m MENJALANKAN SERVICE VLESS KILL \e[0m"
systemctl enable kill-vle
sleep 1
echo -e "\e[92;1m MENJALANKAN SERVICE TRJAN KILL \e[0m"
systemctl enable kill-tro
sleep 1
echo -e "\e[92;1m MENJALANKAN SERVICE SDWSK KILL \e[0m"
systemctl enable kill-ssr
sleep 2
clear
