#!/bin/bash

groupadd lfs
useradd -s /bin/bash -g lfs -m -k /dev/null lfs

passwd lfs
