#!/bin/bash


pushd /sources/12.3
        rm -rf gawk-5.3.1
        tar xf gawk-5.3.1.tar.xz
       cd gawk-5.3.1
sed -i 's/extras//' Makefile.in
./configure --prefix=/usr
       make
chown -R tester .
su tester -c "PATH=$PATH make check"	
rm -f /usr/bin/gawk-5.3.1
make  install
popd

