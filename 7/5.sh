#!/bin/bash


pushd /sources/12.3
	rm -f gettext-0.24
	tar xf gettext-0.24.tar.xz
	cd gettext-0.24
	./configure --disable-shared
	make
	cp -v gettext-tools/src/{msgfmt,msgmerge,xgettext} /usr/bin
popd
