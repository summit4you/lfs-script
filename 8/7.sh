#!/bin/bash


pushd /sources/12.3
        rm -rf lz4-1.10.0
        tar xf lz4-1.10.0.tar.gz
        cd lz4-1.10.0
	make BUILD_STATIC=no PREFIX=/usr
	make -j1 check
	make BUILD_STATIC=no PREFIX=/usr install
popd

