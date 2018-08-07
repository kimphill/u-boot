export ARCH=arm
export CROSS_COMPILE=aarch64-linux-gnu-
mkdir -p aemv8
#echo CONFIG_CMD_GREPENV=y >> configs/mx6slevk_defconfig
make O=aemv8 vexpress_aemv8a_dram_defconfig
make -j 8 O=aemv8  
echo file format to use for BL33 assignment is aemv8/u-boot.bin
echo i.e., go and rebuild arm-trusted-firmware

exit

aemv8-golden/u-boot.cfg:#define CONFIG_BOOTARGS "console=ttyAMA0 earlyprintk=pl011," "0x1c090000 debug user_debug=31 " "androidboot.hardware=fvpbase " "root=/dev/vda2 rw " "rootwait " "loglevel=9"



#echo Hopefully that was a stable version?  now do a:
#echo sudo dd if=u-boot.imx of=/dev/mmcblk0 bs=512 seek=2
#echo sync\; sync\; sudo sync
#702+0 records in
#702+0 records out
#359424 bytes (359 kB, 351 KiB) copied, 0.112791 s, 3.2 MB/s
#[kim@dupont u-boot (v2016.07)]$ sync
#[kim@dupont u-boot (v2016.07)]$ sync
#[kim@dupont u-boot (v2016.07)]$ sudo sync

