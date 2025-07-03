#!/bin/bash


pushd /sources/12.3
        rm -rf setuptools-75.8.1
        tar xf setuptools-75.8.1.tar.gz
        cd setuptools-75.8.1
	pip3 wheel -w dist --no-cache-dir --no-build-isolation --no-deps $PWD
	pip3 install --no-index --find-links dist setuptools
popd

