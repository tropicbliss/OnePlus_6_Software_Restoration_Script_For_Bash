# OnePlus 6 Software Restoration Script for Bash
This is basically a port of the script that XDA Developers' user mauronofrio created to help install stock Oxygen OS ROMs for OnePlus 6 through Fastboot, but now for Linux (possibly macOS as it is not tested by me).

For more info, click [here](https://forum.xda-developers.com/oneplus-6/how-to/rom-stock-fastboot-roms-oneplus-6-t3796665).

This script basically installs all the partitions (including the persist and critical partitions) and locks your bootloader at the end to ensure that your OnePlus 6's software will be returned to normal, at a similar condition of what you got when you bought it from a store.

Instructions:
1. Download the desired OxygenOS ROM from the XDA post linked above.
2. Unzip the downloaded zip file into a folder.
3. Unzip "images.zip" and make sure to put "TWRP.img" from the root folder into the same directory.
4. Download the shell script from this repository and also put it into the same directory.
5. Boot your OnePlus 6 into Fastboot mode and plug it into your computer.
6. Run the following command:
```sh
./flash_all.sh
```
Note: If you recieve a permissions error, run this command with "sudo".
7. You should start to see commands running. Obviously, do not unplug your phone if you want any further trouble.
8. When the message "Waiting 30 seconds for TWRP to boot up..." appears, make sure that after your phone boots into TWRP, immediately dismiss any startup messages by swiping the slider bars and if your device is password protected immediately enter your login password or PIN within this 30 seconds.
9. If everything goes well, commands will start to run again. When the device reboots and a message prompting you to lock the bootloader appears, use the volume and power buttons to select the option to lock the bootloader.
10. Device should reboot a few times (at least for me) and you should enter the Android setup screen once your OnePlus 6 boots up.
11. Success!
