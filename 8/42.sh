#!/bin/bash


pushd /sources/12.3
        rm -rf XML-Parser-2.47
        tar xf XML-Parser-2.47.tar.gz
        cd XML-Parser-2.47
	perl Makefile.PL
	make
	make test
	make  install
popd

