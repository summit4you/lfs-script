#!/bin/bash


pushd /sources/12.3
	rm -rf iana-etc-20250123
	tar xf iana-etc-20250123.tar.gz
	cd iana-etc-20250123
	cp services protocols /etc
popd
