### Weekend of linux distro installation attempts on acer ASPIRE 5560

#### Fedora 17
first linux distro installed after I bought the laptop back in October 2012; installed OK (although the python? based installer came with some errors and joyfully **erased (the pre-installed) windoze7**).

#### ~~Fedora 18~~
clear 'winner' - the installer goes into kernel panic instantly after grub menu selection; might work with `vga=normal` if the panic is in the framebuffer/video driver? didn't bother to test.  

#### ~~Fedora 19~~
installer boots OK, and fails at the end of the installation when attempting to install the bootloader, it does not offer/allow any manual intervention/fix and aborts shutting down the machine.

#### openSUSE 12.3
installer work fine; selected `grub2-efi` bootloader; after the USB/DVD installer finished, **but** before the very first reboot, had this `/boot/efi` layout:
```
/boot/efi
/boot/efi/EFI
/boot/efi/EFI/opensuse
/boot/efi/EFI/opensuse/grubx64.efi

# had to create manually the /boot/efi/EFI/BOOT dir, and:
#
cp /boot/efi/EFI/opensuse/grubx64.efi /boot/efi/EFI/BOOT/bootx64.efi
```

#### openSUSE 13.1
without me actually asking for it, the installed `openSUSE 12.3` updated itself to `openSUSE 13.1` (i just did the usual `sudo zypper up`),
and after the update finished and i rebooted the machine, i ended up in grub `rescue>` prompt :-) 
however booting from a rescue CD, mounting the `EFI` partition and repeating the above copy, fixed the problem:
```
cp /boot/efi/EFI/opensuse/grubx64.efi /boot/efi/EFI/BOOT/bootx64.efi
```

https://plus.google.com/+MartinBohun/posts/G2KTFSdxc2D
