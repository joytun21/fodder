#!/bin/bash
clear

export PATH=/luna/run
# // Menjalankan Pungsi Dengan Crontab
########################################
### MEMASANG PUNGSI AUTO KE CRONTAB ###
########################################
echo " Memasang autobackup ke cron.d "
# // Jalankan pungsi Limit-ssh setiap 1 menit
echo "*/50 * * * *  root /usr/local/sbin/otwbackup" >>/etc/cron./otwbackup
sleep 1
echo " Memasang Clear Cache ke cron.d"
# // Jalankan pungsi Limit-ssh setiap 1 menit
echo "*/1 * * * *  root /usr/local/sbin/clearcache" >>/etc/cron.d/clearcache
sleep 1