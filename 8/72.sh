#!/bin/bash


pushd /sources/12.3
        rm -rf markupsafe-3.0.2
        tar xf markupsafe-3.0.2.tar.gz
        cd markupsafe-3.0.2
	pip3 wheel -w dist --no-cache-dir --no-build-isolation --no-deps $PWD
	pip3 install --no-index --find-links dist Markupsafe
popd

