/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200110 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLI18ENy.aml, Sat Sep 18 17:10:35 2021
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

