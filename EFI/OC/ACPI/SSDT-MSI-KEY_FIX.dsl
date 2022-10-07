/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-MSI-KEY_FIX.aml, Wed Oct  5 14:16:27 2022
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000094 (148)
 *     Revision         0x02
 *     Checksum         0xB2
 *     OEM ID           "hack"
 *     OEM Table ID     "ps2"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20100331 (537920305)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "ps2", 0x00000000)
{
    Name (_SB.PCI0.LPCB.PS2K.RMCF, Package (0x02)
    {
        "Keyboard", 
        Package (0x04)
        {
            "Custom PS2 Map", 
            Package (0x02)
            {
                Package (0x00){}, 
                "e037=64"
            }, 

            "Custom ADB Map", 
            Package (0x03)
            {
                Package (0x00){}, 
                "e077=6b", 
                "e078=71"
            }
        }
    })
}

