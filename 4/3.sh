#!/bin/bash

#将 lfs 设为 $LFS 中所有目录的所有者，使 lfs 对它们拥有完全访问权：
export LFS=/mnt/lfs
chown -v lfs $LFS/{usr{,/*},var,etc,tools}
case $(uname -m) in
  x86_64) chown -v lfs $LFS/lib64 ;;
esac
