/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-XOSI.aml, Wed Oct  5 14:16:27 2022
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000005D (93)
 *     Revision         0x02
 *     Checksum         0x1C
 *     OEM ID           "OCLT"
 *     OEM Table ID     "OC-XOSI"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20190703 (538511107)
 */
DefinitionBlock ("", "SSDT", 2, "OCLT", "OC-XOSI", 0x00000000)
{
    Method (XOSI, 1, NotSerialized)
    {
        If (_OSI ("Darwin"))
        {
            If (LEqual (Arg0, "Windows 2015"))
            {
                Return (0xFFFFFFFF)
            }
            Else
            {
                Return (Zero)
            }
        }
        Else
        {
            Return (_OSI (Arg0))
        }
    }
}

