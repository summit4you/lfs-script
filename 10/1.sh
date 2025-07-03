#!/bin/bash


cat > /etc/fstab << "EOF"
# Begin /etc/fstab

# 文件系统     挂载点       类型     选项                转储  检查
#                                                              顺序

UUID=530a2a0e-00a4-4b31-953d-f1ded1ec17f1     /            ext4    defaults            1     1

# End /etc/fstab
EOF


