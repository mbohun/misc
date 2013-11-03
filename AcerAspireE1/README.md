# acer ASPIRE E1-572

![Alt text](https://raw.github.com/mbohun/misc/master/AcerAspireE1/doc/AcerAspireE1s.png "Acer Aspire E1-572")

`$ sudo lspci`
```
00:00.0 Host bridge: Intel Corporation Haswell-ULT DRAM Controller (rev 09)
00:02.0 VGA compatible controller: Intel Corporation Haswell-ULT Integrated Graphics Controller (rev 09)
00:03.0 Audio device: Intel Corporation Device 0a0c (rev 09)
00:14.0 USB controller: Intel Corporation Lynx Point-LP USB xHCI HC (rev 04)
00:16.0 Communication controller: Intel Corporation Lynx Point-LP HECI #0 (rev 04)
00:1b.0 Audio device: Intel Corporation Lynx Point-LP HD Audio Controller (rev 04)
00:1c.0 PCI bridge: Intel Corporation Lynx Point-LP PCI Express Root Port 3 (rev e4)
00:1c.3 PCI bridge: Intel Corporation Lynx Point-LP PCI Express Root Port 4 (rev e4)
00:1d.0 USB controller: Intel Corporation Lynx Point-LP USB EHCI #1 (rev 04)
00:1f.0 ISA bridge: Intel Corporation Lynx Point-LP LPC Controller (rev 04)
00:1f.2 SATA controller: Intel Corporation Lynx Point-LP SATA Controller 1 [AHCI mode] (rev 04)
00:1f.3 SMBus: Intel Corporation Lynx Point-LP SMBus Controller (rev 04)
01:00.0 Ethernet controller: Broadcom Corporation NetXtreme BCM57786 Gigabit Ethernet PCIe (rev 01)
01:00.1 SD Host controller: Broadcom Corporation BCM57765/57785 SDXC/MMC Card Reader (rev 01)
02:00.0 Network controller: Qualcomm Atheros QCA9565 / AR9565 Wireless Network Adapter (rev 01)
```

 ---

Access an EFI Partition

At a command prompt, type mountvol drive letter: /s, and then press ENTER. For example, type:
mountvol z: /s
Type mountvol, and then press ENTER.

You should now be able to see and access the mounted EFI partition.

- use win8 fs check to repair damaged EFI partition and/or delete/create files

- after you installgrub2-efi + secure boot enabled, reboot to BIOS and set the 
openSUSE bootmanager in BIOS boot menu

http://support.microsoft.com/kb/294773

http://community.acer.com/t5/Notebooks-Netbooks/Dual-boot-Windows-8-and-openSUSE-12-3-on-the-Acer-Aspire-V5-122P/td-p/115393
