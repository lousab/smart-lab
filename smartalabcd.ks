#Generic Kickstart template for Ubuntu
#Platform: x86 and x86-64
#

#System language
lang it_IT

#Language modules to install
langsupport it_IT

#System keyboard
keyboard it

#System mouse
mouse

#System timezone
timezone Europe/Rome

#Root password
rootpw --disabled

#Initial user (user with sudo capabilities) 
user smarta --fullname "Santa Marta" --password smarta

#Reboot after installation
reboot

#Use text mode install
text

#Install OS instead of upgrade
install

#Installation media
cdrom
#nfs --server=server.com --dir=/path/to/ubuntu/

#System bootloader configuration
bootloader --location=mbr 

#Clear the Master Boot Record
zerombr yes

#Partition clearing information
clearpart --all --initlabel 

#Basic disk partition
part / --fstype ext4 --size 1 --grow --asprimary 
part swap --size 1024 
part /boot --fstype ext4 --size 256 --asprimary 

#Advanced partition
#part /boot --fstype=ext4 --size=500 --asprimary
#part pv.aQcByA-UM0N-siuB-Y96L-rmd3-n6vz-NMo8Vr --grow --size=1
#volgroup vg_mygroup --pesize=4096 pv.aQcByA-UM0N-siuB-Y96L-rmd3-n6vz-NMo8Vr
#logvol / --fstype=ext4 --name=lv_root --vgname=vg_mygroup --grow --size=10240 --maxsize=20480
#logvol swap --name=lv_swap --vgname=vg_mygroup --grow --size=1024 --maxsize=8192

#System authorization infomation
auth  --useshadow  --enablemd5 

#Network information
network --bootproto=dhcp --device=eth0

#Firewall configuration
firewall --disabled --trust=eth0 --ssh 

#Do not configure the X Window System
#skipx

%packages
ubuntu-mate-core
ubuntu-mate-desktop
ubuntu-restricted-extra

#Per la scuola dell'infanzia
ubuntu-edu-preschool

#Per la scuola primaria
ubuntu-edu-primary

#Per le scuole medie
#ubuntu-edu-secondary

#Per le scuole superiori
#ubuntu-edu-tertiary