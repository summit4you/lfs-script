#!/bin/bash


pushd /sources/12.3
        rm -rf intltool-0.51.0
        tar xf intltool-0.51.0.tar.gz
        cd intltool-0.51.0
	sed -i 's:\\\${:\\\$\\{:' intltool-update.in
	./configure --prefix=/usr   
	make
	make check
	make  install
	install -v -Dm644 doc/I18N-HOWTO /usr/share/doc/intltool-0.51.0/I18N-HOWTO
popd

