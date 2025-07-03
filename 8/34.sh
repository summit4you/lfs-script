#!/bin/bash


pushd /sources/12.3
        rm -rf bash-5.2.37
        tar xf bash-5.2.37.tar.gz
        cd bash-5.2.37
	./configure --prefix=/usr             \
            --without-bash-malloc     \
            --with-installed-readline \
            --docdir=/usr/share/doc/bash-5.2.37
	make
	chown -R tester .
	su -s /usr/bin/expect tester << "EOF"
set timeout -1
spawn make tests
expect eof
lassign [wait] _ _ _ value
exit $value
EOF
make install
exec /usr/bin/bash --login
popd

