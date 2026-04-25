# AnyKernel3 Ramdisk Mod Script
# DEERTiME E9 - Unisoc T606 / ums9230
# by osm0sis @ xda-developers

properties() { '
kernel.string=NetHunter Kernel DEERTiME E9 by leongua
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=E9
device.name2=deertime_e9
device.name3=ums9230
device.name4=DEERTiME_E9
device.name5=
supported.versions=14
supported.patchlevels=
'; }

block=/dev/block/by-name/boot_a;
is_slot_device=1;
ramdisk_compression=auto;
patch_vbmeta_flag=auto;

. tools/ak3-core.sh;

# Flash kernel image
split_boot;
flash_boot;
