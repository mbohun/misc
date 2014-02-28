### Weekend of linux distro installation attempts on acer ASPIRE 5560

#### Fedora 17
first linux distro installed after I bought the laptop back in October 2012; installed OK.

#### Fedora 18
clear 'winner' - the installer goes into kernel panic instantly after grub menu selection; might work with `vga=normal` if the panic is in the framebuffer/video driver? didn't bother to test.  

#### Fedora 19
installer boots OK, and fails at the end of the installation when attempting to install the bootloader, it does not offer/allow any manual intervention/fix and aborts shutting down the machine.

#### openSUSE 12.3
installer work fine; selected `grub2-efi` bootloader; after the USB/DVD installer finished, **but** before the very first reboot, had this `/boot/efi` layout:
```
/boot/efi
/boot/efi/EFI
/boot/efi/EFI/opensuse
/boot/efi/EFI/opensuse/grubx64.efi

# had to create manually: _/boot/efi/EFI/BOOT_
# and
cp /boot/efi/EFI/opensuse/grubx64.efi /boot/efi/EFI/BOOT/bootx64.efi
```
https://plus.google.com/+MartinBohun/posts/G2KTFSdxc2D
