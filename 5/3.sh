#!/bin/bash

export LFS=/mnt/lfs

pushd $LFS/sources/12.3
	rm -rf linux-6.13.4
	tar -xf linux-6.13.4.tar.xz
	cd linux-6.13.4
	make mrproper
	make headers
	find usr/include -type f ! -name '*.h' -delete
	cp -rv usr/include $LFS/usr
popd
