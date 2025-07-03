#!/bin/bash

cat > /boot/grub/grub.cfg << "EOF"
# Begin /boot/grub/grub.cfg
set default=0
set timeout=5

insmod part_gpt
insmod ext2
set root=(hd0)
set gfxpayload=1024x768x32

menuentry "GNU/Linux, Linux 6.13.4-lfs-12.3-systemd" {
        linux   /boot/vmlinuz-6.13.4-lfs-12.3-systemd root=/dev/sda rw console=ttyS0
}
EOF

