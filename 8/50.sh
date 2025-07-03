#!/bin/bash


pushd /sources/12.3
        rm -rf flit_core-3.11.0
        tar xf flit_core-3.11.0.tar.gz
        cd flit_core-3.11.0
	pip3 wheel -w dist --no-cache-dir --no-build-isolation --no-deps $PWD
	pip3 install --no-index --find-links dist flit_core
popd

