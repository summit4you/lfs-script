#!/bin/bash

export LFS=/mnt/lfs

pushd $LFS/sources/12.3
	cd gcc-14.2.0/libstdc++-v3
mkdir -v build
cd       build
../configure           \
    --host=$LFS_TGT                 \
    --build=$(../config.guess)      \
    --prefix=/usr                   \
    --disable-multilib              \
    --disable-nls                   \
    --disable-libstdcxx-pch         \
    --with-gxx-include-dir=/tools/$LFS_TGT/include/c++/14.2.0
make
make DESTDIR=$LFS install
rm -v $LFS/usr/lib/lib{stdc++{,exp,fs},supc++}.la
popd
