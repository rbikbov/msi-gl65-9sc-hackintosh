/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190405 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of /Volumes/SYSTEM/EFI/CLOVER/ACPI/origin/SSDT-4-ADebTabl.aml, Fri Feb 21 06:22:06 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000144 (324)
 *     Revision         0x02
 *     Checksum         0xBF
 *     OEM ID           "Intel "
 *     OEM Table ID     "ADebTabl"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160527 (538314023)
 */
DefinitionBlock ("", "SSDT", 2, "Intel ", "ADebTabl", 0x00001000)
{
    Scope (\)
    {
        Name (DPTR, 0x78761000)
        Name (EPTR, 0x78771000)
        Name (CPTR, 0x78761020)
        Mutex (MMUT, 0x00)
        OperationRegion (ADBP, SystemIO, 0xB2, 0x02)
        Field (ADBP, ByteAcc, NoLock, Preserve)
        {
            B2PT,   8, 
            B3PT,   8
        }

        Method (MDBG, 1, Serialized)
        {
            OperationRegion (ADHD, SystemMemory, DPTR, 0x20)
            Field (ADHD, ByteAcc, NoLock, Preserve)
            {
                ASIG,   128, 
                ASIZ,   32, 
                ACHP,   32, 
                ACTP,   32, 
                SMIN,   8, 
                WRAP,   8, 
                SMMV,   8, 
                TRUN,   8
            }

            Store (Acquire (MMUT, 0x03E8), Local0)
            If (LEqual (Local0, Zero))
            {
                OperationRegion (ABLK, SystemMemory, CPTR, 0x20)
                Field (ABLK, ByteAcc, NoLock, Preserve)
                {
                    AAAA,   256
                }

                ToHexString (Arg0, Local1)
                Store (Zero, TRUN) /* \MDBG.TRUN */
                If (LGreaterEqual (SizeOf (Local1), 0x20))
                {
                    Store (One, TRUN) /* \MDBG.TRUN */
                }

                Mid (Local1, Zero, 0x1F, AAAA) /* \MDBG.AAAA */
                Add (CPTR, 0x20, CPTR) /* \CPTR */
                If (LGreaterEqual (CPTR, EPTR))
                {
                    Add (DPTR, 0x20, CPTR) /* \CPTR */
                    Store (One, WRAP) /* \MDBG.WRAP */
                }

                Store (CPTR, ACTP) /* \MDBG.ACTP */
                If (SMMV)
                {
                    Store (SMIN, B2PT) /* \B2PT */
                }

                Release (MMUT)
            }

            Return (Local0)
        }
    }
}

