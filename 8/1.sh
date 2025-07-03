#!/bin/bash


pushd /sources/12.3
	rm -rf man-pages-6.12
	tar xf man-pages-6.12.tar.xz
	cd man-pages-6.12
	rm -v man3/crypt*
	make -R GIT=false prefix=/usr install
popd
