
export ARCH=arm
export CROSS_COMPILE=arm-linux-gnueabihf-
echo CONFIG_CMD_GREPENV=y >> configs/mx6slevk_defconfig
make omap4_panda_defconfig

make -j 8 
echo Hopefully that was a stable version?  now do a:
#echo sudo dd if=u-boot.imx of=/dev/mmcblk0 bs=512 seek=2
#echo sync\; sync\; sudo sync
#702+0 records in
#702+0 records out
#359424 bytes (359 kB, 351 KiB) copied, 0.112791 s, 3.2 MB/s
#[kim@dupont u-boot (v2016.07)]$ sync
#[kim@dupont u-boot (v2016.07)]$ sync
#[kim@dupont u-boot (v2016.07)]$ sudo sync

