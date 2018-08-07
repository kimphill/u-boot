#export PATH=$HOME/
export ARCH=arm
#arm-linux-gnueabihf-ld.bfd: error: /usr/lib/gcc-cross/arm-linux-gnueabihf/5/libgcc.a(_udivmoddi4.o) uses VFP register arguments, u-boot does not
#
#export CROSS_COMPILE=$HOME/toolchains/gcc-linaro-5.3.1-2016.05-x86_64_aarch64-linux-gnu/bin/arm-linux-gnueabihf-
#ugh...need 32-bit toolchain...sigh, just going to go back further in u-boot hitsory:  /bin/sh: 1: /home/kim/toolchains/gcc-linaro-5.3.1-2016.05-x86_64_aarch64-linux-gnu/bin/arm-linux-gnueabihf-gcc: not found
export CROSS_COMPILE=arm-linux-gnueabihf-

make distclean
git clean -X -f
echo \#define CONFIG_CMD_GREPENV >> configs/mx6qsabrelite_defconfig   # not =y
make mx6qsabrelite_defconfig

make -j 8 
echo Hopefully that was a stable version?  now do a:
echo sudo dd if=u-boot.imx of=/dev/mmcblk0 bs=512 seek=2
echo sync\; sync\; sudo sync
#702+0 records in
#702+0 records out
#359424 bytes (359 kB, 351 KiB) copied, 0.112791 s, 3.2 MB/s
#[kim@dupont u-boot (v2016.07)]$ sync
#[kim@dupont u-boot (v2016.07)]$ sync
#[kim@dupont u-boot (v2016.07)]$ sudo sync

