#!/bin/bash


pushd /sources/12.3
        rm -rf vim-9.1.1166
        tar xf vim-9.1.1166.tar.gz
        cd vim-9.1.1166
	echo '#define SYS_VIMRC_FILE "/etc/vimrc"' >> src/feature.h
	./configure --prefix=/usr   
	make
	chown -R tester .
sed '/test_plugin_glvs/d' -i src/testdir/Make_all.mak
su tester -c "TERM=xterm-256color LANG=en_US.UTF-8 make -j1 test" \
   &> vim-test.log
	make  install
	ln -sv vim /usr/bin/vi
for L in  /usr/share/man/{,*/}man1/vim.1; do
    ln -sv vim.1 $(dirname $L)/vi.1
done
ln -sv ../vim/vim91/doc /usr/share/doc/vim-9.1.1166
popd

