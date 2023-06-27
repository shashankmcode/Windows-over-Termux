#!/bin/bash
#setting up environment
pkg update -y
pkg upgrade -y 
pkg install qemu-system-x86_64 x11-repo wget -y

#download iso file + store it in download section
ISO_URL="shorturl.at/gpRY5"
ISO_FILE="/storage/emulated/0/Download"
wget -P /storage/emulated/0/Download -O ISO_FILE.iso "$ISO_URL"


echo "Enter size of ram to be allocated"
read ram
echo "Your server ip is 127.0.0.1:2"
qemu-system-x86_64 -m $ram -cdrom /storage/emulated/0/Download/ISO_FILE.iso -vnc 127.0.0.1:2
