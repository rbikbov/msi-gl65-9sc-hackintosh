/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-PNLF-CFL.aml, Wed Oct  5 14:16:27 2022
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000007D (125)
 *     Revision         0x02
 *     Checksum         0xB7
 *     OEM ID           "DRTNIA"
 *     OEM Table ID     "PNLFCFL"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200925 (538970405)
 */
DefinitionBlock ("", "SSDT", 2, "DRTNIA", "PNLFCFL", 0x00000000)
{
    External (_SB_.PCI0.GFX0, DeviceObj)    // (from opcode)

    Device (_SB.PCI0.GFX0.PNLF)
    {
        Name (_ADR, Zero)  // _ADR: Address
        Name (_HID, EisaId ("APP0002"))  // _HID: Hardware ID
        Name (_CID, "backlight")  // _CID: Compatible ID
        Name (_UID, 0x13)  // _UID: Unique ID
        Name (_STA, 0x0B)  // _STA: Status
    }
}

