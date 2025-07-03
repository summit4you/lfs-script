#!/bin/bash


pushd /sources/12.3
        rm -rf wheel-0.45.1
        tar xf wheel-0.45.1.tar.gz
        cd wheel-0.45.1
	pip3 wheel -w dist --no-cache-dir --no-build-isolation --no-deps $PWD
	pip3 install --no-index --find-links dist wheel
popd

