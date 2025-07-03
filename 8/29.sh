#!/bin/bash


pushd /sources/12.3
        rm -rf sed-4.9
        tar xf sed-4.9.tar.xz
        cd sed-4.9
	./configure --prefix=/usr   
	make
	make html
	chown -R tester .
su tester -c "PATH=$PATH make check"
	make  install
install -d -m755           /usr/share/doc/sed-4.9
install -m644 doc/sed.html /usr/share/doc/sed-4.9
popd

