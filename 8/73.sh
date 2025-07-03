#!/bin/bash


pushd /sources/12.3
        rm -rf jinja2-3.1.5
        tar xf jinja2-3.1.5.tar.gz
        cd jinja2-3.1.5
	pip3 wheel -w dist --no-cache-dir --no-build-isolation --no-deps $PWD
	pip3 install --no-index --find-links dist Jinja2
popd

