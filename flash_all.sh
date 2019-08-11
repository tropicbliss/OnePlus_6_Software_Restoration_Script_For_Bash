#!/bin/bash
fastboot flash aop_a aop.img
fastboot flash aop_b aop.img
fastboot flash bluetooth_a bluetooth.img
fastboot flash bluetooth_b bluetooth.img
fastboot flash boot_a boot.img
fastboot flash boot_b boot.img
fastboot flash dsp_a dsp.img
fastboot flash dsp_b dsp.img
fastboot flash dtbo_a dtbo.img
fastboot flash dtbo_b dtbo.img
fastboot flash fw_4j1ed_a fw_4j1ed.img
fastboot flash fw_4j1ed_b fw_4j1ed.img
fastboot flash fw_4u1ea_a fw_4u1ea.img
fastboot flash fw_4u1ea_b fw_4u1ea.img
fastboot flash modem_a modem.img
fastboot flash modem_b modem.img
fastboot flash oem_stanvbk oem_stanvbk.img
fastboot flash qupfw_a qupfw.img
fastboot flash qupfw_b qupfw.img
fastboot flash storsec_a storsec.img
fastboot flash storsec_b storsec.img
fastboot flash system_a system.img
fastboot flash system_b system.img
fastboot flash vbmeta_a vbmeta.img
fastboot flash vbmeta_b vbmeta.img
fastboot flash vendor_a vendor.img
fastboot flash vendor_b vendor.img
fastboot flash LOGO_a LOGO.img
fastboot flash LOGO_b LOGO.img
fastboot flash persist persist.img
fastboot boot twrp-3.3.1-2-enchilada.img
echo Waiting 30 seconds for TWRP to boot up...
sleep 30
adb push abl.img /sdcard/abl.img
adb shell dd if=/sdcard/abl.img of=/dev/block/bootdevice/by-name/abl_a
adb shell dd if=/sdcard/abl.img of=/dev/block/bootdevice/by-name/abl_b
adb push cmnlib.img /sdcard/cmnlib.img
adb shell dd if=/sdcard/cmnlib.img of=/dev/block/bootdevice/by-name/cmnlib_a
adb shell dd if=/sdcard/cmnlib.img of=/dev/block/bootdevice/by-name/cmnlib_b
adb push cmnlib64.img /sdcard/cmnlib64.img
adb shell dd if=/sdcard/cmnlib64.img of=/dev/block/bootdevice/by-name/cmnlib64_a
adb shell dd if=/sdcard/cmnlib64.img of=/dev/block/bootdevice/by-name/cmnlib64_b
adb push devcfg.img /sdcard/devcfg.img
adb shell dd if=/sdcard/devcfg.img of=/dev/block/bootdevice/by-name/devcfg_a
adb shell dd if=/sdcard/devcfg.img of=/dev/block/bootdevice/by-name/devcfg_b
adb push hyp.img /sdcard/hyp.img
adb shell dd if=/sdcard/hyp.img of=/dev/block/bootdevice/by-name/hyp_a
adb shell dd if=/sdcard/hyp.img of=/dev/block/bootdevice/by-name/hyp_b
adb push keymaster.img /sdcard/keymaster.img
adb shell dd if=/sdcard/keymaster.img of=/dev/block/bootdevice/by-name/keymaster_a
adb shell dd if=/sdcard/keymaster.img of=/dev/block/bootdevice/by-name/keymaster_b
adb push xbl.img /sdcard/xbl.img
adb shell dd if=/sdcard/xbl.img of=/dev/block/bootdevice/by-name/xbl_a
adb shell dd if=/sdcard/xbl.img of=/dev/block/bootdevice/by-name/xbl_b
adb push xbl_config.img /sdcard/xbl_config.img
adb shell dd if=/sdcard/xbl_config.img of=/dev/block/bootdevice/by-name/xbl_config_a
adb shell dd if=/sdcard/xbl_config.img of=/dev/block/bootdevice/by-name/xbl_config_b
adb reboot bootloader
echo Waiting 30 seconds for bootloader to boot up...
sleep 30
fastboot oem lock
