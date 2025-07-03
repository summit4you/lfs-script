# lfs-script

This GitHub project provides a collection of Bash scripts designed to guide users through the process of building a custom Linux system from the ground up, based on Linux From Scratch (LFS) version 12.3. The scripts offer step-by-step automation for setting up a minimal, tailored Linux environment, following the official LFS guide.

Each folder corresponds to the commands for one chapter, but does not include the Linux compilation commands. Please refer to the original book at [https://lfs.xry111.site/zh_CN/12.3-systemd/index.html](https://lfs.xry111.site/zh_CN/12.3-systemd/index.html).

The current image can be executed directly using QEMU with the following command:

```
sudo qemu-system-x86_64 -m 1024 -drive file=lfs.12.3.img,format=raw -nographic
```

If you have any questions or need further assistance, please feel free to submit an issue.