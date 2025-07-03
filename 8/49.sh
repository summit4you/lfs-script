#!/bin/bash


pushd /sources/12.3
        rm -rf Python-3.13.2
        tar xf Python-3.13.2.tar.xz
        cd Python-3.13.2
	./configure --prefix=/usr        \
            --enable-shared      \
            --with-system-expat  \
            --enable-optimizations
	make
	make test TESTOPTS="--timeout 120"
	make  install
	cat > /etc/pip.conf << EOF
[global]
root-user-action = ignore
disable-pip-version-check = true
EOF
install -v -dm755 /usr/share/doc/python-3.13.2/html

tar --strip-components=1  \
    --no-same-owner       \
    --no-same-permissions \
    -C /usr/share/doc/python-3.13.2/html \
    -xvf ../python-3.13.2-docs-html.tar.bz2
popd

