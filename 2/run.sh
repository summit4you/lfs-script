#!/bin/bash

export LFS=/mnt/lfs
umask 022

mkdir -pv $LFS
mount -v -t ext4 --uuid 530a2a0e-00a4-4b31-953d-f1ded1ec17f1 $LFS
mkdir -v $LFS/boot
mount -v -t ext4 --uuid 31ee305d-ef81-422d-9c6e-742d75e6697f $LFS/boot

chown root:root $LFS
chmod 755 $LFS

mkdir -v $LFS/sources

#为该目录添加写入权限和 sticky 标志。“Sticky” 标志使得即使有多个用户
#对该目录有写入权限，也只有文件所有者能够删除其中的文件
chmod -v a+wt $LFS/sources

pushd $LFS/sources
	wget https://mirrors.ustc.edu.cn/lfs/lfs-packages/lfs-packages-12.3.tar
	tar xf lfs-packages-12.3.tar
	rm lfs-packages-12.3.tar
	cd 12.3
	cp $LFS/lfs-build/2/md5sums .
	md5sum -c md5sums
popd

chown root:root $LFS/sources/*
