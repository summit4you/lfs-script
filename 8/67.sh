#!/bin/bash


pushd /sources/12.3
        rm -rf make-4.4.1
        tar xf make-4.4.1.tar.gz
        cd make-4.4.1
	./configure --prefix=/usr   
	make
	chown -R tester .
su tester -c "PATH=$PATH make check"
	make  install
popd

