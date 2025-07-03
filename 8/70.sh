#!/bin/bash


pushd /sources/12.3
        rm -rf texinfo-7.2
        tar xf texinfo-7.2.tar.xz
        cd texinfo-7.2
	./configure --prefix=/usr   
	make
	make check
	make  install
	make TEXMF=/usr/share/texmf install-tex
pushd /usr/share/info
  rm -v dir
  for f in *
    do install-info $f dir 2>/dev/null
  done
popd
popd

