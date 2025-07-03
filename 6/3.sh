#!/bin/bash

export LFS=/mnt/lfs

pushd $LFS/sources/12.3
        rm -f bash-5.2.37
        tar xf bash-5.2.37.tar.gz
        cd bash-5.2.37
./configure --prefix=/usr                      \
            --build=$(sh support/config.guess) \
            --host=$LFS_TGT                    \
            --without-bash-malloc
make
make  DESTDIR=$LFS install
ln -sv bash $LFS/bin/sh
popd

