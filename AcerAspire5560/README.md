# acer ASPIRE 5560

![Alt text](https://raw.github.com/mbohun/misc/master/AcerAspire5560/AcerAspire5560G.jpg "Acer Aspire 5560G")

`$ sudo lspci`
```
00:00.0 Host bridge: Advanced Micro Devices [AMD] Family 12h Processor Root Complex
00:01.0 VGA compatible controller: ATI Technologies Inc Device 9647
00:01.1 Audio device: ATI Technologies Inc Device 1714
00:04.0 PCI bridge: Advanced Micro Devices [AMD] Family 12h Processor Root Port
00:06.0 PCI bridge: Advanced Micro Devices [AMD] Family 12h Processor Root Port
00:11.0 SATA controller: Advanced Micro Devices [AMD] Hudson SATA Controller [AHCI mode]
00:12.0 USB Controller: Advanced Micro Devices [AMD] Hudson USB OHCI Controller (rev 11)
00:12.2 USB Controller: Advanced Micro Devices [AMD] Hudson USB EHCI Controller (rev 11)
00:13.0 USB Controller: Advanced Micro Devices [AMD] Hudson USB OHCI Controller (rev 11)
00:13.2 USB Controller: Advanced Micro Devices [AMD] Hudson USB EHCI Controller (rev 11)
00:14.0 SMBus: Advanced Micro Devices [AMD] Hudson SMBus Controller (rev 13)
00:14.2 Audio device: Advanced Micro Devices [AMD] Hudson Azalia Controller (rev 01)
00:14.3 ISA bridge: Advanced Micro Devices [AMD] Hudson LPC Bridge (rev 11)
00:14.4 PCI bridge: Advanced Micro Devices [AMD] Hudson PCI Bridge (rev 40)
00:16.0 USB Controller: Advanced Micro Devices [AMD] Hudson USB OHCI Controller (rev 11)
00:16.2 USB Controller: Advanced Micro Devices [AMD] Hudson USB EHCI Controller (rev 11)
00:18.0 Host bridge: Advanced Micro Devices [AMD] Family 12h/14h Processor Function 0 (rev 43)
00:18.1 Host bridge: Advanced Micro Devices [AMD] Family 12h/14h Processor Function 1
00:18.2 Host bridge: Advanced Micro Devices [AMD] Family 12h/14h Processor Function 2
00:18.3 Host bridge: Advanced Micro Devices [AMD] Family 12h/14h Processor Function 3
00:18.4 Host bridge: Advanced Micro Devices [AMD] Family 12h/14h Processor Function 4
00:18.5 Host bridge: Advanced Micro Devices [AMD] Family 12h/14h Processor Function 6
00:18.6 Host bridge: Advanced Micro Devices [AMD] Family 12h/14h Processor Function 5
00:18.7 Host bridge: Advanced Micro Devices [AMD] Family 12h/14h Processor Function 7
01:00.0 Ethernet controller: Broadcom Corporation NetLink BCM57785 Gigabit Ethernet PCIe (rev 10)
01:00.1 SD Host controller: Broadcom Corporation NetXtreme BCM57765 Memory Card Reader (rev 10)
01:00.2 System peripheral: Broadcom Corporation Device 16be (rev 10)
01:00.3 System peripheral: Broadcom Corporation Device 16bf (rev 10)
02:00.0 Network controller: Atheros Communications Inc. AR9287 Wireless Network Adapter (PCI-Express) (rev 01)
```

`sudo lspci -vvv | grep -i driver | sort | uniq`
```
        Kernel driver in use: ahci
        Kernel driver in use: ath9k
        Kernel driver in use: ehci-pci
        Kernel driver in use: fglrx_pci
        Kernel driver in use: k10temp
        Kernel driver in use: ohci_hcd
        Kernel driver in use: pcieport
        Kernel driver in use: sdhci-pci
        Kernel driver in use: snd_hda_intel
        Kernel driver in use: tg3
```

`$ sudo lspci -vvv`
```
00:00.0 Host bridge: Advanced Micro Devices [AMD] Family 12h Processor Root Complex
	Subsystem: Acer Incorporated [ALI] Device 059f
	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap- 66MHz+ UDF- FastB2B- ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 64

00:01.0 VGA compatible controller: ATI Technologies Inc Device 9647 (prog-if 00 [VGA controller])
	Subsystem: Acer Incorporated [ALI] Device 059f
	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx+
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0, Cache Line Size: 32 bytes
	Interrupt: pin A routed to IRQ 49
	Region 0: Memory at e0000000 (32-bit, prefetchable) [size=256M]
	Region 1: I/O ports at 2000 [size=256]
	Region 2: Memory at f0200000 (32-bit, non-prefetchable) [size=256K]
	Expansion ROM at <unassigned> [disabled]
	Capabilities: [50] Power Management version 3
		Flags: PMEClk- DSI- D1+ D2+ AuxCurrent=0mA PME(D0-,D1-,D2-,D3hot-,D3cold-)
		Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-
	Capabilities: [58] Express (v2) Root Complex Integrated Endpoint, MSI 00
		DevCap:	MaxPayload 128 bytes, PhantFunc 0, Latency L0s <4us, L1 unlimited
			ExtTag+ RBE+ FLReset-
		DevCtl:	Report errors: Correctable- Non-Fatal- Fatal- Unsupported-
			RlxdOrd+ ExtTag- PhantFunc- AuxPwr- NoSnoop+
			MaxPayload 128 bytes, MaxReadReq 128 bytes
		DevSta:	CorrErr- UncorrErr- FatalErr- UnsuppReq- AuxPwr- TransPend-
		LnkCap:	Port #0, Speed unknown, Width x0, ASPM unknown, Latency L0 <64ns, L1 <1us
			ClockPM- Surprise- LLActRep- BwNot-
		LnkCtl:	ASPM Disabled; Disabled- Retrain- CommClk-
			ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-
		LnkSta:	Speed unknown, Width x0, TrErr- Train- SlotClk- DLActive- BWMgmt- ABWMgmt-
		DevCap2: Completion Timeout: Not Supported, TimeoutDis-
		DevCtl2: Completion Timeout: 50us to 50ms, TimeoutDis-
		LnkCtl2: Target Link Speed: 2.5GT/s, EnterCompliance- SpeedDis-, Selectable De-emphasis: -6dB
			 Transmit Margin: Normal Operating Range, EnterModifiedCompliance- ComplianceSOS-
			 Compliance De-emphasis: -6dB
		LnkSta2: Current De-emphasis Level: -6dB, EqualizationComplete-, EqualizationPhase1-
			 EqualizationPhase2-, EqualizationPhase3-, LinkEqualizationRequest-
	Capabilities: [a0] MSI: Enable+ Count=1/1 Maskable- 64bit+
		Address: 00000000fee0f00c  Data: 4152
	Capabilities: [100 v1] Vendor Specific Information: ID=0001 Rev=1 Len=010 <?>
	Kernel driver in use: fglrx_pci

00:01.1 Audio device: ATI Technologies Inc Device 1714
	Subsystem: Acer Incorporated [ALI] Device 059f
	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx+
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0, Cache Line Size: 32 bytes
	Interrupt: pin B routed to IRQ 43
	Region 0: Memory at f0244000 (32-bit, non-prefetchable) [size=16K]
	Capabilities: [50] Power Management version 3
		Flags: PMEClk- DSI- D1+ D2+ AuxCurrent=0mA PME(D0-,D1-,D2-,D3hot-,D3cold-)
		Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-
	Capabilities: [58] Express (v2) Root Complex Integrated Endpoint, MSI 00
		DevCap:	MaxPayload 128 bytes, PhantFunc 0, Latency L0s <4us, L1 unlimited
			ExtTag+ RBE+ FLReset-
		DevCtl:	Report errors: Correctable- Non-Fatal- Fatal- Unsupported-
			RlxdOrd+ ExtTag- PhantFunc- AuxPwr- NoSnoop+
			MaxPayload 128 bytes, MaxReadReq 128 bytes
		DevSta:	CorrErr- UncorrErr- FatalErr- UnsuppReq- AuxPwr- TransPend-
		LnkCap:	Port #0, Speed unknown, Width x0, ASPM unknown, Latency L0 <64ns, L1 <1us
			ClockPM- Surprise- LLActRep- BwNot-
		LnkCtl:	ASPM Disabled; Disabled- Retrain- CommClk-
			ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-
		LnkSta:	Speed unknown, Width x0, TrErr- Train- SlotClk- DLActive- BWMgmt- ABWMgmt-
		DevCap2: Completion Timeout: Not Supported, TimeoutDis-
		DevCtl2: Completion Timeout: 50us to 50ms, TimeoutDis-
		LnkCtl2: Target Link Speed: 2.5GT/s, EnterCompliance- SpeedDis-, Selectable De-emphasis: -6dB
			 Transmit Margin: Normal Operating Range, EnterModifiedCompliance- ComplianceSOS-
			 Compliance De-emphasis: -6dB
		LnkSta2: Current De-emphasis Level: -6dB, EqualizationComplete-, EqualizationPhase1-
			 EqualizationPhase2-, EqualizationPhase3-, LinkEqualizationRequest-
	Capabilities: [a0] MSI: Enable+ Count=1/1 Maskable- 64bit+
		Address: 00000000fee0f00c  Data: 41c2
	Capabilities: [100 v1] Vendor Specific Information: ID=0001 Rev=1 Len=010 <?>
	Kernel driver in use: snd_hda_intel

00:04.0 PCI bridge: Advanced Micro Devices [AMD] Family 12h Processor Root Port (prog-if 00 [Normal decode])
	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx+
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0, Cache Line Size: 32 bytes
	Bus: primary=00, secondary=01, subordinate=01, sec-latency=0
	I/O behind bridge: 0000f000-00000fff
	Memory behind bridge: f0300000-f03fffff
	Prefetchable memory behind bridge: 00000000f0000000-00000000f00fffff
	Secondary status: 66MHz- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- <SERR- <PERR-
	BridgeCtl: Parity- SERR- NoISA- VGA- MAbort- >Reset- FastB2B-
		PriDiscTmr- SecDiscTmr- DiscTmrStat- DiscTmrSERREn-
	Capabilities: [50] Power Management version 3
		Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
		Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-
	Capabilities: [58] Express (v2) Root Port (Slot+), MSI 00
		DevCap:	MaxPayload 128 bytes, PhantFunc 0, Latency L0s <64ns, L1 <1us
			ExtTag+ RBE+ FLReset-
		DevCtl:	Report errors: Correctable- Non-Fatal- Fatal- Unsupported-
			RlxdOrd+ ExtTag- PhantFunc- AuxPwr- NoSnoop+
			MaxPayload 128 bytes, MaxReadReq 512 bytes
		DevSta:	CorrErr- UncorrErr- FatalErr- UnsuppReq- AuxPwr- TransPend-
		LnkCap:	Port #1, Speed 2.5GT/s, Width x1, ASPM L0s L1, Latency L0 <64ns, L1 <1us
			ClockPM- Surprise- LLActRep+ BwNot+
		LnkCtl:	ASPM Disabled; RCB 64 bytes Disabled- Retrain- CommClk+
			ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-
		LnkSta:	Speed 2.5GT/s, Width x1, TrErr- Train- SlotClk+ DLActive+ BWMgmt- ABWMgmt-
		SltCap:	AttnBtn- PwrCtrl- MRL- AttnInd- PwrInd- HotPlug- Surprise-
			Slot #4, PowerLimit 75.000W; Interlock- NoCompl+
		SltCtl:	Enable: AttnBtn- PwrFlt- MRL- PresDet- CmdCplt- HPIrq- LinkChg-
			Control: AttnInd Unknown, PwrInd Unknown, Power- Interlock-
		SltSta:	Status: AttnBtn- PowerFlt- MRL- CmdCplt- PresDet+ Interlock-
			Changed: MRL- PresDet+ LinkState+
		RootCtl: ErrCorrectable- ErrNon-Fatal- ErrFatal- PMEIntEna+ CRSVisible-
		RootCap: CRSVisible-
		RootSta: PME ReqID 0000, PMEStatus- PMEPending-
		DevCap2: Completion Timeout: Range ABCD, TimeoutDis+ ARIFwd-
		DevCtl2: Completion Timeout: 65ms to 210ms, TimeoutDis- ARIFwd-
		LnkCtl2: Target Link Speed: 2.5GT/s, EnterCompliance- SpeedDis+, Selectable De-emphasis: -6dB
			 Transmit Margin: Normal Operating Range, EnterModifiedCompliance- ComplianceSOS-
			 Compliance De-emphasis: -6dB
		LnkSta2: Current De-emphasis Level: -6dB, EqualizationComplete-, EqualizationPhase1-
			 EqualizationPhase2-, EqualizationPhase3-, LinkEqualizationRequest-
	Capabilities: [a0] MSI: Enable+ Count=1/1 Maskable- 64bit+
		Address: 00000000fee0100c  Data: 4171
	Capabilities: [b0] Subsystem: Advanced Micro Devices [AMD] Device 1234
	Capabilities: [b8] HyperTransport: MSI Mapping Enable+ Fixed+
	Capabilities: [100 v1] Vendor Specific Information: ID=0001 Rev=1 Len=010 <?>
	Kernel driver in use: pcieport

00:06.0 PCI bridge: Advanced Micro Devices [AMD] Family 12h Processor Root Port (prog-if 00 [Normal decode])
	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx+
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0, Cache Line Size: 32 bytes
	Bus: primary=00, secondary=02, subordinate=02, sec-latency=0
	I/O behind bridge: 0000f000-00000fff
	Memory behind bridge: f0100000-f01fffff
	Prefetchable memory behind bridge: 00000000fff00000-00000000000fffff
	Secondary status: 66MHz- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- <SERR- <PERR-
	BridgeCtl: Parity- SERR- NoISA- VGA- MAbort- >Reset- FastB2B-
		PriDiscTmr- SecDiscTmr- DiscTmrStat- DiscTmrSERREn-
	Capabilities: [50] Power Management version 3
		Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
		Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-
	Capabilities: [58] Express (v2) Root Port (Slot+), MSI 00
		DevCap:	MaxPayload 128 bytes, PhantFunc 0, Latency L0s <64ns, L1 <1us
			ExtTag+ RBE+ FLReset-
		DevCtl:	Report errors: Correctable- Non-Fatal- Fatal- Unsupported-
			RlxdOrd+ ExtTag- PhantFunc- AuxPwr- NoSnoop+
			MaxPayload 128 bytes, MaxReadReq 512 bytes
		DevSta:	CorrErr- UncorrErr- FatalErr- UnsuppReq- AuxPwr- TransPend-
		LnkCap:	Port #3, Speed 2.5GT/s, Width x1, ASPM L0s L1, Latency L0 <64ns, L1 <1us
			ClockPM- Surprise- LLActRep+ BwNot+
		LnkCtl:	ASPM Disabled; RCB 64 bytes Disabled- Retrain- CommClk+
			ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-
		LnkSta:	Speed 2.5GT/s, Width x1, TrErr- Train- SlotClk+ DLActive+ BWMgmt- ABWMgmt-
		SltCap:	AttnBtn- PwrCtrl- MRL- AttnInd- PwrInd- HotPlug- Surprise-
			Slot #6, PowerLimit 75.000W; Interlock- NoCompl+
		SltCtl:	Enable: AttnBtn- PwrFlt- MRL- PresDet- CmdCplt- HPIrq- LinkChg-
			Control: AttnInd Unknown, PwrInd Unknown, Power- Interlock-
		SltSta:	Status: AttnBtn- PowerFlt- MRL- CmdCplt- PresDet+ Interlock-
			Changed: MRL- PresDet+ LinkState+
		RootCtl: ErrCorrectable- ErrNon-Fatal- ErrFatal- PMEIntEna+ CRSVisible-
		RootCap: CRSVisible-
		RootSta: PME ReqID 0000, PMEStatus- PMEPending-
		DevCap2: Completion Timeout: Range ABCD, TimeoutDis+ ARIFwd-
		DevCtl2: Completion Timeout: 65ms to 210ms, TimeoutDis- ARIFwd-
		LnkCtl2: Target Link Speed: 2.5GT/s, EnterCompliance- SpeedDis+, Selectable De-emphasis: -6dB
			 Transmit Margin: Normal Operating Range, EnterModifiedCompliance- ComplianceSOS-
			 Compliance De-emphasis: -6dB
		LnkSta2: Current De-emphasis Level: -6dB, EqualizationComplete-, EqualizationPhase1-
			 EqualizationPhase2-, EqualizationPhase3-, LinkEqualizationRequest-
	Capabilities: [a0] MSI: Enable+ Count=1/1 Maskable- 64bit+
		Address: 00000000fee0100c  Data: 4181
	Capabilities: [b0] Subsystem: Advanced Micro Devices [AMD] Device 1234
	Capabilities: [b8] HyperTransport: MSI Mapping Enable+ Fixed+
	Capabilities: [100 v1] Vendor Specific Information: ID=0001 Rev=1 Len=010 <?>
	Kernel driver in use: pcieport

00:11.0 SATA controller: Advanced Micro Devices [AMD] Hudson SATA Controller [AHCI mode] (prog-if 01 [AHCI 1.0])
	Subsystem: Acer Incorporated [ALI] Device 059f
	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx+
	Status: Cap+ 66MHz+ UDF- FastB2B- ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 64
	Interrupt: pin A routed to IRQ 42
	Region 0: I/O ports at 2118 [size=8]
	Region 1: I/O ports at 2124 [size=4]
	Region 2: I/O ports at 2110 [size=8]
	Region 3: I/O ports at 2120 [size=4]
	Region 4: I/O ports at 2100 [size=16]
	Region 5: Memory at f024b000 (32-bit, non-prefetchable) [size=2K]
	Capabilities: [50] MSI: Enable+ Count=1/16 Maskable- 64bit+
		Address: 00000000fee0100c  Data: 41a1
	Capabilities: [70] SATA HBA v1.0 InCfgSpace
	Kernel driver in use: ahci

00:12.0 USB Controller: Advanced Micro Devices [AMD] Hudson USB OHCI Controller (rev 11) (prog-if 10 [OHCI])
	Subsystem: Acer Incorporated [ALI] Device 059f
	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV+ VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap- 66MHz+ UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 64, Cache Line Size: 32 bytes
	Interrupt: pin A routed to IRQ 18
	Region 0: Memory at f024a000 (32-bit, non-prefetchable) [size=4K]
	Kernel driver in use: ohci_hcd

00:12.2 USB Controller: Advanced Micro Devices [AMD] Hudson USB EHCI Controller (rev 11) (prog-if 20 [EHCI])
	Subsystem: Acer Incorporated [ALI] Device 059f
	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV+ VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap+ 66MHz+ UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 64, Cache Line Size: 32 bytes
	Interrupt: pin B routed to IRQ 17
	Region 0: Memory at f024ba00 (32-bit, non-prefetchable) [size=256]
	Capabilities: [c0] Power Management version 2
		Flags: PMEClk- DSI- D1+ D2+ AuxCurrent=0mA PME(D0+,D1+,D2+,D3hot+,D3cold-)
		Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME+
		Bridge: PM- B3+
	Capabilities: [e4] Debug port: BAR=1 offset=00e0
	Kernel driver in use: ehci-pci

00:13.0 USB Controller: Advanced Micro Devices [AMD] Hudson USB OHCI Controller (rev 11) (prog-if 10 [OHCI])
	Subsystem: Acer Incorporated [ALI] Device 059f
	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV+ VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap- 66MHz+ UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 64, Cache Line Size: 32 bytes
	Interrupt: pin A routed to IRQ 18
	Region 0: Memory at f0249000 (32-bit, non-prefetchable) [size=4K]
	Kernel driver in use: ohci_hcd

00:13.2 USB Controller: Advanced Micro Devices [AMD] Hudson USB EHCI Controller (rev 11) (prog-if 20 [EHCI])
	Subsystem: Acer Incorporated [ALI] Device 059f
	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV+ VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap+ 66MHz+ UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 64, Cache Line Size: 32 bytes
	Interrupt: pin B routed to IRQ 17
	Region 0: Memory at f024b900 (32-bit, non-prefetchable) [size=256]
	Capabilities: [c0] Power Management version 2
		Flags: PMEClk- DSI- D1+ D2+ AuxCurrent=0mA PME(D0+,D1+,D2+,D3hot+,D3cold-)
		Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-
		Bridge: PM- B3+
	Capabilities: [e4] Debug port: BAR=1 offset=00e0
	Kernel driver in use: ehci-pci

00:14.0 SMBus: Advanced Micro Devices [AMD] Hudson SMBus Controller (rev 13)
	Subsystem: Acer Incorporated [ALI] Device 059f
	Control: I/O- Mem- BusMaster- SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx+
	Status: Cap- 66MHz+ UDF- FastB2B- ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-

00:14.2 Audio device: Advanced Micro Devices [AMD] Hudson Azalia Controller (rev 01)
	Subsystem: Acer Incorporated [ALI] Device 059f
	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=slow >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 64, Cache Line Size: 32 bytes
	Interrupt: pin A routed to IRQ 16
	Region 0: Memory at f0240000 (64-bit, non-prefetchable) [size=16K]
	Capabilities: [50] Power Management version 2
		Flags: PMEClk- DSI- D1- D2- AuxCurrent=55mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
		Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-
	Kernel driver in use: snd_hda_intel

00:14.3 ISA bridge: Advanced Micro Devices [AMD] Hudson LPC Bridge (rev 11)
	Subsystem: Acer Incorporated [ALI] Device 059f
	Control: I/O+ Mem+ BusMaster+ SpecCycle+ MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap- 66MHz+ UDF- FastB2B- ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0

00:14.4 PCI bridge: Advanced Micro Devices [AMD] Hudson PCI Bridge (rev 40) (prog-if 01 [Subtractive decode])
	Control: I/O+ Mem- BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap- 66MHz+ UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 64
	Bus: primary=00, secondary=03, subordinate=03, sec-latency=64
	I/O behind bridge: 0000f000-00000fff
	Memory behind bridge: fff00000-000fffff
	Prefetchable memory behind bridge: fff00000-000fffff
	Secondary status: 66MHz- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort+ <SERR- <PERR-
	BridgeCtl: Parity- SERR- NoISA- VGA- MAbort- >Reset- FastB2B-
		PriDiscTmr- SecDiscTmr- DiscTmrStat- DiscTmrSERREn-

00:16.0 USB Controller: Advanced Micro Devices [AMD] Hudson USB OHCI Controller (rev 11) (prog-if 10 [OHCI])
	Subsystem: Acer Incorporated [ALI] Device 059f
	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV+ VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap- 66MHz+ UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 64, Cache Line Size: 32 bytes
	Interrupt: pin A routed to IRQ 18
	Region 0: Memory at f0248000 (32-bit, non-prefetchable) [size=4K]
	Kernel driver in use: ohci_hcd

00:16.2 USB Controller: Advanced Micro Devices [AMD] Hudson USB EHCI Controller (rev 11) (prog-if 20 [EHCI])
	Subsystem: Acer Incorporated [ALI] Device 059f
	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV+ VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap+ 66MHz+ UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 64, Cache Line Size: 32 bytes
	Interrupt: pin B routed to IRQ 17
	Region 0: Memory at f024b800 (32-bit, non-prefetchable) [size=256]
	Capabilities: [c0] Power Management version 2
		Flags: PMEClk- DSI- D1+ D2+ AuxCurrent=0mA PME(D0+,D1+,D2+,D3hot+,D3cold-)
		Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-
		Bridge: PM- B3+
	Capabilities: [e4] Debug port: BAR=1 offset=00e0
	Kernel driver in use: ehci-pci

00:18.0 Host bridge: Advanced Micro Devices [AMD] Family 12h/14h Processor Function 0 (rev 43)
	Control: I/O- Mem- BusMaster- SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-

00:18.1 Host bridge: Advanced Micro Devices [AMD] Family 12h/14h Processor Function 1
	Control: I/O- Mem- BusMaster- SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap- 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-

00:18.2 Host bridge: Advanced Micro Devices [AMD] Family 12h/14h Processor Function 2
	Control: I/O- Mem- BusMaster- SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap- 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-

00:18.3 Host bridge: Advanced Micro Devices [AMD] Family 12h/14h Processor Function 3
	Control: I/O- Mem- BusMaster- SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Capabilities: [f0] Secure device <?>
	Kernel driver in use: k10temp

00:18.4 Host bridge: Advanced Micro Devices [AMD] Family 12h/14h Processor Function 4
	Control: I/O- Mem- BusMaster- SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap- 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-

00:18.5 Host bridge: Advanced Micro Devices [AMD] Family 12h/14h Processor Function 6
	Control: I/O- Mem- BusMaster- SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap- 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-

00:18.6 Host bridge: Advanced Micro Devices [AMD] Family 12h/14h Processor Function 5
	Control: I/O- Mem- BusMaster- SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap- 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-

00:18.7 Host bridge: Advanced Micro Devices [AMD] Family 12h/14h Processor Function 7
	Control: I/O- Mem- BusMaster- SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap- 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-

01:00.0 Ethernet controller: Broadcom Corporation NetLink BCM57785 Gigabit Ethernet PCIe (rev 10)
	Subsystem: Acer Incorporated [ALI] Device 0605
	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx+
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0, Cache Line Size: 32 bytes
	Interrupt: pin A routed to IRQ 16
	Region 0: Memory at f0000000 (64-bit, prefetchable) [size=64K]
	Region 2: Memory at f0010000 (64-bit, prefetchable) [size=64K]
	Expansion ROM at f0050000 [disabled] [size=2K]
	Capabilities: [48] Power Management version 3
		Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
		Status: D0 NoSoftRst+ PME-Enable- DSel=0 DScale=1 PME-
	Capabilities: [58] MSI: Enable- Count=1/8 Maskable- 64bit+
		Address: 0000000000000000  Data: 0000
	Capabilities: [a0] MSI-X: Enable+ Count=5 Masked-
		Vector table: BAR=2 offset=00000000
		PBA: BAR=2 offset=00000120
	Capabilities: [ac] Express (v2) Endpoint, MSI 00
		DevCap:	MaxPayload 128 bytes, PhantFunc 0, Latency L0s <4us, L1 <64us
			ExtTag- AttnBtn- AttnInd- PwrInd- RBE+ FLReset-
		DevCtl:	Report errors: Correctable- Non-Fatal- Fatal- Unsupported-
			RlxdOrd- ExtTag- PhantFunc- AuxPwr+ NoSnoop-
			MaxPayload 128 bytes, MaxReadReq 512 bytes
		DevSta:	CorrErr- UncorrErr- FatalErr- UnsuppReq- AuxPwr+ TransPend-
		LnkCap:	Port #0, Speed 2.5GT/s, Width x1, ASPM L0s L1, Latency L0 <2us, L1 <64us
			ClockPM+ Surprise- LLActRep- BwNot-
		LnkCtl:	ASPM Disabled; RCB 64 bytes Disabled- Retrain- CommClk+
			ExtSynch- ClockPM+ AutWidDis- BWInt- AutBWInt-
		LnkSta:	Speed 2.5GT/s, Width x1, TrErr- Train- SlotClk+ DLActive- BWMgmt- ABWMgmt-
		DevCap2: Completion Timeout: Range ABCD, TimeoutDis+
		DevCtl2: Completion Timeout: 50us to 50ms, TimeoutDis-
		LnkCtl2: Target Link Speed: 2.5GT/s, EnterCompliance- SpeedDis-, Selectable De-emphasis: -6dB
			 Transmit Margin: Normal Operating Range, EnterModifiedCompliance- ComplianceSOS-
			 Compliance De-emphasis: -6dB
		LnkSta2: Current De-emphasis Level: -3.5dB, EqualizationComplete-, EqualizationPhase1-
			 EqualizationPhase2-, EqualizationPhase3-, LinkEqualizationRequest-
	Capabilities: [100 v1] Advanced Error Reporting
		UESta:	DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP- ECRC- UnsupReq- ACSViol-
		UEMsk:	DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP- ECRC- UnsupReq- ACSViol-
		UESvrt:	DLP+ SDES+ TLP- FCP+ CmpltTO- CmpltAbrt- UnxCmplt- RxOF+ MalfTLP+ ECRC- UnsupReq- ACSViol-
		CESta:	RxErr- BadTLP- BadDLLP- Rollover- Timeout- NonFatalErr+
		CEMsk:	RxErr- BadTLP- BadDLLP- Rollover- Timeout- NonFatalErr+
		AERCap:	First Error Pointer: 00, GenCap+ CGenEn- ChkCap+ ChkEn-
	Capabilities: [13c v1] Device Serial Number 00-00-20-6a-8a-80-06-c1
	Capabilities: [150 v1] Power Budgeting <?>
	Capabilities: [160 v1] Virtual Channel
		Caps:	LPEVC=0 RefClk=100ns PATEntryBits=1
		Arb:	Fixed- WRR32- WRR64- WRR128-
		Ctrl:	ArbSelect=Fixed
		Status:	InProgress-
		VC0:	Caps:	PATOffset=00 MaxTimeSlots=1 RejSnoopTrans-
			Arb:	Fixed- WRR32- WRR64- WRR128- TWRR128- WRR256-
			Ctrl:	Enable+ ID=0 ArbSelect=Fixed TC/VC=ff
			Status:	NegoPending- InProgress-
	Kernel driver in use: tg3

01:00.1 SD Host controller: Broadcom Corporation NetXtreme BCM57765 Memory Card Reader (rev 10) (prog-if 01)
	Subsystem: Acer Incorporated [ALI] Device 0605
	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0, Cache Line Size: 32 bytes
	Interrupt: pin B routed to IRQ 17
	Region 0: Memory at f0020000 (64-bit, prefetchable) [size=64K]
	Capabilities: [48] Power Management version 3
		Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
		Status: D0 NoSoftRst+ PME-Enable- DSel=0 DScale=1 PME-
	Capabilities: [58] MSI: Enable- Count=1/1 Maskable- 64bit+
		Address: 0000000000000000  Data: 0000
	Capabilities: [ac] Express (v2) Endpoint, MSI 00
		DevCap:	MaxPayload 128 bytes, PhantFunc 0, Latency L0s <4us, L1 <64us
			ExtTag- AttnBtn- AttnInd- PwrInd- RBE+ FLReset-
		DevCtl:	Report errors: Correctable- Non-Fatal- Fatal- Unsupported-
			RlxdOrd+ ExtTag- PhantFunc- AuxPwr+ NoSnoop+
			MaxPayload 128 bytes, MaxReadReq 4096 bytes
		DevSta:	CorrErr- UncorrErr- FatalErr- UnsuppReq- AuxPwr+ TransPend-
		LnkCap:	Port #0, Speed 2.5GT/s, Width x1, ASPM L0s L1, Latency L0 <1us, L1 <2us
			ClockPM+ Surprise- LLActRep- BwNot-
		LnkCtl:	ASPM Disabled; RCB 64 bytes Disabled- Retrain- CommClk+
			ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-
		LnkSta:	Speed 2.5GT/s, Width x1, TrErr- Train- SlotClk+ DLActive- BWMgmt- ABWMgmt-
		DevCap2: Completion Timeout: Range ABCD, TimeoutDis+
		DevCtl2: Completion Timeout: 50us to 50ms, TimeoutDis-
		LnkCtl2: Target Link Speed: 2.5GT/s, EnterCompliance- SpeedDis-, Selectable De-emphasis: -6dB
			 Transmit Margin: Normal Operating Range, EnterModifiedCompliance- ComplianceSOS-
			 Compliance De-emphasis: -6dB
		LnkSta2: Current De-emphasis Level: -3.5dB, EqualizationComplete-, EqualizationPhase1-
			 EqualizationPhase2-, EqualizationPhase3-, LinkEqualizationRequest-
	Capabilities: [100 v1] Advanced Error Reporting
		UESta:	DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP- ECRC- UnsupReq- ACSViol-
		UEMsk:	DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP- ECRC- UnsupReq- ACSViol-
		UESvrt:	DLP+ SDES+ TLP- FCP+ CmpltTO- CmpltAbrt- UnxCmplt- RxOF+ MalfTLP+ ECRC- UnsupReq- ACSViol-
		CESta:	RxErr- BadTLP- BadDLLP- Rollover- Timeout- NonFatalErr+
		CEMsk:	RxErr- BadTLP- BadDLLP- Rollover- Timeout- NonFatalErr+
		AERCap:	First Error Pointer: 00, GenCap+ CGenEn- ChkCap+ ChkEn-
	Capabilities: [150 v1] Power Budgeting <?>
	Capabilities: [160 v1] Virtual Channel
		Caps:	LPEVC=0 RefClk=100ns PATEntryBits=1
		Arb:	Fixed- WRR32- WRR64- WRR128-
		Ctrl:	ArbSelect=Fixed
		Status:	InProgress-
		VC0:	Caps:	PATOffset=00 MaxTimeSlots=1 RejSnoopTrans-
			Arb:	Fixed- WRR32- WRR64- WRR128- TWRR128- WRR256-
			Ctrl:	Enable+ ID=0 ArbSelect=Fixed TC/VC=ff
			Status:	NegoPending- InProgress-
	Kernel driver in use: sdhci-pci

01:00.2 System peripheral: Broadcom Corporation Device 16be (rev 10)
	Subsystem: Acer Incorporated [ALI] Device 0605
	Control: I/O- Mem+ BusMaster- SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Interrupt: pin B routed to IRQ 5
	Region 0: Memory at f0030000 (64-bit, prefetchable) [size=64K]
	Capabilities: [48] Power Management version 3
		Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
		Status: D0 NoSoftRst+ PME-Enable- DSel=0 DScale=1 PME-
	Capabilities: [58] MSI: Enable- Count=1/1 Maskable- 64bit+
		Address: 0000000000000000  Data: 0000
	Capabilities: [ac] Express (v2) Endpoint, MSI 00
		DevCap:	MaxPayload 128 bytes, PhantFunc 0, Latency L0s <4us, L1 <64us
			ExtTag- AttnBtn- AttnInd- PwrInd- RBE+ FLReset-
		DevCtl:	Report errors: Correctable- Non-Fatal- Fatal- Unsupported-
			RlxdOrd+ ExtTag- PhantFunc- AuxPwr+ NoSnoop+
			MaxPayload 128 bytes, MaxReadReq 4096 bytes
		DevSta:	CorrErr- UncorrErr- FatalErr- UnsuppReq- AuxPwr+ TransPend-
		LnkCap:	Port #0, Speed 2.5GT/s, Width x1, ASPM L0s L1, Latency L0 <1us, L1 <2us
			ClockPM+ Surprise- LLActRep- BwNot-
		LnkCtl:	ASPM Disabled; RCB 64 bytes Disabled- Retrain- CommClk+
			ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-
		LnkSta:	Speed 2.5GT/s, Width x1, TrErr- Train- SlotClk+ DLActive- BWMgmt- ABWMgmt-
		DevCap2: Completion Timeout: Range ABCD, TimeoutDis+
		DevCtl2: Completion Timeout: 50us to 50ms, TimeoutDis-
		LnkCtl2: Target Link Speed: 2.5GT/s, EnterCompliance- SpeedDis-, Selectable De-emphasis: -6dB
			 Transmit Margin: Normal Operating Range, EnterModifiedCompliance- ComplianceSOS-
			 Compliance De-emphasis: -6dB
		LnkSta2: Current De-emphasis Level: -3.5dB, EqualizationComplete-, EqualizationPhase1-
			 EqualizationPhase2-, EqualizationPhase3-, LinkEqualizationRequest-
	Capabilities: [100 v1] Advanced Error Reporting
		UESta:	DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP- ECRC- UnsupReq- ACSViol-
		UEMsk:	DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP- ECRC- UnsupReq- ACSViol-
		UESvrt:	DLP+ SDES+ TLP- FCP+ CmpltTO- CmpltAbrt- UnxCmplt- RxOF+ MalfTLP+ ECRC- UnsupReq- ACSViol-
		CESta:	RxErr- BadTLP- BadDLLP- Rollover- Timeout- NonFatalErr+
		CEMsk:	RxErr- BadTLP- BadDLLP- Rollover- Timeout- NonFatalErr+
		AERCap:	First Error Pointer: 00, GenCap+ CGenEn- ChkCap+ ChkEn-
	Capabilities: [150 v1] Power Budgeting <?>
	Capabilities: [160 v1] Virtual Channel
		Caps:	LPEVC=0 RefClk=100ns PATEntryBits=1
		Arb:	Fixed- WRR32- WRR64- WRR128-
		Ctrl:	ArbSelect=Fixed
		Status:	InProgress-
		VC0:	Caps:	PATOffset=00 MaxTimeSlots=1 RejSnoopTrans-
			Arb:	Fixed- WRR32- WRR64- WRR128- TWRR128- WRR256-
			Ctrl:	Enable+ ID=0 ArbSelect=Fixed TC/VC=ff
			Status:	NegoPending- InProgress-

01:00.3 System peripheral: Broadcom Corporation Device 16bf (rev 10)
	Subsystem: Acer Incorporated [ALI] Device 0605
	Control: I/O- Mem+ BusMaster- SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Interrupt: pin B routed to IRQ 5
	Region 0: Memory at f0040000 (64-bit, prefetchable) [size=64K]
	Capabilities: [48] Power Management version 3
		Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
		Status: D0 NoSoftRst+ PME-Enable- DSel=0 DScale=1 PME-
	Capabilities: [58] MSI: Enable- Count=1/1 Maskable- 64bit+
		Address: 0000000000000000  Data: 0000
	Capabilities: [ac] Express (v2) Endpoint, MSI 00
		DevCap:	MaxPayload 128 bytes, PhantFunc 0, Latency L0s <4us, L1 <64us
			ExtTag- AttnBtn- AttnInd- PwrInd- RBE+ FLReset-
		DevCtl:	Report errors: Correctable- Non-Fatal- Fatal- Unsupported-
			RlxdOrd+ ExtTag- PhantFunc- AuxPwr+ NoSnoop+
			MaxPayload 128 bytes, MaxReadReq 4096 bytes
		DevSta:	CorrErr- UncorrErr- FatalErr- UnsuppReq- AuxPwr+ TransPend-
		LnkCap:	Port #0, Speed 2.5GT/s, Width x1, ASPM L0s L1, Latency L0 <1us, L1 <2us
			ClockPM+ Surprise- LLActRep- BwNot-
		LnkCtl:	ASPM Disabled; RCB 64 bytes Disabled- Retrain- CommClk+
			ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-
		LnkSta:	Speed 2.5GT/s, Width x1, TrErr- Train- SlotClk+ DLActive- BWMgmt- ABWMgmt-
		DevCap2: Completion Timeout: Range ABCD, TimeoutDis+
		DevCtl2: Completion Timeout: 50us to 50ms, TimeoutDis-
		LnkCtl2: Target Link Speed: 2.5GT/s, EnterCompliance- SpeedDis-, Selectable De-emphasis: -6dB
			 Transmit Margin: Normal Operating Range, EnterModifiedCompliance- ComplianceSOS-
			 Compliance De-emphasis: -6dB
		LnkSta2: Current De-emphasis Level: -3.5dB, EqualizationComplete-, EqualizationPhase1-
			 EqualizationPhase2-, EqualizationPhase3-, LinkEqualizationRequest-
	Capabilities: [100 v1] Advanced Error Reporting
		UESta:	DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP- ECRC- UnsupReq- ACSViol-
		UEMsk:	DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP- ECRC- UnsupReq- ACSViol-
		UESvrt:	DLP+ SDES+ TLP- FCP+ CmpltTO- CmpltAbrt- UnxCmplt- RxOF+ MalfTLP+ ECRC- UnsupReq- ACSViol-
		CESta:	RxErr- BadTLP- BadDLLP- Rollover- Timeout- NonFatalErr+
		CEMsk:	RxErr- BadTLP- BadDLLP- Rollover- Timeout- NonFatalErr+
		AERCap:	First Error Pointer: 00, GenCap+ CGenEn- ChkCap+ ChkEn-
	Capabilities: [150 v1] Power Budgeting <?>
	Capabilities: [160 v1] Virtual Channel
		Caps:	LPEVC=0 RefClk=100ns PATEntryBits=1
		Arb:	Fixed- WRR32- WRR64- WRR128-
		Ctrl:	ArbSelect=Fixed
		Status:	InProgress-
		VC0:	Caps:	PATOffset=00 MaxTimeSlots=1 RejSnoopTrans-
			Arb:	Fixed- WRR32- WRR64- WRR128- TWRR128- WRR256-
			Ctrl:	Enable+ ID=0 ArbSelect=Fixed TC/VC=ff
			Status:	NegoPending- InProgress-

02:00.0 Network controller: Atheros Communications Inc. AR9287 Wireless Network Adapter (PCI-Express) (rev 01)
	Subsystem: Foxconn International, Inc. Device e034
	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0, Cache Line Size: 32 bytes
	Interrupt: pin A routed to IRQ 18
	Region 0: Memory at f0100000 (64-bit, non-prefetchable) [size=64K]
	Capabilities: [40] Power Management version 3
		Flags: PMEClk- DSI- D1+ D2- AuxCurrent=375mA PME(D0+,D1+,D2-,D3hot+,D3cold-)
		Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-
	Capabilities: [50] MSI: Enable- Count=1/1 Maskable- 64bit-
		Address: 00000000  Data: 0000
	Capabilities: [60] Express (v2) Legacy Endpoint, MSI 00
		DevCap:	MaxPayload 128 bytes, PhantFunc 0, Latency L0s <512ns, L1 <64us
			ExtTag- AttnBtn- AttnInd- PwrInd- RBE+ FLReset-
		DevCtl:	Report errors: Correctable- Non-Fatal- Fatal- Unsupported-
			RlxdOrd+ ExtTag- PhantFunc- AuxPwr- NoSnoop-
			MaxPayload 128 bytes, MaxReadReq 512 bytes
		DevSta:	CorrErr- UncorrErr- FatalErr- UnsuppReq- AuxPwr- TransPend-
		LnkCap:	Port #0, Speed 2.5GT/s, Width x1, ASPM L0s L1, Latency L0 <512ns, L1 <64us
			ClockPM- Surprise- LLActRep- BwNot-
		LnkCtl:	ASPM Disabled; RCB 64 bytes Disabled- Retrain- CommClk+
			ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-
		LnkSta:	Speed 2.5GT/s, Width x1, TrErr- Train- SlotClk+ DLActive- BWMgmt- ABWMgmt-
		DevCap2: Completion Timeout: Not Supported, TimeoutDis+
		DevCtl2: Completion Timeout: 50us to 50ms, TimeoutDis-
		LnkCtl2: Target Link Speed: 2.5GT/s, EnterCompliance- SpeedDis-, Selectable De-emphasis: -6dB
			 Transmit Margin: Normal Operating Range, EnterModifiedCompliance- ComplianceSOS-
			 Compliance De-emphasis: -6dB
		LnkSta2: Current De-emphasis Level: -6dB, EqualizationComplete-, EqualizationPhase1-
			 EqualizationPhase2-, EqualizationPhase3-, LinkEqualizationRequest-
	Capabilities: [100 v1] Advanced Error Reporting
		UESta:	DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP- ECRC- UnsupReq- ACSViol-
		UEMsk:	DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP- ECRC- UnsupReq- ACSViol-
		UESvrt:	DLP+ SDES+ TLP- FCP+ CmpltTO- CmpltAbrt- UnxCmplt- RxOF+ MalfTLP+ ECRC- UnsupReq- ACSViol-
		CESta:	RxErr- BadTLP- BadDLLP- Rollover- Timeout- NonFatalErr-
		CEMsk:	RxErr- BadTLP- BadDLLP- Rollover- Timeout- NonFatalErr+
		AERCap:	First Error Pointer: 00, GenCap+ CGenEn- ChkCap+ ChkEn-
	Capabilities: [140 v1] Virtual Channel
		Caps:	LPEVC=0 RefClk=100ns PATEntryBits=1
		Arb:	Fixed- WRR32- WRR64- WRR128-
		Ctrl:	ArbSelect=Fixed
		Status:	InProgress-
		VC0:	Caps:	PATOffset=00 MaxTimeSlots=1 RejSnoopTrans-
			Arb:	Fixed- WRR32- WRR64- WRR128- TWRR128- WRR256-
			Ctrl:	Enable+ ID=0 ArbSelect=Fixed TC/VC=ff
			Status:	NegoPending- InProgress-
	Capabilities: [160 v1] Device Serial Number 00-15-17-ff-ff-24-14-12
	Capabilities: [170 v1] Power Budgeting <?>
	Kernel driver in use: ath9k

```

# cpuid
```
CPU 0:
   vendor_id = "AuthenticAMD"
   version information (1/eax):
      processor type  = primary processor (0)
      family          = Intel Pentium 4/Pentium D/Pentium Extreme Edition/Celeron/Xeon/Xeon MP/Itanium2, AMD Athlon 64/Athlon XP-M/Opteron/Sempron/Turion (15)
      model           = 0x1 (1)
      stepping id     = 0x0 (0)
      extended family = 0x3 (3)
      extended model  = 0x0 (0)
      (simple synth)  = AMD Sempron Dual-Core (Llano LN-B0) / Athlon II Dual-Core (Llano LN-B0) / A-Series (Llano LN-B0) / E2-Series (Llano LN-B0), 32nm
   miscellaneous (1/ebx):
      process local APIC physical ID = 0x0 (0)
      cpu count                      = 0x4 (4)
      CLFLUSH line size              = 0x8 (8)
      brand index                    = 0x0 (0)
   brand id = 0x00 (0): unknown
   feature information (1/edx):
      x87 FPU on chip                        = true
      virtual-8086 mode enhancement          = true
      debugging extensions                   = true
      page size extensions                   = true
      time stamp counter                     = true
      RDMSR and WRMSR support                = true
      physical address extensions            = true
      machine check exception                = true
      CMPXCHG8B inst.                        = true
      APIC on chip                           = true
      SYSENTER and SYSEXIT                   = true
      memory type range registers            = true
      PTE global bit                         = true
      machine check architecture             = true
      conditional move/compare instruction   = true
      page attribute table                   = true
      page size extension                    = true
      processor serial number                = false
      CLFLUSH instruction                    = true
      debug store                            = false
      thermal monitor and clock ctrl         = false
      MMX Technology                         = true
      FXSAVE/FXRSTOR                         = true
      SSE extensions                         = true
      SSE2 extensions                        = true
      self snoop                             = false
      hyper-threading / multi-core supported = true
      therm. monitor                         = false
      IA64                                   = false
      pending break event                    = false
   feature information (1/ecx):
      PNI/SSE3: Prescott New Instructions     = true
      PCLMULDQ instruction                    = false
      64-bit debug store                      = false
      MONITOR/MWAIT                           = true
      CPL-qualified debug store               = false
      VMX: virtual machine extensions         = false
      SMX: safer mode extensions              = false
      Enhanced Intel SpeedStep Technology     = false
      thermal monitor 2                       = false
      SSSE3 extensions                        = false
      context ID: adaptive or shared L1 data  = false
      FMA instruction                         = false
      CMPXCHG16B instruction                  = true
      xTPR disable                            = false
      perfmon and debug                       = false
      process context identifiers             = false
      direct cache access                     = false
      SSE4.1 extensions                       = false
      SSE4.2 extensions                       = false
      extended xAPIC support                  = false
      MOVBE instruction                       = false
      POPCNT instruction                      = true
      time stamp counter deadline             = false
      AES instruction                         = false
      XSAVE/XSTOR states                      = false
      OS-enabled XSAVE/XSTOR                  = false
      AVX: advanced vector extensions         = false
      F16C half-precision convert instruction = false
      RDRAND instruction                      = false
      hypervisor guest status                 = false
   cache and TLB information (2):
   processor serial number: 0030-0F10-0000-0000-0000-0000
   MONITOR/MWAIT (5):
      smallest monitor-line size (bytes)       = 0x40 (64)
      largest monitor-line size (bytes)        = 0x40 (64)
      enum of Monitor-MWAIT exts supported     = true
      supports intrs as break-event for MWAIT  = true
      number of C0 sub C-states using MWAIT    = 0x0 (0)
      number of C1 sub C-states using MWAIT    = 0x0 (0)
      number of C2 sub C-states using MWAIT    = 0x0 (0)
      number of C3/C6 sub C-states using MWAIT = 0x0 (0)
      number of C4/C7 sub C-states using MWAIT = 0x0 (0)
   Thermal and Power Management Features (6):
      digital thermometer                     = false
      Intel Turbo Boost Technology            = false
      ARAT always running APIC timer          = false
      PLN power limit notification            = false
      ECMD extended clock modulation duty     = false
      PTM package thermal management          = false
      digital thermometer thresholds          = 0x0 (0)
      ACNT/MCNT supported performance measure = true
      ACNT2 available                         = false
      performance-energy bias capability      = false
   hypervisor_id = "            "
   extended processor signature (0x80000001/eax):
      family/generation = AMD Athlon 64/Opteron/Sempron/Turion (15)
      model             = 0x1 (1)
      stepping id       = 0x0 (0)
      extended family   = 0x3 (3)
      extended model    = 0x0 (0)
      (simple synth) = AMD Sempron Dual-Core (Llano LN-B0) / Athlon II Dual-Core (Llano LN-B0) / A-Series (Llano LN-B0) / E2-Series (Llano LN-B0), 32nm
   extended feature flags (0x80000001/edx):
      x87 FPU on chip                       = true
      virtual-8086 mode enhancement         = true
      debugging extensions                  = true
      page size extensions                  = true
      time stamp counter                    = true
      RDMSR and WRMSR support               = true
      physical address extensions           = true
      machine check exception               = true
      CMPXCHG8B inst.                       = true
      APIC on chip                          = true
      SYSCALL and SYSRET instructions       = true
      memory type range registers           = true
      global paging extension               = true
      machine check architecture            = true
      conditional move/compare instruction  = true
      page attribute table                  = true
      page size extension                   = true
      multiprocessing capable               = false
      no-execute page protection            = true
      AMD multimedia instruction extensions = true
      MMX Technology                        = true
      FXSAVE/FXRSTOR                        = true
      SSE extensions                        = true
      1-GB large page support               = true
      RDTSCP                                = true
      long mode (AA-64)                     = true
      3DNow! instruction extensions         = true
      3DNow! instructions                   = true
   extended brand id (0x80000001/ebx):
      raw     = 0x10001951 (268441937)
      BrandId = 0x1951 (6481)
   AMD feature flags (0x80000001/ecx):
      LAHF/SAHF supported in 64-bit mode = true
      CMP Legacy                         = true
      SVM: secure virtual machine        = true
      extended APIC space                = true
      AltMovCr8                          = true
      LZCNT advanced bit manipulation    = true
      SSE4A support                      = true
      misaligned SSE mode                = true
      PREFETCH/PREFETCHW instructions    = true
      OS visible workaround              = true
      instruction based sampling         = true
      XOP support                        = false
      SKINIT/STGI support                = true
      watchdog timer support             = true
      lightweight profiling support      = false
      4-operand FMA instruction          = false
      NodeId MSR C001100C                = false
      TBM support                        = false
      topology extensions                = false
   brand = "AMD A6-3420M APU with Radeon(tm) HD Graphics"
   L1 TLB/cache information: 2M/4M pages & L1 TLB (0x80000005/eax):
      instruction # entries     = 0x10 (16)
      instruction associativity = 0xff (255)
      data # entries            = 0x30 (48)
      data associativity        = 0xff (255)
   L1 TLB/cache information: 4K pages & L1 TLB (0x80000005/ebx):
      instruction # entries     = 0x20 (32)
      instruction associativity = 0xff (255)
      data # entries            = 0x30 (48)
      data associativity        = 0xff (255)
   L1 data cache information (0x80000005/ecx):
      line size (bytes) = 0x40 (64)
      lines per tag     = 0x1 (1)
      associativity     = 0x2 (2)
      size (Kb)         = 0x40 (64)
   L1 instruction cache information (0x80000005/edx):
      line size (bytes) = 0x40 (64)
      lines per tag     = 0x1 (1)
      associativity     = 0x2 (2)
      size (Kb)         = 0x40 (64)
   L2 TLB/cache information: 2M/4M pages & L2 TLB (0x80000006/eax):
      instruction # entries     = 0x0 (0)
      instruction associativity = L2 off (0)
      data # entries            = 0x80 (128)
      data associativity        = 2-way (2)
   L2 TLB/cache information: 4K pages & L2 TLB (0x80000006/ebx):
      instruction # entries     = 0x200 (512)
      instruction associativity = 4-way (4)
      data # entries            = 0x400 (1024)
      data associativity        = 4-way (4)
   L2 unified cache information (0x80000006/ecx):
      line size (bytes) = 0x40 (64)
      lines per tag     = 0x1 (1)
      associativity     = 16-way (8)
      size (Kb)         = 0x400 (1024)
   L3 cache information (0x80000006/edx):
      line size (bytes)     = 0x0 (0)
      lines per tag         = 0x0 (0)
      associativity         = L2 off (0)
      size (in 512Kb units) = 0x0 (0)
   Advanced Power Management Features (0x80000007/edx):
      temperature sensing diode      = true
      frequency ID (FID) control     = false
      voltage ID (VID) control       = false
      thermal trip (TTP)             = true
      thermal monitor (TM)           = true
      software thermal control (STC) = true
      100 MHz multiplier control     = true
      hardware P-State control       = true
      TscInvariant                   = true
   Physical Address and Linear Address Size (0x80000008/eax):
      maximum physical address bits         = 0x28 (40)
      maximum linear (virtual) address bits = 0x30 (48)
      maximum guest physical address bits   = 0x0 (0)
   Logical CPU cores (0x80000008/ecx):
      number of CPU cores - 1 = 0x3 (3)
      ApicIdCoreIdSize        = 0x2 (2)
   SVM Secure Virtual Machine (0x8000000a/eax):
      SvmRev: SVM revision = 0x1 (1)
   SVM Secure Virtual Machine (0x8000000a/edx):
      nested paging                 = true
      LBR virtualization            = true
      SVM lock                      = true
      NRIP save                     = true
      MSR based TSC rate control    = false
      VMCB clean bits support       = false
      flush by ASID                 = false
      decode assists                = false
      SSSE3/SSE5 opcode set disable = false
      pause intercept filter        = true
      pause filter threshold        = false
   NASID: number of address space identifiers = 0x40 (64):
   L1 TLB information: 1G pages (0x80000019/eax):
      instruction # entries     = 0x0 (0)
      instruction associativity = L2 off (0)
      data # entries            = 0x30 (48)
      data associativity        = full (15)
   L2 TLB information: 1G pages (0x80000019/ebx):
      instruction # entries     = 0x0 (0)
      instruction associativity = L2 off (0)
      data # entries            = 0x10 (16)
      data associativity        = 8-way (6)
   SVM Secure Virtual Machine (0x8000001a/eax):
      128-bit SSE executed full-width = true
      MOVU* better than MOVL*/MOVH*   = true
   Instruction Based Sampling Identifiers (0x8000001b/eax):
      IBS feature flags valid              = true
      IBS fetch sampling                   = true
      IBS execution sampling               = true
      read write of op counter             = true
      op counting mode                     = true
      branch target address reporting      = true
      IbsOpCurCnt and IbsOpMaxCnt extend 7 = true
      invalid RIP indication supported     = true
   (multi-processing synth): multi-core (c=4)
   (multi-processing method): AMD
   (APIC widths synth): CORE_width=2 SMT_width=0
   (APIC synth): PKG_ID=0 CORE_ID=0 SMT_ID=0
   (synth) = AMD Sempron Dual-Core (Llano LN-B0) / Athlon II Dual-Core (Llano LN-B0) / A-Series (Llano LN-B0) / E2-Series (Llano LN-B0), 32nm
CPU 1:
   vendor_id = "AuthenticAMD"
   version information (1/eax):
      processor type  = primary processor (0)
      family          = Intel Pentium 4/Pentium D/Pentium Extreme Edition/Celeron/Xeon/Xeon MP/Itanium2, AMD Athlon 64/Athlon XP-M/Opteron/Sempron/Turion (15)
      model           = 0x1 (1)
      stepping id     = 0x0 (0)
      extended family = 0x3 (3)
      extended model  = 0x0 (0)
      (simple synth)  = AMD Sempron Dual-Core (Llano LN-B0) / Athlon II Dual-Core (Llano LN-B0) / A-Series (Llano LN-B0) / E2-Series (Llano LN-B0), 32nm
   miscellaneous (1/ebx):
      process local APIC physical ID = 0x1 (1)
      cpu count                      = 0x4 (4)
      CLFLUSH line size              = 0x8 (8)
      brand index                    = 0x0 (0)
   brand id = 0x00 (0): unknown
   feature information (1/edx):
      x87 FPU on chip                        = true
      virtual-8086 mode enhancement          = true
      debugging extensions                   = true
      page size extensions                   = true
      time stamp counter                     = true
      RDMSR and WRMSR support                = true
      physical address extensions            = true
      machine check exception                = true
      CMPXCHG8B inst.                        = true
      APIC on chip                           = true
      SYSENTER and SYSEXIT                   = true
      memory type range registers            = true
      PTE global bit                         = true
      machine check architecture             = true
      conditional move/compare instruction   = true
      page attribute table                   = true
      page size extension                    = true
      processor serial number                = false
      CLFLUSH instruction                    = true
      debug store                            = false
      thermal monitor and clock ctrl         = false
      MMX Technology                         = true
      FXSAVE/FXRSTOR                         = true
      SSE extensions                         = true
      SSE2 extensions                        = true
      self snoop                             = false
      hyper-threading / multi-core supported = true
      therm. monitor                         = false
      IA64                                   = false
      pending break event                    = false
   feature information (1/ecx):
      PNI/SSE3: Prescott New Instructions     = true
      PCLMULDQ instruction                    = false
      64-bit debug store                      = false
      MONITOR/MWAIT                           = true
      CPL-qualified debug store               = false
      VMX: virtual machine extensions         = false
      SMX: safer mode extensions              = false
      Enhanced Intel SpeedStep Technology     = false
      thermal monitor 2                       = false
      SSSE3 extensions                        = false
      context ID: adaptive or shared L1 data  = false
      FMA instruction                         = false
      CMPXCHG16B instruction                  = true
      xTPR disable                            = false
      perfmon and debug                       = false
      process context identifiers             = false
      direct cache access                     = false
      SSE4.1 extensions                       = false
      SSE4.2 extensions                       = false
      extended xAPIC support                  = false
      MOVBE instruction                       = false
      POPCNT instruction                      = true
      time stamp counter deadline             = false
      AES instruction                         = false
      XSAVE/XSTOR states                      = false
      OS-enabled XSAVE/XSTOR                  = false
      AVX: advanced vector extensions         = false
      F16C half-precision convert instruction = false
      RDRAND instruction                      = false
      hypervisor guest status                 = false
   cache and TLB information (2):
   processor serial number: 0030-0F10-0000-0000-0000-0000
   MONITOR/MWAIT (5):
      smallest monitor-line size (bytes)       = 0x40 (64)
      largest monitor-line size (bytes)        = 0x40 (64)
      enum of Monitor-MWAIT exts supported     = true
      supports intrs as break-event for MWAIT  = true
      number of C0 sub C-states using MWAIT    = 0x0 (0)
      number of C1 sub C-states using MWAIT    = 0x0 (0)
      number of C2 sub C-states using MWAIT    = 0x0 (0)
      number of C3/C6 sub C-states using MWAIT = 0x0 (0)
      number of C4/C7 sub C-states using MWAIT = 0x0 (0)
   Thermal and Power Management Features (6):
      digital thermometer                     = false
      Intel Turbo Boost Technology            = false
      ARAT always running APIC timer          = false
      PLN power limit notification            = false
      ECMD extended clock modulation duty     = false
      PTM package thermal management          = false
      digital thermometer thresholds          = 0x0 (0)
      ACNT/MCNT supported performance measure = true
      ACNT2 available                         = false
      performance-energy bias capability      = false
   hypervisor_id = "            "
   extended processor signature (0x80000001/eax):
      family/generation = AMD Athlon 64/Opteron/Sempron/Turion (15)
      model             = 0x1 (1)
      stepping id       = 0x0 (0)
      extended family   = 0x3 (3)
      extended model    = 0x0 (0)
      (simple synth) = AMD Sempron Dual-Core (Llano LN-B0) / Athlon II Dual-Core (Llano LN-B0) / A-Series (Llano LN-B0) / E2-Series (Llano LN-B0), 32nm
   extended feature flags (0x80000001/edx):
      x87 FPU on chip                       = true
      virtual-8086 mode enhancement         = true
      debugging extensions                  = true
      page size extensions                  = true
      time stamp counter                    = true
      RDMSR and WRMSR support               = true
      physical address extensions           = true
      machine check exception               = true
      CMPXCHG8B inst.                       = true
      APIC on chip                          = true
      SYSCALL and SYSRET instructions       = true
      memory type range registers           = true
      global paging extension               = true
      machine check architecture            = true
      conditional move/compare instruction  = true
      page attribute table                  = true
      page size extension                   = true
      multiprocessing capable               = false
      no-execute page protection            = true
      AMD multimedia instruction extensions = true
      MMX Technology                        = true
      FXSAVE/FXRSTOR                        = true
      SSE extensions                        = true
      1-GB large page support               = true
      RDTSCP                                = true
      long mode (AA-64)                     = true
      3DNow! instruction extensions         = true
      3DNow! instructions                   = true
   extended brand id (0x80000001/ebx):
      raw     = 0x10001951 (268441937)
      BrandId = 0x1951 (6481)
   AMD feature flags (0x80000001/ecx):
      LAHF/SAHF supported in 64-bit mode = true
      CMP Legacy                         = true
      SVM: secure virtual machine        = true
      extended APIC space                = true
      AltMovCr8                          = true
      LZCNT advanced bit manipulation    = true
      SSE4A support                      = true
      misaligned SSE mode                = true
      PREFETCH/PREFETCHW instructions    = true
      OS visible workaround              = true
      instruction based sampling         = true
      XOP support                        = false
      SKINIT/STGI support                = true
      watchdog timer support             = true
      lightweight profiling support      = false
      4-operand FMA instruction          = false
      NodeId MSR C001100C                = false
      TBM support                        = false
      topology extensions                = false
   brand = "AMD A6-3420M APU with Radeon(tm) HD Graphics"
   L1 TLB/cache information: 2M/4M pages & L1 TLB (0x80000005/eax):
      instruction # entries     = 0x10 (16)
      instruction associativity = 0xff (255)
      data # entries            = 0x30 (48)
      data associativity        = 0xff (255)
   L1 TLB/cache information: 4K pages & L1 TLB (0x80000005/ebx):
      instruction # entries     = 0x20 (32)
      instruction associativity = 0xff (255)
      data # entries            = 0x30 (48)
      data associativity        = 0xff (255)
   L1 data cache information (0x80000005/ecx):
      line size (bytes) = 0x40 (64)
      lines per tag     = 0x1 (1)
      associativity     = 0x2 (2)
      size (Kb)         = 0x40 (64)
   L1 instruction cache information (0x80000005/edx):
      line size (bytes) = 0x40 (64)
      lines per tag     = 0x1 (1)
      associativity     = 0x2 (2)
      size (Kb)         = 0x40 (64)
   L2 TLB/cache information: 2M/4M pages & L2 TLB (0x80000006/eax):
      instruction # entries     = 0x0 (0)
      instruction associativity = L2 off (0)
      data # entries            = 0x80 (128)
      data associativity        = 2-way (2)
   L2 TLB/cache information: 4K pages & L2 TLB (0x80000006/ebx):
      instruction # entries     = 0x200 (512)
      instruction associativity = 4-way (4)
      data # entries            = 0x400 (1024)
      data associativity        = 4-way (4)
   L2 unified cache information (0x80000006/ecx):
      line size (bytes) = 0x40 (64)
      lines per tag     = 0x1 (1)
      associativity     = 16-way (8)
      size (Kb)         = 0x400 (1024)
   L3 cache information (0x80000006/edx):
      line size (bytes)     = 0x0 (0)
      lines per tag         = 0x0 (0)
      associativity         = L2 off (0)
      size (in 512Kb units) = 0x0 (0)
   Advanced Power Management Features (0x80000007/edx):
      temperature sensing diode      = true
      frequency ID (FID) control     = false
      voltage ID (VID) control       = false
      thermal trip (TTP)             = true
      thermal monitor (TM)           = true
      software thermal control (STC) = true
      100 MHz multiplier control     = true
      hardware P-State control       = true
      TscInvariant                   = true
   Physical Address and Linear Address Size (0x80000008/eax):
      maximum physical address bits         = 0x28 (40)
      maximum linear (virtual) address bits = 0x30 (48)
      maximum guest physical address bits   = 0x0 (0)
   Logical CPU cores (0x80000008/ecx):
      number of CPU cores - 1 = 0x3 (3)
      ApicIdCoreIdSize        = 0x2 (2)
   SVM Secure Virtual Machine (0x8000000a/eax):
      SvmRev: SVM revision = 0x1 (1)
   SVM Secure Virtual Machine (0x8000000a/edx):
      nested paging                 = true
      LBR virtualization            = true
      SVM lock                      = true
      NRIP save                     = true
      MSR based TSC rate control    = false
      VMCB clean bits support       = false
      flush by ASID                 = false
      decode assists                = false
      SSSE3/SSE5 opcode set disable = false
      pause intercept filter        = true
      pause filter threshold        = false
   NASID: number of address space identifiers = 0x40 (64):
   L1 TLB information: 1G pages (0x80000019/eax):
      instruction # entries     = 0x0 (0)
      instruction associativity = L2 off (0)
      data # entries            = 0x30 (48)
      data associativity        = full (15)
   L2 TLB information: 1G pages (0x80000019/ebx):
      instruction # entries     = 0x0 (0)
      instruction associativity = L2 off (0)
      data # entries            = 0x10 (16)
      data associativity        = 8-way (6)
   SVM Secure Virtual Machine (0x8000001a/eax):
      128-bit SSE executed full-width = true
      MOVU* better than MOVL*/MOVH*   = true
   Instruction Based Sampling Identifiers (0x8000001b/eax):
      IBS feature flags valid              = true
      IBS fetch sampling                   = true
      IBS execution sampling               = true
      read write of op counter             = true
      op counting mode                     = true
      branch target address reporting      = true
      IbsOpCurCnt and IbsOpMaxCnt extend 7 = true
      invalid RIP indication supported     = true
   (multi-processing synth): multi-core (c=4)
   (multi-processing method): AMD
   (APIC widths synth): CORE_width=2 SMT_width=0
   (APIC synth): PKG_ID=0 CORE_ID=1 SMT_ID=0
   (synth) = AMD Sempron Dual-Core (Llano LN-B0) / Athlon II Dual-Core (Llano LN-B0) / A-Series (Llano LN-B0) / E2-Series (Llano LN-B0), 32nm
CPU 2:
   vendor_id = "AuthenticAMD"
   version information (1/eax):
      processor type  = primary processor (0)
      family          = Intel Pentium 4/Pentium D/Pentium Extreme Edition/Celeron/Xeon/Xeon MP/Itanium2, AMD Athlon 64/Athlon XP-M/Opteron/Sempron/Turion (15)
      model           = 0x1 (1)
      stepping id     = 0x0 (0)
      extended family = 0x3 (3)
      extended model  = 0x0 (0)
      (simple synth)  = AMD Sempron Dual-Core (Llano LN-B0) / Athlon II Dual-Core (Llano LN-B0) / A-Series (Llano LN-B0) / E2-Series (Llano LN-B0), 32nm
   miscellaneous (1/ebx):
      process local APIC physical ID = 0x2 (2)
      cpu count                      = 0x4 (4)
      CLFLUSH line size              = 0x8 (8)
      brand index                    = 0x0 (0)
   brand id = 0x00 (0): unknown
   feature information (1/edx):
      x87 FPU on chip                        = true
      virtual-8086 mode enhancement          = true
      debugging extensions                   = true
      page size extensions                   = true
      time stamp counter                     = true
      RDMSR and WRMSR support                = true
      physical address extensions            = true
      machine check exception                = true
      CMPXCHG8B inst.                        = true
      APIC on chip                           = true
      SYSENTER and SYSEXIT                   = true
      memory type range registers            = true
      PTE global bit                         = true
      machine check architecture             = true
      conditional move/compare instruction   = true
      page attribute table                   = true
      page size extension                    = true
      processor serial number                = false
      CLFLUSH instruction                    = true
      debug store                            = false
      thermal monitor and clock ctrl         = false
      MMX Technology                         = true
      FXSAVE/FXRSTOR                         = true
      SSE extensions                         = true
      SSE2 extensions                        = true
      self snoop                             = false
      hyper-threading / multi-core supported = true
      therm. monitor                         = false
      IA64                                   = false
      pending break event                    = false
   feature information (1/ecx):
      PNI/SSE3: Prescott New Instructions     = true
      PCLMULDQ instruction                    = false
      64-bit debug store                      = false
      MONITOR/MWAIT                           = true
      CPL-qualified debug store               = false
      VMX: virtual machine extensions         = false
      SMX: safer mode extensions              = false
      Enhanced Intel SpeedStep Technology     = false
      thermal monitor 2                       = false
      SSSE3 extensions                        = false
      context ID: adaptive or shared L1 data  = false
      FMA instruction                         = false
      CMPXCHG16B instruction                  = true
      xTPR disable                            = false
      perfmon and debug                       = false
      process context identifiers             = false
      direct cache access                     = false
      SSE4.1 extensions                       = false
      SSE4.2 extensions                       = false
      extended xAPIC support                  = false
      MOVBE instruction                       = false
      POPCNT instruction                      = true
      time stamp counter deadline             = false
      AES instruction                         = false
      XSAVE/XSTOR states                      = false
      OS-enabled XSAVE/XSTOR                  = false
      AVX: advanced vector extensions         = false
      F16C half-precision convert instruction = false
      RDRAND instruction                      = false
      hypervisor guest status                 = false
   cache and TLB information (2):
   processor serial number: 0030-0F10-0000-0000-0000-0000
   MONITOR/MWAIT (5):
      smallest monitor-line size (bytes)       = 0x40 (64)
      largest monitor-line size (bytes)        = 0x40 (64)
      enum of Monitor-MWAIT exts supported     = true
      supports intrs as break-event for MWAIT  = true
      number of C0 sub C-states using MWAIT    = 0x0 (0)
      number of C1 sub C-states using MWAIT    = 0x0 (0)
      number of C2 sub C-states using MWAIT    = 0x0 (0)
      number of C3/C6 sub C-states using MWAIT = 0x0 (0)
      number of C4/C7 sub C-states using MWAIT = 0x0 (0)
   Thermal and Power Management Features (6):
      digital thermometer                     = false
      Intel Turbo Boost Technology            = false
      ARAT always running APIC timer          = false
      PLN power limit notification            = false
      ECMD extended clock modulation duty     = false
      PTM package thermal management          = false
      digital thermometer thresholds          = 0x0 (0)
      ACNT/MCNT supported performance measure = true
      ACNT2 available                         = false
      performance-energy bias capability      = false
   hypervisor_id = "            "
   extended processor signature (0x80000001/eax):
      family/generation = AMD Athlon 64/Opteron/Sempron/Turion (15)
      model             = 0x1 (1)
      stepping id       = 0x0 (0)
      extended family   = 0x3 (3)
      extended model    = 0x0 (0)
      (simple synth) = AMD Sempron Dual-Core (Llano LN-B0) / Athlon II Dual-Core (Llano LN-B0) / A-Series (Llano LN-B0) / E2-Series (Llano LN-B0), 32nm
   extended feature flags (0x80000001/edx):
      x87 FPU on chip                       = true
      virtual-8086 mode enhancement         = true
      debugging extensions                  = true
      page size extensions                  = true
      time stamp counter                    = true
      RDMSR and WRMSR support               = true
      physical address extensions           = true
      machine check exception               = true
      CMPXCHG8B inst.                       = true
      APIC on chip                          = true
      SYSCALL and SYSRET instructions       = true
      memory type range registers           = true
      global paging extension               = true
      machine check architecture            = true
      conditional move/compare instruction  = true
      page attribute table                  = true
      page size extension                   = true
      multiprocessing capable               = false
      no-execute page protection            = true
      AMD multimedia instruction extensions = true
      MMX Technology                        = true
      FXSAVE/FXRSTOR                        = true
      SSE extensions                        = true
      1-GB large page support               = true
      RDTSCP                                = true
      long mode (AA-64)                     = true
      3DNow! instruction extensions         = true
      3DNow! instructions                   = true
   extended brand id (0x80000001/ebx):
      raw     = 0x10001951 (268441937)
      BrandId = 0x1951 (6481)
   AMD feature flags (0x80000001/ecx):
      LAHF/SAHF supported in 64-bit mode = true
      CMP Legacy                         = true
      SVM: secure virtual machine        = true
      extended APIC space                = true
      AltMovCr8                          = true
      LZCNT advanced bit manipulation    = true
      SSE4A support                      = true
      misaligned SSE mode                = true
      PREFETCH/PREFETCHW instructions    = true
      OS visible workaround              = true
      instruction based sampling         = true
      XOP support                        = false
      SKINIT/STGI support                = true
      watchdog timer support             = true
      lightweight profiling support      = false
      4-operand FMA instruction          = false
      NodeId MSR C001100C                = false
      TBM support                        = false
      topology extensions                = false
   brand = "AMD A6-3420M APU with Radeon(tm) HD Graphics"
   L1 TLB/cache information: 2M/4M pages & L1 TLB (0x80000005/eax):
      instruction # entries     = 0x10 (16)
      instruction associativity = 0xff (255)
      data # entries            = 0x30 (48)
      data associativity        = 0xff (255)
   L1 TLB/cache information: 4K pages & L1 TLB (0x80000005/ebx):
      instruction # entries     = 0x20 (32)
      instruction associativity = 0xff (255)
      data # entries            = 0x30 (48)
      data associativity        = 0xff (255)
   L1 data cache information (0x80000005/ecx):
      line size (bytes) = 0x40 (64)
      lines per tag     = 0x1 (1)
      associativity     = 0x2 (2)
      size (Kb)         = 0x40 (64)
   L1 instruction cache information (0x80000005/edx):
      line size (bytes) = 0x40 (64)
      lines per tag     = 0x1 (1)
      associativity     = 0x2 (2)
      size (Kb)         = 0x40 (64)
   L2 TLB/cache information: 2M/4M pages & L2 TLB (0x80000006/eax):
      instruction # entries     = 0x0 (0)
      instruction associativity = L2 off (0)
      data # entries            = 0x80 (128)
      data associativity        = 2-way (2)
   L2 TLB/cache information: 4K pages & L2 TLB (0x80000006/ebx):
      instruction # entries     = 0x200 (512)
      instruction associativity = 4-way (4)
      data # entries            = 0x400 (1024)
      data associativity        = 4-way (4)
   L2 unified cache information (0x80000006/ecx):
      line size (bytes) = 0x40 (64)
      lines per tag     = 0x1 (1)
      associativity     = 16-way (8)
      size (Kb)         = 0x400 (1024)
   L3 cache information (0x80000006/edx):
      line size (bytes)     = 0x0 (0)
      lines per tag         = 0x0 (0)
      associativity         = L2 off (0)
      size (in 512Kb units) = 0x0 (0)
   Advanced Power Management Features (0x80000007/edx):
      temperature sensing diode      = true
      frequency ID (FID) control     = false
      voltage ID (VID) control       = false
      thermal trip (TTP)             = true
      thermal monitor (TM)           = true
      software thermal control (STC) = true
      100 MHz multiplier control     = true
      hardware P-State control       = true
      TscInvariant                   = true
   Physical Address and Linear Address Size (0x80000008/eax):
      maximum physical address bits         = 0x28 (40)
      maximum linear (virtual) address bits = 0x30 (48)
      maximum guest physical address bits   = 0x0 (0)
   Logical CPU cores (0x80000008/ecx):
      number of CPU cores - 1 = 0x3 (3)
      ApicIdCoreIdSize        = 0x2 (2)
   SVM Secure Virtual Machine (0x8000000a/eax):
      SvmRev: SVM revision = 0x1 (1)
   SVM Secure Virtual Machine (0x8000000a/edx):
      nested paging                 = true
      LBR virtualization            = true
      SVM lock                      = true
      NRIP save                     = true
      MSR based TSC rate control    = false
      VMCB clean bits support       = false
      flush by ASID                 = false
      decode assists                = false
      SSSE3/SSE5 opcode set disable = false
      pause intercept filter        = true
      pause filter threshold        = false
   NASID: number of address space identifiers = 0x40 (64):
   L1 TLB information: 1G pages (0x80000019/eax):
      instruction # entries     = 0x0 (0)
      instruction associativity = L2 off (0)
      data # entries            = 0x30 (48)
      data associativity        = full (15)
   L2 TLB information: 1G pages (0x80000019/ebx):
      instruction # entries     = 0x0 (0)
      instruction associativity = L2 off (0)
      data # entries            = 0x10 (16)
      data associativity        = 8-way (6)
   SVM Secure Virtual Machine (0x8000001a/eax):
      128-bit SSE executed full-width = true
      MOVU* better than MOVL*/MOVH*   = true
   Instruction Based Sampling Identifiers (0x8000001b/eax):
      IBS feature flags valid              = true
      IBS fetch sampling                   = true
      IBS execution sampling               = true
      read write of op counter             = true
      op counting mode                     = true
      branch target address reporting      = true
      IbsOpCurCnt and IbsOpMaxCnt extend 7 = true
      invalid RIP indication supported     = true
   (multi-processing synth): multi-core (c=4)
   (multi-processing method): AMD
   (APIC widths synth): CORE_width=2 SMT_width=0
   (APIC synth): PKG_ID=0 CORE_ID=2 SMT_ID=0
   (synth) = AMD Sempron Dual-Core (Llano LN-B0) / Athlon II Dual-Core (Llano LN-B0) / A-Series (Llano LN-B0) / E2-Series (Llano LN-B0), 32nm
CPU 3:
   vendor_id = "AuthenticAMD"
   version information (1/eax):
      processor type  = primary processor (0)
      family          = Intel Pentium 4/Pentium D/Pentium Extreme Edition/Celeron/Xeon/Xeon MP/Itanium2, AMD Athlon 64/Athlon XP-M/Opteron/Sempron/Turion (15)
      model           = 0x1 (1)
      stepping id     = 0x0 (0)
      extended family = 0x3 (3)
      extended model  = 0x0 (0)
      (simple synth)  = AMD Sempron Dual-Core (Llano LN-B0) / Athlon II Dual-Core (Llano LN-B0) / A-Series (Llano LN-B0) / E2-Series (Llano LN-B0), 32nm
   miscellaneous (1/ebx):
      process local APIC physical ID = 0x3 (3)
      cpu count                      = 0x4 (4)
      CLFLUSH line size              = 0x8 (8)
      brand index                    = 0x0 (0)
   brand id = 0x00 (0): unknown
   feature information (1/edx):
      x87 FPU on chip                        = true
      virtual-8086 mode enhancement          = true
      debugging extensions                   = true
      page size extensions                   = true
      time stamp counter                     = true
      RDMSR and WRMSR support                = true
      physical address extensions            = true
      machine check exception                = true
      CMPXCHG8B inst.                        = true
      APIC on chip                           = true
      SYSENTER and SYSEXIT                   = true
      memory type range registers            = true
      PTE global bit                         = true
      machine check architecture             = true
      conditional move/compare instruction   = true
      page attribute table                   = true
      page size extension                    = true
      processor serial number                = false
      CLFLUSH instruction                    = true
      debug store                            = false
      thermal monitor and clock ctrl         = false
      MMX Technology                         = true
      FXSAVE/FXRSTOR                         = true
      SSE extensions                         = true
      SSE2 extensions                        = true
      self snoop                             = false
      hyper-threading / multi-core supported = true
      therm. monitor                         = false
      IA64                                   = false
      pending break event                    = false
   feature information (1/ecx):
      PNI/SSE3: Prescott New Instructions     = true
      PCLMULDQ instruction                    = false
      64-bit debug store                      = false
      MONITOR/MWAIT                           = true
      CPL-qualified debug store               = false
      VMX: virtual machine extensions         = false
      SMX: safer mode extensions              = false
      Enhanced Intel SpeedStep Technology     = false
      thermal monitor 2                       = false
      SSSE3 extensions                        = false
      context ID: adaptive or shared L1 data  = false
      FMA instruction                         = false
      CMPXCHG16B instruction                  = true
      xTPR disable                            = false
      perfmon and debug                       = false
      process context identifiers             = false
      direct cache access                     = false
      SSE4.1 extensions                       = false
      SSE4.2 extensions                       = false
      extended xAPIC support                  = false
      MOVBE instruction                       = false
      POPCNT instruction                      = true
      time stamp counter deadline             = false
      AES instruction                         = false
      XSAVE/XSTOR states                      = false
      OS-enabled XSAVE/XSTOR                  = false
      AVX: advanced vector extensions         = false
      F16C half-precision convert instruction = false
      RDRAND instruction                      = false
      hypervisor guest status                 = false
   cache and TLB information (2):
   processor serial number: 0030-0F10-0000-0000-0000-0000
   MONITOR/MWAIT (5):
      smallest monitor-line size (bytes)       = 0x40 (64)
      largest monitor-line size (bytes)        = 0x40 (64)
      enum of Monitor-MWAIT exts supported     = true
      supports intrs as break-event for MWAIT  = true
      number of C0 sub C-states using MWAIT    = 0x0 (0)
      number of C1 sub C-states using MWAIT    = 0x0 (0)
      number of C2 sub C-states using MWAIT    = 0x0 (0)
      number of C3/C6 sub C-states using MWAIT = 0x0 (0)
      number of C4/C7 sub C-states using MWAIT = 0x0 (0)
   Thermal and Power Management Features (6):
      digital thermometer                     = false
      Intel Turbo Boost Technology            = false
      ARAT always running APIC timer          = false
      PLN power limit notification            = false
      ECMD extended clock modulation duty     = false
      PTM package thermal management          = false
      digital thermometer thresholds          = 0x0 (0)
      ACNT/MCNT supported performance measure = true
      ACNT2 available                         = false
      performance-energy bias capability      = false
   hypervisor_id = "            "
   extended processor signature (0x80000001/eax):
      family/generation = AMD Athlon 64/Opteron/Sempron/Turion (15)
      model             = 0x1 (1)
      stepping id       = 0x0 (0)
      extended family   = 0x3 (3)
      extended model    = 0x0 (0)
      (simple synth) = AMD Sempron Dual-Core (Llano LN-B0) / Athlon II Dual-Core (Llano LN-B0) / A-Series (Llano LN-B0) / E2-Series (Llano LN-B0), 32nm
   extended feature flags (0x80000001/edx):
      x87 FPU on chip                       = true
      virtual-8086 mode enhancement         = true
      debugging extensions                  = true
      page size extensions                  = true
      time stamp counter                    = true
      RDMSR and WRMSR support               = true
      physical address extensions           = true
      machine check exception               = true
      CMPXCHG8B inst.                       = true
      APIC on chip                          = true
      SYSCALL and SYSRET instructions       = true
      memory type range registers           = true
      global paging extension               = true
      machine check architecture            = true
      conditional move/compare instruction  = true
      page attribute table                  = true
      page size extension                   = true
      multiprocessing capable               = false
      no-execute page protection            = true
      AMD multimedia instruction extensions = true
      MMX Technology                        = true
      FXSAVE/FXRSTOR                        = true
      SSE extensions                        = true
      1-GB large page support               = true
      RDTSCP                                = true
      long mode (AA-64)                     = true
      3DNow! instruction extensions         = true
      3DNow! instructions                   = true
   extended brand id (0x80000001/ebx):
      raw     = 0x10001951 (268441937)
      BrandId = 0x1951 (6481)
   AMD feature flags (0x80000001/ecx):
      LAHF/SAHF supported in 64-bit mode = true
      CMP Legacy                         = true
      SVM: secure virtual machine        = true
      extended APIC space                = true
      AltMovCr8                          = true
      LZCNT advanced bit manipulation    = true
      SSE4A support                      = true
      misaligned SSE mode                = true
      PREFETCH/PREFETCHW instructions    = true
      OS visible workaround              = true
      instruction based sampling         = true
      XOP support                        = false
      SKINIT/STGI support                = true
      watchdog timer support             = true
      lightweight profiling support      = false
      4-operand FMA instruction          = false
      NodeId MSR C001100C                = false
      TBM support                        = false
      topology extensions                = false
   brand = "AMD A6-3420M APU with Radeon(tm) HD Graphics"
   L1 TLB/cache information: 2M/4M pages & L1 TLB (0x80000005/eax):
      instruction # entries     = 0x10 (16)
      instruction associativity = 0xff (255)
      data # entries            = 0x30 (48)
      data associativity        = 0xff (255)
   L1 TLB/cache information: 4K pages & L1 TLB (0x80000005/ebx):
      instruction # entries     = 0x20 (32)
      instruction associativity = 0xff (255)
      data # entries            = 0x30 (48)
      data associativity        = 0xff (255)
   L1 data cache information (0x80000005/ecx):
      line size (bytes) = 0x40 (64)
      lines per tag     = 0x1 (1)
      associativity     = 0x2 (2)
      size (Kb)         = 0x40 (64)
   L1 instruction cache information (0x80000005/edx):
      line size (bytes) = 0x40 (64)
      lines per tag     = 0x1 (1)
      associativity     = 0x2 (2)
      size (Kb)         = 0x40 (64)
   L2 TLB/cache information: 2M/4M pages & L2 TLB (0x80000006/eax):
      instruction # entries     = 0x0 (0)
      instruction associativity = L2 off (0)
      data # entries            = 0x80 (128)
      data associativity        = 2-way (2)
   L2 TLB/cache information: 4K pages & L2 TLB (0x80000006/ebx):
      instruction # entries     = 0x200 (512)
      instruction associativity = 4-way (4)
      data # entries            = 0x400 (1024)
      data associativity        = 4-way (4)
   L2 unified cache information (0x80000006/ecx):
      line size (bytes) = 0x40 (64)
      lines per tag     = 0x1 (1)
      associativity     = 16-way (8)
      size (Kb)         = 0x400 (1024)
   L3 cache information (0x80000006/edx):
      line size (bytes)     = 0x0 (0)
      lines per tag         = 0x0 (0)
      associativity         = L2 off (0)
      size (in 512Kb units) = 0x0 (0)
   Advanced Power Management Features (0x80000007/edx):
      temperature sensing diode      = true
      frequency ID (FID) control     = false
      voltage ID (VID) control       = false
      thermal trip (TTP)             = true
      thermal monitor (TM)           = true
      software thermal control (STC) = true
      100 MHz multiplier control     = true
      hardware P-State control       = true
      TscInvariant                   = true
   Physical Address and Linear Address Size (0x80000008/eax):
      maximum physical address bits         = 0x28 (40)
      maximum linear (virtual) address bits = 0x30 (48)
      maximum guest physical address bits   = 0x0 (0)
   Logical CPU cores (0x80000008/ecx):
      number of CPU cores - 1 = 0x3 (3)
      ApicIdCoreIdSize        = 0x2 (2)
   SVM Secure Virtual Machine (0x8000000a/eax):
      SvmRev: SVM revision = 0x1 (1)
   SVM Secure Virtual Machine (0x8000000a/edx):
      nested paging                 = true
      LBR virtualization            = true
      SVM lock                      = true
      NRIP save                     = true
      MSR based TSC rate control    = false
      VMCB clean bits support       = false
      flush by ASID                 = false
      decode assists                = false
      SSSE3/SSE5 opcode set disable = false
      pause intercept filter        = true
      pause filter threshold        = false
   NASID: number of address space identifiers = 0x40 (64):
   L1 TLB information: 1G pages (0x80000019/eax):
      instruction # entries     = 0x0 (0)
      instruction associativity = L2 off (0)
      data # entries            = 0x30 (48)
      data associativity        = full (15)
   L2 TLB information: 1G pages (0x80000019/ebx):
      instruction # entries     = 0x0 (0)
      instruction associativity = L2 off (0)
      data # entries            = 0x10 (16)
      data associativity        = 8-way (6)
   SVM Secure Virtual Machine (0x8000001a/eax):
      128-bit SSE executed full-width = true
      MOVU* better than MOVL*/MOVH*   = true
   Instruction Based Sampling Identifiers (0x8000001b/eax):
      IBS feature flags valid              = true
      IBS fetch sampling                   = true
      IBS execution sampling               = true
      read write of op counter             = true
      op counting mode                     = true
      branch target address reporting      = true
      IbsOpCurCnt and IbsOpMaxCnt extend 7 = true
      invalid RIP indication supported     = true
   (multi-processing synth): multi-core (c=4)
   (multi-processing method): AMD
   (APIC widths synth): CORE_width=2 SMT_width=0
   (APIC synth): PKG_ID=0 CORE_ID=3 SMT_ID=0
   (synth) = AMD Sempron Dual-Core (Llano LN-B0) / Athlon II Dual-Core (Llano LN-B0) / A-Series (Llano LN-B0) / E2-Series (Llano LN-B0), 32nm
```
# /proc/cpuinfo
```
processor	: 0
vendor_id	: AuthenticAMD
cpu family	: 18
model		: 1
model name	: AMD A6-3420M APU with Radeon(tm) HD Graphics
stepping	: 0
microcode	: 0x3000027
cpu MHz		: 800.000
cache size	: 1024 KB
physical id	: 0
siblings	: 4
core id		: 0
cpu cores	: 4
apicid		: 0
initial apicid	: 0
fpu		: yes
fpu_exception	: yes
cpuid level	: 6
wp		: yes
flags		: fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush mmx fxsr sse sse2 ht syscall nx mmxext fxsr_opt pdpe1gb rdtscp lm 3dnowext 3dnow constant_tsc rep_good nopl nonstop_tsc extd_apicid aperfmperf pni monitor cx16 popcnt lahf_lm cmp_legacy svm extapic cr8_legacy abm sse4a misalignsse 3dnowprefetch osvw ibs skinit wdt arat cpb hw_pstate npt lbrv svm_lock nrip_save pausefilter
bogomips	: 2994.46
TLB size	: 1536 4K pages
clflush size	: 64
cache_alignment	: 64
address sizes	: 40 bits physical, 48 bits virtual
power management: ts ttp tm stc 100mhzsteps hwpstate cpb

processor	: 1
vendor_id	: AuthenticAMD
cpu family	: 18
model		: 1
model name	: AMD A6-3420M APU with Radeon(tm) HD Graphics
stepping	: 0
microcode	: 0x3000027
cpu MHz		: 800.000
cache size	: 1024 KB
physical id	: 0
siblings	: 4
core id		: 1
cpu cores	: 4
apicid		: 1
initial apicid	: 1
fpu		: yes
fpu_exception	: yes
cpuid level	: 6
wp		: yes
flags		: fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush mmx fxsr sse sse2 ht syscall nx mmxext fxsr_opt pdpe1gb rdtscp lm 3dnowext 3dnow constant_tsc rep_good nopl nonstop_tsc extd_apicid aperfmperf pni monitor cx16 popcnt lahf_lm cmp_legacy svm extapic cr8_legacy abm sse4a misalignsse 3dnowprefetch osvw ibs skinit wdt arat cpb hw_pstate npt lbrv svm_lock nrip_save pausefilter
bogomips	: 2994.46
TLB size	: 1536 4K pages
clflush size	: 64
cache_alignment	: 64
address sizes	: 40 bits physical, 48 bits virtual
power management: ts ttp tm stc 100mhzsteps hwpstate cpb

processor	: 2
vendor_id	: AuthenticAMD
cpu family	: 18
model		: 1
model name	: AMD A6-3420M APU with Radeon(tm) HD Graphics
stepping	: 0
microcode	: 0x3000027
cpu MHz		: 800.000
cache size	: 1024 KB
physical id	: 0
siblings	: 4
core id		: 2
cpu cores	: 4
apicid		: 2
initial apicid	: 2
fpu		: yes
fpu_exception	: yes
cpuid level	: 6
wp		: yes
flags		: fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush mmx fxsr sse sse2 ht syscall nx mmxext fxsr_opt pdpe1gb rdtscp lm 3dnowext 3dnow constant_tsc rep_good nopl nonstop_tsc extd_apicid aperfmperf pni monitor cx16 popcnt lahf_lm cmp_legacy svm extapic cr8_legacy abm sse4a misalignsse 3dnowprefetch osvw ibs skinit wdt arat cpb hw_pstate npt lbrv svm_lock nrip_save pausefilter
bogomips	: 2994.46
TLB size	: 1536 4K pages
clflush size	: 64
cache_alignment	: 64
address sizes	: 40 bits physical, 48 bits virtual
power management: ts ttp tm stc 100mhzsteps hwpstate cpb

processor	: 3
vendor_id	: AuthenticAMD
cpu family	: 18
model		: 1
model name	: AMD A6-3420M APU with Radeon(tm) HD Graphics
stepping	: 0
microcode	: 0x3000027
cpu MHz		: 800.000
cache size	: 1024 KB
physical id	: 0
siblings	: 4
core id		: 3
cpu cores	: 4
apicid		: 3
initial apicid	: 3
fpu		: yes
fpu_exception	: yes
cpuid level	: 6
wp		: yes
flags		: fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush mmx fxsr sse sse2 ht syscall nx mmxext fxsr_opt pdpe1gb rdtscp lm 3dnowext 3dnow constant_tsc rep_good nopl nonstop_tsc extd_apicid aperfmperf pni monitor cx16 popcnt lahf_lm cmp_legacy svm extapic cr8_legacy abm sse4a misalignsse 3dnowprefetch osvw ibs skinit wdt arat cpb hw_pstate npt lbrv svm_lock nrip_save pausefilter
bogomips	: 2994.46
TLB size	: 1536 4K pages
clflush size	: 64
cache_alignment	: 64
address sizes	: 40 bits physical, 48 bits virtual
power management: ts ttp tm stc 100mhzsteps hwpstate cpb
```
