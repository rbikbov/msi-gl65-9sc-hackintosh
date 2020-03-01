/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190405 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of /Volumes/SYSTEM/EFI/CLOVER/ACPI/origin/SSDT-2-PegSsdt.aml, Fri Feb 21 06:22:06 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000025A7 (9639)
 *     Revision         0x02
 *     Checksum         0xC9
 *     OEM ID           "PegSsd"
 *     OEM Table ID     "PegSsdt"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160527 (538314023)
 */
DefinitionBlock ("", "SSDT", 2, "PegSsd", "PegSsdt", 0x00001000)
{
    External (_SB_.CAGS, MethodObj)    // 1 Arguments
    External (_SB_.GGIV, MethodObj)    // 1 Arguments
    External (_SB_.GGOV, MethodObj)    // 1 Arguments
    External (_SB_.ISME, MethodObj)    // 1 Arguments
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.LPCB.EC__.BE06, UnknownObj)
    External (_SB_.PCI0.LPCB.EC__.CPUT, UnknownObj)
    External (_SB_.PCI0.LPCB.EC__.GPST, UnknownObj)
    External (_SB_.PCI0.LPCB.EC__.PSNM, UnknownObj)
    External (_SB_.PCI0.LPCB.EC__.QDXF, UnknownObj)
    External (_SB_.PCI0.PEG0, DeviceObj)
    External (_SB_.PCI0.PEG0.CEDR, IntObj)
    External (_SB_.PCI0.PEG0.LNKD, UnknownObj)
    External (_SB_.PCI0.PEG0.LNKS, UnknownObj)
    External (_SB_.PCI0.PEG0.LREN, IntObj)
    External (_SB_.PCI0.PEG0.PEGP, DeviceObj)
    External (_SB_.PCI0.PEG0.PEGP.OTMS, UnknownObj)
    External (_SB_.PCI0.PEG0.PINI, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.PEG0.PPBA, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.PEG1, DeviceObj)
    External (_SB_.PCI0.PEG1.PEGP, DeviceObj)
    External (_SB_.PCI0.PEG1.PINI, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.PEG1.PPBA, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.PEG2, DeviceObj)
    External (_SB_.PCI0.PEG2.PEGP, DeviceObj)
    External (_SB_.PCI0.PEG2.PINI, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.PEG2.PPBA, MethodObj)    // 1 Arguments
    External (_SB_.SGOV, MethodObj)    // 2 Arguments
    External (_SB_.SHPO, MethodObj)    // 2 Arguments
    External (AR02, UnknownObj)
    External (AR0A, UnknownObj)
    External (AR0B, UnknownObj)
    External (CPEX, UnknownObj)
    External (DLHR, UnknownObj)
    External (DLPW, UnknownObj)
    External (ECR1, UnknownObj)
    External (EEC1, UnknownObj)
    External (EEC2, UnknownObj)
    External (EECP, UnknownObj)
    External (GBAS, UnknownObj)
    External (GPRW, MethodObj)    // 2 Arguments
    External (HRA0, UnknownObj)
    External (HRA1, UnknownObj)
    External (HRA2, UnknownObj)
    External (HRE0, UnknownObj)
    External (HRE1, UnknownObj)
    External (HRE2, UnknownObj)
    External (HRG0, UnknownObj)
    External (HRG1, UnknownObj)
    External (HRG2, UnknownObj)
    External (LTRW, UnknownObj)
    External (LTRX, UnknownObj)
    External (LTRY, UnknownObj)
    External (LTRZ, UnknownObj)
    External (NVGA, UnknownObj)
    External (OBFA, UnknownObj)
    External (OBFX, UnknownObj)
    External (OBFY, UnknownObj)
    External (OBFZ, UnknownObj)
    External (OSYS, UnknownObj)
    External (P0UB, UnknownObj)
    External (P0WK, UnknownObj)
    External (P1GP, UnknownObj)
    External (P1UB, UnknownObj)
    External (P1WK, UnknownObj)
    External (P2GP, UnknownObj)
    External (P2UB, UnknownObj)
    External (P2WK, UnknownObj)
    External (P8XH, MethodObj)    // 2 Arguments
    External (PBGE, UnknownObj)
    External (PCSL, UnknownObj)
    External (PD02, UnknownObj)
    External (PD0A, UnknownObj)
    External (PD0B, UnknownObj)
    External (PICM, UnknownObj)
    External (PWA0, UnknownObj)
    External (PWA1, UnknownObj)
    External (PWA2, UnknownObj)
    External (PWE0, UnknownObj)
    External (PWE1, UnknownObj)
    External (PWE2, UnknownObj)
    External (PWG0, UnknownObj)
    External (PWG1, UnknownObj)
    External (PWG2, UnknownObj)
    External (SBN0, UnknownObj)
    External (SBN1, UnknownObj)
    External (SBN2, UnknownObj)
    External (SCLK, UnknownObj)
    External (SGGP, UnknownObj)
    External (SGMD, UnknownObj)
    External (SMSL, UnknownObj)
    External (SNSL, UnknownObj)
    External (XBAS, UnknownObj)

    Scope (\_GPE)
    {
        Method (P0L6, 0, NotSerialized)
        {
            If (\_SB.ISME (P0WK))
            {
                \_SB.SHPO (P0WK, One)
                Notify (\_SB.PCI0.PEG0, 0x02) // Device Wake
                \_SB.CAGS (P0WK)
            }
        }

        Method (P1L6, 0, NotSerialized)
        {
            If (\_SB.ISME (P1WK))
            {
                \_SB.SHPO (P1WK, One)
                Notify (\_SB.PCI0.PEG1, 0x02) // Device Wake
                \_SB.CAGS (P1WK)
            }
        }

        Method (P2L6, 0, NotSerialized)
        {
            If (\_SB.ISME (P2WK))
            {
                \_SB.SHPO (P2WK, One)
                Notify (\_SB.PCI0.PEG2, 0x02) // Device Wake
                \_SB.CAGS (P2WK)
            }
        }
    }

    Scope (\_SB.PCI0.PEG0)
    {
        Name (WKEN, Zero)
        OperationRegion (PEGR, PCI_Config, 0xC0, 0x30)
        Field (PEGR, DWordAcc, NoLock, Preserve)
        {
            Offset (0x02), 
            PSTS,   1, 
            Offset (0x2C), 
            GENG,   1, 
                ,   1, 
            PMEG,   1
        }

        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x69, 0x04))
        }

        Method (HPME, 0, Serialized)
        {
            Store (One, PSTS) /* \_SB_.PCI0.PEG0.PSTS */
        }

        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            If (PRES ())
            {
                Store (LTRX, LTRS) /* \_SB_.PCI0.LTRS */
                Store (OBFX, OBFS) /* \_SB_.PCI0.OBFS */
                If (CondRefOf (PINI))
                {
                    PINI ()
                }
            }
        }

        Name (LTRV, Package (0x04)
        {
            Zero, 
            Zero, 
            Zero, 
            Zero
        })
        OperationRegion (PXCS, PCI_Config, Zero, 0x0480)
        Field (PXCS, AnyAcc, NoLock, Preserve)
        {
            VDID,   32
        }

        Method (PRES, 0, NotSerialized)
        {
            If (LEqual (VDID, 0xFFFFFFFF))
            {
                Return (Zero)
            }
            Else
            {
                Return (One)
            }
        }

        Name (LNRD, Zero)
        Method (UPRD, 1, Serialized)
        {
            If (LLessEqual (Arg0, 0x2710))
            {
                Store (Arg0, LNRD) /* \_SB_.PCI0.PEG0.LNRD */
            }

            Return (LNRD) /* \_SB_.PCI0.PEG0.LNRD */
        }

        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            If (LEqual (Arg0, ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
            {
                Switch (ToInteger (Arg2))
                {
                    Case (Zero)
                    {
                        Name (DSMF, Buffer (0x02)
                        {
                             0x00, 0x00                                       // ..
                        })
                        CreateBitField (DSMF, Zero, FUN0)
                        CreateBitField (DSMF, 0x04, FUN4)
                        CreateBitField (DSMF, 0x06, FUN6)
                        CreateBitField (DSMF, 0x08, FUN8)
                        CreateBitField (DSMF, 0x09, FUN9)
                        CreateBitField (DSMF, 0x0A, FUNA)
                        CreateBitField (DSMF, 0x0B, FUNB)
                        Store (One, FUN0) /* \_SB_.PCI0.PEG0._DSM.FUN0 */
                        If (LGreaterEqual (Arg1, 0x02))
                        {
                            If (LTRS)
                            {
                                Store (One, FUN6) /* \_SB_.PCI0.PEG0._DSM.FUN6 */
                            }

                            If (OBFS)
                            {
                                Store (One, FUN4) /* \_SB_.PCI0.PEG0._DSM.FUN4 */
                            }
                        }

                        If (LGreaterEqual (Arg1, 0x03))
                        {
                            If (ECR1)
                            {
                                Store (One, FUN8) /* \_SB_.PCI0.PEG0._DSM.FUN8 */
                            }

                            If (ECR1)
                            {
                                Store (One, FUN9) /* \_SB_.PCI0.PEG0._DSM.FUN9 */
                            }
                        }

                        If (LGreaterEqual (Arg1, 0x04))
                        {
                            If (CondRefOf (PPBA))
                            {
                                Store (One, FUNA) /* \_SB_.PCI0.PEG0._DSM.FUNA */
                            }

                            Store (One, FUNB) /* \_SB_.PCI0.PEG0._DSM.FUNB */
                        }

                        Return (DSMF) /* \_SB_.PCI0.PEG0._DSM.DSMF */
                    }
                    Case (0x04)
                    {
                        If (LGreaterEqual (Arg1, 0x02))
                        {
                            If (OBFS)
                            {
                                Return (Buffer (0x10)
                                {
                                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                    /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00   // ........
                                })
                            }
                            Else
                            {
                                Return (Buffer (0x10)
                                {
                                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                                })
                            }
                        }
                    }
                    Case (0x06)
                    {
                        If (LGreaterEqual (Arg1, 0x02))
                        {
                            If (LTRS)
                            {
                                Store (And (ShiftRight (SMSL, 0x0A), 0x07), Index (LTRV, Zero))
                                Store (And (SMSL, 0x03FF), Index (LTRV, One))
                                Store (And (ShiftRight (SNSL, 0x0A), 0x07), Index (LTRV, 0x02))
                                Store (And (SNSL, 0x03FF), Index (LTRV, 0x03))
                                Return (LTRV) /* \_SB_.PCI0.PEG0.LTRV */
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }
                    Case (0x08)
                    {
                        If (LEqual (ECR1, One))
                        {
                            If (LGreaterEqual (Arg1, 0x03))
                            {
                                Return (One)
                            }
                        }
                    }
                    Case (0x09)
                    {
                        If (LEqual (ECR1, One))
                        {
                            If (LGreaterEqual (Arg1, 0x03))
                            {
                                Return (Package (0x05)
                                {
                                    0xC350, 
                                    Ones, 
                                    Ones, 
                                    0xC350, 
                                    Ones
                                })
                            }
                        }
                    }
                    Case (0x0A)
                    {
                        If (CondRefOf (PPBA))
                        {
                            Return (PPBA (Arg3))
                        }
                    }
                    Case (0x0B)
                    {
                        Return (UPRD (Arg3))
                    }

                }
            }

            Return (Buffer (One)
            {
                 0x00                                             // .
            })
        }

        Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
        {
            If (Arg1)
            {
                Store (Zero, WKEN) /* \_SB_.PCI0.PEG0.WKEN */
            }
            ElseIf (LAnd (Arg0, Arg2))
            {
                Store (One, WKEN) /* \_SB_.PCI0.PEG0.WKEN */
            }
            Else
            {
                Store (Zero, WKEN) /* \_SB_.PCI0.PEG0.WKEN */
            }
        }

        Method (P0EW, 0, NotSerialized)
        {
            If (WKEN)
            {
                If (LNotEqual (SGGP, Zero))
                {
                    If (LEqual (SGGP, One))
                    {
                        \_SB.SGOV (P0WK, One)
                        \_SB.SHPO (P0WK, Zero)
                    }
                }
            }
        }

        Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
        {
            Return (0x04)
        }
    }

    Scope (\_SB.PCI0.PEG0.PEGP)
    {
        Name (LTRE, Zero)
        OperationRegion (PCIS, PCI_Config, Zero, 0x0100)
        Field (PCIS, AnyAcc, NoLock, Preserve)
        {
            PVID,   16, 
            PDID,   16
        }

        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x69, 0x04))
        }
    }

    Scope (\_SB.PCI0.PEG1)
    {
        Name (WKEN, Zero)
        OperationRegion (PEGR, PCI_Config, 0xC0, 0x30)
        Field (PEGR, DWordAcc, NoLock, Preserve)
        {
            Offset (0x02), 
            PSTS,   1, 
            Offset (0x2C), 
            GENG,   1, 
                ,   1, 
            PMEG,   1
        }

        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x69, 0x04))
        }

        Method (HPME, 0, Serialized)
        {
            Store (One, PSTS) /* \_SB_.PCI0.PEG1.PSTS */
        }

        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            If (PRES ())
            {
                Store (LTRY, LTRS) /* \_SB_.PCI0.LTRS */
                Store (OBFY, OBFS) /* \_SB_.PCI0.OBFS */
                If (CondRefOf (PINI))
                {
                    PINI ()
                }
            }
        }

        Name (LTRV, Package (0x04)
        {
            Zero, 
            Zero, 
            Zero, 
            Zero
        })
        OperationRegion (PXCS, PCI_Config, Zero, 0x0480)
        Field (PXCS, AnyAcc, NoLock, Preserve)
        {
            VDID,   32
        }

        Method (PRES, 0, NotSerialized)
        {
            If (LEqual (VDID, 0xFFFFFFFF))
            {
                Return (Zero)
            }
            Else
            {
                Return (One)
            }
        }

        Name (LNRD, Zero)
        Method (UPRD, 1, Serialized)
        {
            If (LLessEqual (Arg0, 0x2710))
            {
                Store (Arg0, LNRD) /* \_SB_.PCI0.PEG1.LNRD */
            }

            Return (LNRD) /* \_SB_.PCI0.PEG1.LNRD */
        }

        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            If (LEqual (Arg0, ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
            {
                Switch (ToInteger (Arg2))
                {
                    Case (Zero)
                    {
                        Name (DSMF, Buffer (0x02)
                        {
                             0x00, 0x00                                       // ..
                        })
                        CreateBitField (DSMF, Zero, FUN0)
                        CreateBitField (DSMF, 0x04, FUN4)
                        CreateBitField (DSMF, 0x06, FUN6)
                        CreateBitField (DSMF, 0x08, FUN8)
                        CreateBitField (DSMF, 0x09, FUN9)
                        CreateBitField (DSMF, 0x0A, FUNA)
                        CreateBitField (DSMF, 0x0B, FUNB)
                        Store (One, FUN0) /* \_SB_.PCI0.PEG1._DSM.FUN0 */
                        If (LGreaterEqual (Arg1, 0x02))
                        {
                            If (LTRS)
                            {
                                Store (One, FUN6) /* \_SB_.PCI0.PEG1._DSM.FUN6 */
                            }

                            If (OBFS)
                            {
                                Store (One, FUN4) /* \_SB_.PCI0.PEG1._DSM.FUN4 */
                            }
                        }

                        If (LGreaterEqual (Arg1, 0x03))
                        {
                            If (ECR1)
                            {
                                Store (One, FUN8) /* \_SB_.PCI0.PEG1._DSM.FUN8 */
                            }

                            If (ECR1)
                            {
                                Store (One, FUN9) /* \_SB_.PCI0.PEG1._DSM.FUN9 */
                            }
                        }

                        If (LGreaterEqual (Arg1, 0x04))
                        {
                            If (CondRefOf (PPBA))
                            {
                                Store (One, FUNA) /* \_SB_.PCI0.PEG1._DSM.FUNA */
                            }

                            Store (One, FUNB) /* \_SB_.PCI0.PEG1._DSM.FUNB */
                        }

                        Return (DSMF) /* \_SB_.PCI0.PEG1._DSM.DSMF */
                    }
                    Case (0x04)
                    {
                        If (LGreaterEqual (Arg1, 0x02))
                        {
                            If (OBFS)
                            {
                                Return (Buffer (0x10)
                                {
                                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                    /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00   // ........
                                })
                            }
                            Else
                            {
                                Return (Buffer (0x10)
                                {
                                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                                })
                            }
                        }
                    }
                    Case (0x06)
                    {
                        If (LGreaterEqual (Arg1, 0x02))
                        {
                            If (LTRS)
                            {
                                Store (And (ShiftRight (SMSL, 0x0A), 0x07), Index (LTRV, Zero))
                                Store (And (SMSL, 0x03FF), Index (LTRV, One))
                                Store (And (ShiftRight (SNSL, 0x0A), 0x07), Index (LTRV, 0x02))
                                Store (And (SNSL, 0x03FF), Index (LTRV, 0x03))
                                Return (LTRV) /* \_SB_.PCI0.PEG1.LTRV */
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }
                    Case (0x08)
                    {
                        If (LEqual (ECR1, One))
                        {
                            If (LGreaterEqual (Arg1, 0x03))
                            {
                                Return (One)
                            }
                        }
                    }
                    Case (0x09)
                    {
                        If (LEqual (ECR1, One))
                        {
                            If (LGreaterEqual (Arg1, 0x03))
                            {
                                Return (Package (0x05)
                                {
                                    0xC350, 
                                    Ones, 
                                    Ones, 
                                    0xC350, 
                                    Ones
                                })
                            }
                        }
                    }
                    Case (0x0A)
                    {
                        If (CondRefOf (PPBA))
                        {
                            Return (PPBA (Arg3))
                        }
                    }
                    Case (0x0B)
                    {
                        Return (UPRD (Arg3))
                    }

                }
            }

            Return (Buffer (One)
            {
                 0x00                                             // .
            })
        }

        Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
        {
            If (Arg1)
            {
                Store (Zero, WKEN) /* \_SB_.PCI0.PEG1.WKEN */
            }
            ElseIf (LAnd (Arg0, Arg2))
            {
                Store (One, WKEN) /* \_SB_.PCI0.PEG1.WKEN */
            }
            Else
            {
                Store (Zero, WKEN) /* \_SB_.PCI0.PEG1.WKEN */
            }
        }

        Method (P1EW, 0, NotSerialized)
        {
            If (WKEN)
            {
                If (LNotEqual (P1GP, Zero))
                {
                    If (LEqual (P1GP, One))
                    {
                        \_SB.SGOV (P1WK, One)
                        \_SB.SHPO (P1WK, Zero)
                    }
                }
            }
        }

        Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
        {
            Return (0x04)
        }
    }

    Scope (\_SB.PCI0.PEG1.PEGP)
    {
        OperationRegion (PCIS, PCI_Config, Zero, 0x0100)
        Field (PCIS, AnyAcc, NoLock, Preserve)
        {
            PVID,   16, 
            PDID,   16
        }

        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x69, 0x04))
        }
    }

    Scope (\_SB.PCI0.PEG2)
    {
        Name (WKEN, Zero)
        OperationRegion (PEGR, PCI_Config, 0xC0, 0x30)
        Field (PEGR, DWordAcc, NoLock, Preserve)
        {
            Offset (0x02), 
            PSTS,   1, 
            Offset (0x2C), 
            GENG,   1, 
                ,   1, 
            PMEG,   1
        }

        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x69, 0x04))
        }

        Method (HPME, 0, Serialized)
        {
            Store (One, PSTS) /* \_SB_.PCI0.PEG2.PSTS */
        }

        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            If (PRES ())
            {
                Store (LTRZ, LTRS) /* \_SB_.PCI0.LTRS */
                Store (OBFZ, OBFS) /* \_SB_.PCI0.OBFS */
                If (CondRefOf (PINI))
                {
                    PINI ()
                }
            }
        }

        Name (LTRV, Package (0x04)
        {
            Zero, 
            Zero, 
            Zero, 
            Zero
        })
        OperationRegion (PXCS, PCI_Config, Zero, 0x0480)
        Field (PXCS, AnyAcc, NoLock, Preserve)
        {
            VDID,   32
        }

        Method (PRES, 0, NotSerialized)
        {
            If (LEqual (VDID, 0xFFFFFFFF))
            {
                Return (Zero)
            }
            Else
            {
                Return (One)
            }
        }

        Name (LNRD, Zero)
        Method (UPRD, 1, Serialized)
        {
            If (LLessEqual (Arg0, 0x2710))
            {
                Store (Arg0, LNRD) /* \_SB_.PCI0.PEG2.LNRD */
            }

            Return (LNRD) /* \_SB_.PCI0.PEG2.LNRD */
        }

        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            If (LEqual (Arg0, ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
            {
                Switch (ToInteger (Arg2))
                {
                    Case (Zero)
                    {
                        Name (DSMF, Buffer (0x02)
                        {
                             0x00, 0x00                                       // ..
                        })
                        CreateBitField (DSMF, Zero, FUN0)
                        CreateBitField (DSMF, 0x04, FUN4)
                        CreateBitField (DSMF, 0x06, FUN6)
                        CreateBitField (DSMF, 0x08, FUN8)
                        CreateBitField (DSMF, 0x09, FUN9)
                        CreateBitField (DSMF, 0x0A, FUNA)
                        CreateBitField (DSMF, 0x0B, FUNB)
                        Store (One, FUN0) /* \_SB_.PCI0.PEG2._DSM.FUN0 */
                        If (LGreaterEqual (Arg1, 0x02))
                        {
                            If (LTRS)
                            {
                                Store (One, FUN6) /* \_SB_.PCI0.PEG2._DSM.FUN6 */
                            }

                            If (OBFS)
                            {
                                Store (One, FUN4) /* \_SB_.PCI0.PEG2._DSM.FUN4 */
                            }
                        }

                        If (LGreaterEqual (Arg1, 0x03))
                        {
                            If (ECR1)
                            {
                                Store (One, FUN8) /* \_SB_.PCI0.PEG2._DSM.FUN8 */
                            }

                            If (ECR1)
                            {
                                Store (One, FUN9) /* \_SB_.PCI0.PEG2._DSM.FUN9 */
                            }
                        }

                        If (LGreaterEqual (Arg1, 0x04))
                        {
                            If (CondRefOf (PPBA))
                            {
                                Store (One, FUNA) /* \_SB_.PCI0.PEG2._DSM.FUNA */
                            }

                            Store (One, FUNB) /* \_SB_.PCI0.PEG2._DSM.FUNB */
                        }

                        Return (DSMF) /* \_SB_.PCI0.PEG2._DSM.DSMF */
                    }
                    Case (0x04)
                    {
                        If (LGreaterEqual (Arg1, 0x02))
                        {
                            If (OBFS)
                            {
                                Return (Buffer (0x10)
                                {
                                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                    /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00   // ........
                                })
                            }
                            Else
                            {
                                Return (Buffer (0x10)
                                {
                                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                                })
                            }
                        }
                    }
                    Case (0x06)
                    {
                        If (LGreaterEqual (Arg1, 0x02))
                        {
                            If (LTRS)
                            {
                                Store (And (ShiftRight (SMSL, 0x0A), 0x07), Index (LTRV, Zero))
                                Store (And (SMSL, 0x03FF), Index (LTRV, One))
                                Store (And (ShiftRight (SNSL, 0x0A), 0x07), Index (LTRV, 0x02))
                                Store (And (SNSL, 0x03FF), Index (LTRV, 0x03))
                                Return (LTRV) /* \_SB_.PCI0.PEG2.LTRV */
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }
                    Case (0x08)
                    {
                        If (LEqual (ECR1, One))
                        {
                            If (LGreaterEqual (Arg1, 0x03))
                            {
                                Return (One)
                            }
                        }
                    }
                    Case (0x09)
                    {
                        If (LEqual (ECR1, One))
                        {
                            If (LGreaterEqual (Arg1, 0x03))
                            {
                                Return (Package (0x05)
                                {
                                    0xC350, 
                                    Ones, 
                                    Ones, 
                                    0xC350, 
                                    Ones
                                })
                            }
                        }
                    }
                    Case (0x0A)
                    {
                        If (CondRefOf (PPBA))
                        {
                            Return (PPBA (Arg3))
                        }
                    }
                    Case (0x0B)
                    {
                        Return (UPRD (Arg3))
                    }

                }
            }

            Return (Buffer (One)
            {
                 0x00                                             // .
            })
        }

        Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
        {
            If (Arg1)
            {
                Store (Zero, WKEN) /* \_SB_.PCI0.PEG2.WKEN */
            }
            ElseIf (LAnd (Arg0, Arg2))
            {
                Store (One, WKEN) /* \_SB_.PCI0.PEG2.WKEN */
            }
            Else
            {
                Store (Zero, WKEN) /* \_SB_.PCI0.PEG2.WKEN */
            }
        }

        Method (P2EW, 0, NotSerialized)
        {
            If (WKEN)
            {
                If (LNotEqual (P2GP, Zero))
                {
                    If (LEqual (P2GP, One))
                    {
                        \_SB.SGOV (P2WK, One)
                        \_SB.SHPO (P2WK, Zero)
                    }
                }
            }
        }

        Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
        {
            Return (0x04)
        }
    }

    Scope (\_SB.PCI0.PEG2.PEGP)
    {
        OperationRegion (PCIS, PCI_Config, Zero, 0x0100)
        Field (PCIS, AnyAcc, NoLock, Preserve)
        {
            PVID,   16, 
            PDID,   16
        }

        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x69, 0x04))
        }
    }

    Scope (\_SB.PCI0)
    {
        Name (IVID, 0xFFFF)
        Name (PEBA, Zero)
        Name (PION, Zero)
        Name (PIOF, Zero)
        Name (PBUS, Zero)
        Name (PDEV, Zero)
        Name (PFUN, Zero)
        Name (EBUS, Zero)
        Name (EDEV, Zero)
        Name (EFN0, Zero)
        Name (EFN1, One)
        Name (LTRS, Zero)
        Name (OBFS, Zero)
        Name (INDX, Zero)
        Name (DSOF, 0x06)
        Name (CPOF, 0x34)
        Name (SBOF, 0x19)
        Name (ELC0, Zero)
        Name (ECP0, 0xFFFFFFFF)
        Name (H0VI, Zero)
        Name (H0DI, Zero)
        Name (ELC1, Zero)
        Name (ECP1, 0xFFFFFFFF)
        Name (H1VI, Zero)
        Name (H1DI, Zero)
        Name (ELC2, Zero)
        Name (ECP2, 0xFFFFFFFF)
        Name (H2VI, Zero)
        Name (H2DI, Zero)
        Name (TIDX, Zero)
        Name (OTSD, Zero)
        Name (MXPG, 0x03)
        Name (FBDL, Zero)
        Name (CBDL, Zero)
        Name (MBDL, Zero)
        Name (HSTR, Zero)
        Name (LREV, Zero)
        Name (TCNT, Zero)
        Name (LDLY, 0x012C)
        OperationRegion (OPG0, SystemMemory, Add (XBAS, 0x8000), 0x1000)
        Field (OPG0, AnyAcc, NoLock, Preserve)
        {
            P0VI,   16, 
            P0DI,   16, 
            Offset (0x06), 
            DSO0,   16, 
            Offset (0x34), 
            CPO0,   8, 
            Offset (0xB0), 
                ,   4, 
            P0LD,   1, 
            Offset (0xC8), 
                ,   10, 
            LTRE,   1, 
            Offset (0x11A), 
                ,   1, 
            P0VC,   1, 
            Offset (0x214), 
            Offset (0x216), 
            P0LS,   4, 
            Offset (0x248), 
                ,   7, 
            Q0L2,   1, 
            Q0L0,   1, 
            Offset (0x504), 
            HST0,   32, 
            P0TR,   1, 
            Offset (0x91C), 
                ,   31, 
            BSP1,   1, 
            Offset (0x93C), 
                ,   31, 
            BSP2,   1, 
            Offset (0x95C), 
                ,   31, 
            BSP3,   1, 
            Offset (0x97C), 
                ,   31, 
            BSP4,   1, 
            Offset (0x99C), 
                ,   31, 
            BSP5,   1, 
            Offset (0x9BC), 
                ,   31, 
            BSP6,   1, 
            Offset (0x9DC), 
                ,   31, 
            BSP7,   1, 
            Offset (0x9FC), 
                ,   31, 
            BSP8,   1, 
            Offset (0xC20), 
                ,   4, 
            P0AP,   2, 
            Offset (0xC38), 
                ,   3, 
            P0RM,   1, 
            Offset (0xC74), 
            P0LT,   4, 
            Offset (0xD0C), 
            LRV0,   32
        }

        OperationRegion (PCS0, SystemMemory, Add (XBAS, ShiftLeft (SBN0, 0x14)), 0xF0)
        Field (PCS0, DWordAcc, Lock, Preserve)
        {
            D0VI,   16, 
            Offset (0x2C), 
            S0VI,   32, 
            Offset (0x4C), 
            W0VI,   32
        }

        OperationRegion (CAP0, SystemMemory, Add (Add (XBAS, ShiftLeft (SBN0, 0x14)), EECP), 0x14)
        Field (CAP0, DWordAcc, NoLock, Preserve)
        {
            Offset (0x0C), 
            LCP0,   32, 
            LCT0,   16
        }

        OperationRegion (OPG1, SystemMemory, Add (XBAS, 0x9000), 0x1000)
        Field (OPG1, AnyAcc, NoLock, Preserve)
        {
            P1VI,   16, 
            P1DI,   16, 
            Offset (0x06), 
            DSO1,   16, 
            Offset (0x34), 
            CPO1,   8, 
            Offset (0xB0), 
                ,   4, 
            P1LD,   1, 
            Offset (0x11A), 
                ,   1, 
            P1VC,   1, 
            Offset (0x214), 
            Offset (0x216), 
            P1LS,   4, 
            Offset (0x248), 
                ,   7, 
            Q1L2,   1, 
            Q1L0,   1, 
            Offset (0x504), 
            HST1,   32, 
            P1TR,   1, 
            Offset (0xC20), 
                ,   4, 
            P1AP,   2, 
            Offset (0xC38), 
                ,   3, 
            P1RM,   1, 
            Offset (0xC74), 
            P1LT,   4, 
            Offset (0xD0C), 
            LRV1,   32
        }

        OperationRegion (PCS1, SystemMemory, Add (XBAS, ShiftLeft (SBN1, 0x14)), 0xF0)
        Field (PCS1, DWordAcc, Lock, Preserve)
        {
            D1VI,   16, 
            Offset (0x2C), 
            S1VI,   32, 
            Offset (0x4C), 
            W1VI,   32
        }

        OperationRegion (CAP1, SystemMemory, Add (Add (XBAS, ShiftLeft (SBN1, 0x14)), EEC1), 0x14)
        Field (CAP1, DWordAcc, NoLock, Preserve)
        {
            Offset (0x0C), 
            LCP1,   32, 
            LCT1,   16
        }

        OperationRegion (OPG2, SystemMemory, Add (XBAS, 0xA000), 0x1000)
        Field (OPG2, AnyAcc, NoLock, Preserve)
        {
            P2VI,   16, 
            P2DI,   16, 
            Offset (0x06), 
            DSO2,   16, 
            Offset (0x34), 
            CPO2,   8, 
            Offset (0xB0), 
                ,   4, 
            P2LD,   1, 
            Offset (0x11A), 
                ,   1, 
            P2VC,   1, 
            Offset (0x214), 
            Offset (0x216), 
            P2LS,   4, 
            Offset (0x248), 
                ,   7, 
            Q2L2,   1, 
            Q2L0,   1, 
            Offset (0x504), 
            HST2,   32, 
            P2TR,   1, 
            Offset (0xC20), 
                ,   4, 
            P2AP,   2, 
            Offset (0xC38), 
                ,   3, 
            P2RM,   1, 
            Offset (0xC74), 
            P2LT,   4, 
            Offset (0xD0C), 
            LRV2,   32
        }

        OperationRegion (PCS2, SystemMemory, Add (XBAS, ShiftLeft (SBN2, 0x14)), 0xF0)
        Field (PCS2, DWordAcc, Lock, Preserve)
        {
            D2VI,   16, 
            Offset (0x2C), 
            S2VI,   32, 
            Offset (0x4C), 
            W2VI,   32
        }

        OperationRegion (CAP2, SystemMemory, Add (Add (XBAS, ShiftLeft (SBN2, 0x14)), EEC2), 0x14)
        Field (CAP2, DWordAcc, NoLock, Preserve)
        {
            Offset (0x0C), 
            LCP2,   32, 
            LCT2,   16
        }

        Method (PGON, 1, Serialized)
        {
            P8XH (Zero, 0x0F)
            Store (Arg0, PION) /* \_SB_.PCI0.PION */
            If (LEqual (PION, Zero))
            {
                If (LEqual (SGGP, Zero))
                {
                    Return (Zero)
                }
            }
            ElseIf (LEqual (PION, One))
            {
                If (LEqual (P1GP, Zero))
                {
                    Return (Zero)
                }
            }
            ElseIf (LEqual (PION, 0x02))
            {
                If (LEqual (P2GP, Zero))
                {
                    Return (Zero)
                }
            }

            Store (\XBAS, PEBA) /* \_SB_.PCI0.PEBA */
            Store (GDEV (PION), PDEV) /* \_SB_.PCI0.PDEV */
            Store (GFUN (PION), PFUN) /* \_SB_.PCI0.PFUN */
            If (LEqual (CCHK (PION, One), Zero))
            {
                Return (Zero)
            }

            GPPR (PION, One)
            If (LEqual (\_SB.PCI0.PEG0.PEGP.OTMS, Zero))
            {
                RTEN (PION)
            }
            ElseIf (LEqual (\_SB.PCI0.PEG0.PEGP.OTMS, One))
            {
                Store (One, P0TR) /* \_SB_.PCI0.P0TR */
                Store (Zero, \_SB.PCI0.PEG0.LNKD) /* External reference */
                While (LLess (\_SB.PCI0.PEG0.LNKS, 0x07))
                {
                    Store (0x20, Local0)
                    While (Local0)
                    {
                        If (LLess (\_SB.PCI0.PEG0.LNKS, 0x07))
                        {
                            Stall (0x64)
                            Decrement (Local0)
                        }
                        Else
                        {
                            Break
                        }
                    }
                }
            }

            If (LNotEqual (PBGE, Zero))
            {
                If (SBDL (PION))
                {
                    PUAB (PION)
                    Store (GUBC (PION), CBDL) /* \_SB_.PCI0.CBDL */
                    Store (GMXB (PION), MBDL) /* \_SB_.PCI0.MBDL */
                    If (LGreater (CBDL, MBDL))
                    {
                        Store (MBDL, CBDL) /* \_SB_.PCI0.CBDL */
                    }

                    PDUB (PION, CBDL)
                }
            }

            Store (\_SB.PCI0.PEG0.PEGP.LTRE, \_SB.PCI0.PEG0.LREN) /* External reference */
            Store (One, \_SB.PCI0.PEG0.CEDR) /* External reference */
            If (LEqual (PION, Zero))
            {
                Store (H0VI, W0VI) /* \_SB_.PCI0.W0VI */
                Or (And (ELC0, 0x43), And (LCT0, 0xFFBC), LCT0) /* \_SB_.PCI0.LCT0 */
            }
            ElseIf (LEqual (PION, One))
            {
                Store (H1VI, W1VI) /* \_SB_.PCI0.W1VI */
                Or (And (ELC1, 0x43), And (LCT1, 0xFFBC), LCT1) /* \_SB_.PCI0.LCT1 */
            }
            ElseIf (LEqual (PION, 0x02))
            {
                Store (H2VI, W2VI) /* \_SB_.PCI0.W2VI */
                Or (And (ELC2, 0x43), And (LCT2, 0xFFBC), LCT2) /* \_SB_.PCI0.LCT2 */
            }

            Return (Zero)
        }

        Method (PGOF, 1, Serialized)
        {
            P8XH (Zero, 0x11)
            Store (Arg0, PIOF) /* \_SB_.PCI0.PIOF */
            If (LEqual (PIOF, Zero))
            {
                If (LEqual (SGGP, Zero))
                {
                    Return (Zero)
                }
            }
            ElseIf (LEqual (PIOF, One))
            {
                If (LEqual (P1GP, Zero))
                {
                    Return (Zero)
                }
            }
            ElseIf (LEqual (PIOF, 0x02))
            {
                If (LEqual (P2GP, Zero))
                {
                    Return (Zero)
                }
            }

            Store (\XBAS, PEBA) /* \_SB_.PCI0.PEBA */
            Store (GDEV (PIOF), PDEV) /* \_SB_.PCI0.PDEV */
            Store (GFUN (PIOF), PFUN) /* \_SB_.PCI0.PFUN */
            If (LEqual (CCHK (PIOF, Zero), Zero))
            {
                Return (Zero)
            }

            Store (\_SB.PCI0.PEG0.LREN, \_SB.PCI0.PEG0.PEGP.LTRE)
            If (LEqual (Arg0, Zero))
            {
                Store (LCT0, ELC0) /* \_SB_.PCI0.ELC0 */
                Store (S0VI, H0VI) /* \_SB_.PCI0.H0VI */
                Store (LCP0, ECP0) /* \_SB_.PCI0.ECP0 */
            }
            ElseIf (LEqual (Arg0, One))
            {
                Store (LCT1, ELC1) /* \_SB_.PCI0.ELC1 */
                Store (S1VI, H1VI) /* \_SB_.PCI0.H1VI */
                Store (LCP1, ECP1) /* \_SB_.PCI0.ECP1 */
            }
            ElseIf (LEqual (Arg0, 0x02))
            {
                Store (LCT2, ELC2) /* \_SB_.PCI0.ELC2 */
                Store (S2VI, H2VI) /* \_SB_.PCI0.H2VI */
                Store (LCP2, ECP2) /* \_SB_.PCI0.ECP2 */
            }

            If (LEqual (\_SB.PCI0.PEG0.PEGP.OTMS, Zero))
            {
                RTDS (PIOF)
            }
            ElseIf (LEqual (\_SB.PCI0.PEG0.PEGP.OTMS, One))
            {
                Store (One, \_SB.PCI0.PEG0.LNKD) /* External reference */
                Store (Zero, TCNT) /* \_SB_.PCI0.TCNT */
                While (LLess (TCNT, LDLY))
                {
                    If (LEqual (\_SB.PCI0.PEG0.LNKS, Zero))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Add (TCNT, 0x10, TCNT) /* \_SB_.PCI0.TCNT */
                }
            }

            If (LNotEqual (PBGE, Zero))
            {
                If (SBDL (PIOF))
                {
                    Store (GMXB (PIOF), MBDL) /* \_SB_.PCI0.MBDL */
                    PDUB (PIOF, MBDL)
                }
            }

            If (LEqual (Arg0, Zero))
            {
                Divide (\_SB.PCI0.PEG0.LNRD, 0x03E8, Local0, Local1)
                Sleep (Local1)
            }
            ElseIf (LEqual (Arg0, One))
            {
                Divide (\_SB.PCI0.PEG1.LNRD, 0x03E8, Local0, Local1)
                Sleep (Local1)
            }
            ElseIf (LEqual (Arg0, 0x02))
            {
                Divide (\_SB.PCI0.PEG2.LNRD, 0x03E8, Local0, Local1)
                Sleep (Local1)
            }

            GPPR (PIOF, Zero)
            DIWK (PIOF)
            Return (Zero)
        }

        Method (MMRD, 5, Serialized)
        {
            Store (Arg0, Local7)
            Or (Local7, ShiftLeft (Arg1, 0x14), Local7)
            Or (Local7, ShiftLeft (Arg2, 0x0F), Local7)
            Or (Local7, ShiftLeft (Arg3, 0x0C), Local7)
            Or (Local7, Arg4, Local7)
            OperationRegion (PCI0, SystemMemory, Local7, 0x04)
            Field (PCI0, ByteAcc, NoLock, Preserve)
            {
                TEMP,   32
            }

            Return (TEMP) /* \_SB_.PCI0.MMRD.TEMP */
        }

        Method (GULC, 1, NotSerialized)
        {
            Store (MMRD (PEBA, PBUS, PDEV, PFUN, 0xAC), Local7)
            ShiftRight (Local7, 0x04, Local7)
            And (Local7, 0x3F, Local7)
            Store (Arg0, Local6)
            ShiftRight (Local6, 0x04, Local6)
            And (Local6, 0x3F, Local6)
            If (LGreater (Local7, Local6))
            {
                Subtract (Local7, Local6, Local0)
            }
            Else
            {
                Store (Zero, Local0)
            }

            Return (Local0)
        }

        Method (GMXB, 1, NotSerialized)
        {
            If (LEqual (Arg0, Zero))
            {
                Store (HST0, HSTR) /* \_SB_.PCI0.HSTR */
            }
            ElseIf (LEqual (Arg0, One))
            {
                Store (HST1, HSTR) /* \_SB_.PCI0.HSTR */
            }
            ElseIf (LEqual (Arg0, 0x02))
            {
                Store (HST2, HSTR) /* \_SB_.PCI0.HSTR */
            }

            ShiftRight (HSTR, 0x10, HSTR) /* \_SB_.PCI0.HSTR */
            And (HSTR, 0x03, HSTR) /* \_SB_.PCI0.HSTR */
            If (LEqual (Arg0, Zero))
            {
                If (LEqual (HSTR, 0x03))
                {
                    Store (0x08, Local0)
                }
                Else
                {
                    Store (0x04, Local0)
                }
            }
            ElseIf (LEqual (Arg0, One))
            {
                If (LEqual (HSTR, 0x02))
                {
                    Store (0x04, Local0)
                }
                ElseIf (LEqual (HSTR, Zero))
                {
                    Store (0x02, Local0)
                }
            }
            ElseIf (LEqual (Arg0, 0x02))
            {
                If (LEqual (HSTR, Zero))
                {
                    Store (0x02, Local0)
                }
                ElseIf (LEqual (HSTR, One))
                {
                    Store (0x02, Local0)
                }
            }

            Return (Local0)
        }

        Method (PUAB, 1, NotSerialized)
        {
            Store (Zero, FBDL) /* \_SB_.PCI0.FBDL */
            Store (Zero, CBDL) /* \_SB_.PCI0.CBDL */
            If (LEqual (Arg0, Zero))
            {
                Store (HST0, HSTR) /* \_SB_.PCI0.HSTR */
                Store (LRV0, LREV) /* \_SB_.PCI0.LREV */
            }
            ElseIf (LEqual (Arg0, One))
            {
                Store (HST1, HSTR) /* \_SB_.PCI0.HSTR */
                Store (LRV1, LREV) /* \_SB_.PCI0.LREV */
            }
            ElseIf (LEqual (Arg0, 0x02))
            {
                Store (HST2, HSTR) /* \_SB_.PCI0.HSTR */
                Store (LRV2, LREV) /* \_SB_.PCI0.LREV */
            }

            ShiftRight (HSTR, 0x10, HSTR) /* \_SB_.PCI0.HSTR */
            And (HSTR, 0x03, HSTR) /* \_SB_.PCI0.HSTR */
            ShiftRight (LREV, 0x14, LREV) /* \_SB_.PCI0.LREV */
            And (LREV, One, LREV) /* \_SB_.PCI0.LREV */
            If (LEqual (Arg0, Zero))
            {
                If (LEqual (HSTR, 0x03))
                {
                    Store (Zero, FBDL) /* \_SB_.PCI0.FBDL */
                    Store (0x08, CBDL) /* \_SB_.PCI0.CBDL */
                }
                ElseIf (LEqual (LREV, Zero))
                {
                    Store (Zero, FBDL) /* \_SB_.PCI0.FBDL */
                    Store (0x04, CBDL) /* \_SB_.PCI0.CBDL */
                }
                Else
                {
                    Store (0x04, FBDL) /* \_SB_.PCI0.FBDL */
                    Store (0x04, CBDL) /* \_SB_.PCI0.CBDL */
                }
            }
            ElseIf (LEqual (Arg0, One))
            {
                If (LEqual (HSTR, 0x02))
                {
                    If (LEqual (LREV, Zero))
                    {
                        Store (0x04, FBDL) /* \_SB_.PCI0.FBDL */
                        Store (0x04, CBDL) /* \_SB_.PCI0.CBDL */
                    }
                    Else
                    {
                        Store (Zero, FBDL) /* \_SB_.PCI0.FBDL */
                        Store (0x04, CBDL) /* \_SB_.PCI0.CBDL */
                    }
                }
                ElseIf (LEqual (HSTR, Zero))
                {
                    If (LEqual (LREV, Zero))
                    {
                        Store (0x04, FBDL) /* \_SB_.PCI0.FBDL */
                        Store (0x02, CBDL) /* \_SB_.PCI0.CBDL */
                    }
                    Else
                    {
                        Store (0x02, FBDL) /* \_SB_.PCI0.FBDL */
                        Store (0x02, CBDL) /* \_SB_.PCI0.CBDL */
                    }
                }
            }
            ElseIf (LEqual (Arg0, 0x02))
            {
                If (LEqual (HSTR, Zero))
                {
                    If (LEqual (LREV, Zero))
                    {
                        Store (0x06, FBDL) /* \_SB_.PCI0.FBDL */
                        Store (0x02, CBDL) /* \_SB_.PCI0.CBDL */
                    }
                    Else
                    {
                        Store (Zero, FBDL) /* \_SB_.PCI0.FBDL */
                        Store (0x02, CBDL) /* \_SB_.PCI0.CBDL */
                    }
                }
                ElseIf (LEqual (HSTR, One))
                {
                    If (LEqual (LREV, Zero))
                    {
                        Store (0x06, FBDL) /* \_SB_.PCI0.FBDL */
                        Store (0x02, CBDL) /* \_SB_.PCI0.CBDL */
                    }
                    Else
                    {
                        Store (Zero, FBDL) /* \_SB_.PCI0.FBDL */
                        Store (0x02, CBDL) /* \_SB_.PCI0.CBDL */
                    }
                }
            }

            Store (One, INDX) /* \_SB_.PCI0.INDX */
            If (LNotEqual (CBDL, Zero))
            {
                While (LLessEqual (INDX, CBDL))
                {
                    If (LEqual (P0VI, IVID)){}
                    ElseIf (LNotEqual (P0VI, IVID))
                    {
                        If (LEqual (FBDL, Zero))
                        {
                            Store (Zero, BSP1) /* \_SB_.PCI0.BSP1 */
                        }

                        If (LEqual (FBDL, One))
                        {
                            Store (Zero, BSP2) /* \_SB_.PCI0.BSP2 */
                        }

                        If (LEqual (FBDL, 0x02))
                        {
                            Store (Zero, BSP3) /* \_SB_.PCI0.BSP3 */
                        }

                        If (LEqual (FBDL, 0x03))
                        {
                            Store (Zero, BSP4) /* \_SB_.PCI0.BSP4 */
                        }

                        If (LEqual (FBDL, 0x04))
                        {
                            Store (Zero, BSP5) /* \_SB_.PCI0.BSP5 */
                        }

                        If (LEqual (FBDL, 0x05))
                        {
                            Store (Zero, BSP6) /* \_SB_.PCI0.BSP6 */
                        }

                        If (LEqual (FBDL, 0x06))
                        {
                            Store (Zero, BSP7) /* \_SB_.PCI0.BSP7 */
                        }

                        If (LEqual (FBDL, 0x07))
                        {
                            Store (Zero, BSP8) /* \_SB_.PCI0.BSP8 */
                        }
                    }

                    Increment (FBDL)
                    Increment (INDX)
                }
            }
        }

        Method (PDUB, 2, NotSerialized)
        {
            Store (Zero, FBDL) /* \_SB_.PCI0.FBDL */
            Store (Arg1, CBDL) /* \_SB_.PCI0.CBDL */
            If (LEqual (CBDL, Zero))
            {
                Return (Zero)
            }

            If (LEqual (Arg0, Zero))
            {
                Store (HST0, HSTR) /* \_SB_.PCI0.HSTR */
                Store (LRV0, LREV) /* \_SB_.PCI0.LREV */
            }
            ElseIf (LEqual (Arg0, One))
            {
                Store (HST1, HSTR) /* \_SB_.PCI0.HSTR */
                Store (LRV1, LREV) /* \_SB_.PCI0.LREV */
            }
            ElseIf (LEqual (Arg0, 0x02))
            {
                Store (HST2, HSTR) /* \_SB_.PCI0.HSTR */
                Store (LRV2, LREV) /* \_SB_.PCI0.LREV */
            }

            ShiftRight (HSTR, 0x10, HSTR) /* \_SB_.PCI0.HSTR */
            And (HSTR, 0x03, HSTR) /* \_SB_.PCI0.HSTR */
            ShiftRight (LREV, 0x14, LREV) /* \_SB_.PCI0.LREV */
            And (LREV, One, LREV) /* \_SB_.PCI0.LREV */
            If (LEqual (Arg0, Zero))
            {
                If (LEqual (HSTR, 0x03))
                {
                    If (LEqual (LREV, Zero))
                    {
                        Store (Subtract (0x08, CBDL), FBDL) /* \_SB_.PCI0.FBDL */
                    }
                    Else
                    {
                        Store (Zero, FBDL) /* \_SB_.PCI0.FBDL */
                    }
                }
                ElseIf (LEqual (LREV, Zero))
                {
                    Store (Subtract (0x04, CBDL), FBDL) /* \_SB_.PCI0.FBDL */
                }
                Else
                {
                    Store (0x04, FBDL) /* \_SB_.PCI0.FBDL */
                }
            }
            ElseIf (LEqual (Arg0, One))
            {
                If (LEqual (HSTR, 0x02))
                {
                    If (LEqual (LREV, Zero))
                    {
                        Store (Subtract (0x08, CBDL), FBDL) /* \_SB_.PCI0.FBDL */
                    }
                    Else
                    {
                        Store (Zero, FBDL) /* \_SB_.PCI0.FBDL */
                    }
                }
                ElseIf (LEqual (HSTR, Zero))
                {
                    If (LEqual (LREV, Zero))
                    {
                        Store (Subtract (0x06, CBDL), FBDL) /* \_SB_.PCI0.FBDL */
                    }
                    Else
                    {
                        Store (0x02, FBDL) /* \_SB_.PCI0.FBDL */
                    }
                }
            }
            ElseIf (LEqual (Arg0, 0x02))
            {
                If (LEqual (HSTR, Zero))
                {
                    If (LEqual (LREV, Zero))
                    {
                        Store (Subtract (0x08, CBDL), FBDL) /* \_SB_.PCI0.FBDL */
                    }
                    Else
                    {
                        Store (Zero, FBDL) /* \_SB_.PCI0.FBDL */
                    }
                }
                ElseIf (LEqual (HSTR, One))
                {
                    If (LEqual (LREV, Zero))
                    {
                        Store (Subtract (0x08, CBDL), FBDL) /* \_SB_.PCI0.FBDL */
                    }
                    Else
                    {
                        Store (Zero, FBDL) /* \_SB_.PCI0.FBDL */
                    }
                }
            }

            Store (One, INDX) /* \_SB_.PCI0.INDX */
            While (LLessEqual (INDX, CBDL))
            {
                If (LEqual (P0VI, IVID)){}
                ElseIf (LNotEqual (P0VI, IVID))
                {
                    If (LEqual (FBDL, Zero))
                    {
                        Store (One, BSP1) /* \_SB_.PCI0.BSP1 */
                    }

                    If (LEqual (FBDL, One))
                    {
                        Store (One, BSP2) /* \_SB_.PCI0.BSP2 */
                    }

                    If (LEqual (FBDL, 0x02))
                    {
                        Store (One, BSP3) /* \_SB_.PCI0.BSP3 */
                    }

                    If (LEqual (FBDL, 0x03))
                    {
                        Store (One, BSP4) /* \_SB_.PCI0.BSP4 */
                    }

                    If (LEqual (FBDL, 0x04))
                    {
                        Store (One, BSP5) /* \_SB_.PCI0.BSP5 */
                    }

                    If (LEqual (FBDL, 0x05))
                    {
                        Store (One, BSP6) /* \_SB_.PCI0.BSP6 */
                    }

                    If (LEqual (FBDL, 0x06))
                    {
                        Store (One, BSP7) /* \_SB_.PCI0.BSP7 */
                    }

                    If (LEqual (FBDL, 0x07))
                    {
                        Store (One, BSP8) /* \_SB_.PCI0.BSP8 */
                    }
                }

                Increment (FBDL)
                Increment (INDX)
            }
        }

        Method (SBDL, 1, NotSerialized)
        {
            If (LEqual (Arg0, Zero))
            {
                If (LEqual (P0UB, Zero))
                {
                    Return (Zero)
                }
            }
            ElseIf (LEqual (Arg0, One))
            {
                If (LEqual (P1UB, Zero))
                {
                    Return (Zero)
                }
            }
            ElseIf (LEqual (Arg0, 0x02))
            {
                If (LEqual (P2UB, Zero))
                {
                    Return (Zero)
                }
            }
            Else
            {
                Return (Zero)
            }

            Return (One)
        }

        Method (GUBC, 1, NotSerialized)
        {
            Store (Zero, Local7)
            If (LEqual (Arg0, Zero))
            {
                Store (LCP0, Local6)
            }
            ElseIf (LEqual (Arg0, One))
            {
                Store (LCP1, Local6)
            }
            ElseIf (LEqual (Arg0, 0x02))
            {
                Store (LCP2, Local6)
            }

            If (LEqual (Arg0, Zero))
            {
                If (LEqual (P0UB, 0xFF))
                {
                    Store (GULC (Local6), Local5)
                    Store (Divide (Local5, 0x02, ), Local7)
                }
                ElseIf (LNotEqual (P0UB, Zero))
                {
                    Store (P0UB, Local7)
                }
            }
            ElseIf (LEqual (Arg0, One))
            {
                If (LEqual (P1UB, 0xFF))
                {
                    Store (GULC (Local6), Local5)
                    Store (Divide (Local5, 0x02, ), Local7)
                }
                ElseIf (LNotEqual (P1UB, Zero))
                {
                    Store (P1UB, Local7)
                }
            }
            ElseIf (LEqual (Arg0, 0x02))
            {
                If (LEqual (P2UB, 0xFF))
                {
                    Store (GULC (Local6), Local5)
                    Store (Divide (Local5, 0x02, ), Local7)
                }
                ElseIf (LNotEqual (P2UB, Zero))
                {
                    Store (P2UB, Local7)
                }
            }

            Return (Local7)
        }

        Method (DIWK, 1, NotSerialized)
        {
            If (LEqual (Arg0, Zero))
            {
                \_SB.PCI0.PEG0.P0EW ()
            }
            ElseIf (LEqual (Arg0, One))
            {
                \_SB.PCI0.PEG1.P1EW ()
            }
            ElseIf (LEqual (Arg0, 0x02))
            {
                \_SB.PCI0.PEG2.P2EW ()
            }
        }

        Method (GDEV, 1, NotSerialized)
        {
            If (LEqual (Arg0, Zero))
            {
                Store (One, Local0)
            }
            ElseIf (LEqual (Arg0, One))
            {
                Store (One, Local0)
            }
            ElseIf (LEqual (Arg0, 0x02))
            {
                Store (One, Local0)
            }

            Return (Local0)
        }

        Method (GFUN, 1, NotSerialized)
        {
            If (LEqual (Arg0, Zero))
            {
                Store (Zero, Local0)
            }
            ElseIf (LEqual (Arg0, One))
            {
                Store (One, Local0)
            }
            ElseIf (LEqual (Arg0, 0x02))
            {
                Store (0x02, Local0)
            }

            Return (Local0)
        }

        Method (CCHK, 2, NotSerialized)
        {
            If (LEqual (Arg0, Zero))
            {
                Store (P0VI, Local7)
            }
            ElseIf (LEqual (Arg0, One))
            {
                Store (P1VI, Local7)
            }
            ElseIf (LEqual (Arg0, 0x02))
            {
                Store (P2VI, Local7)
            }

            If (LEqual (Local7, IVID))
            {
                Return (Zero)
            }

            If (LNotEqual (Arg0, Zero))
            {
                Store (P0VI, Local7)
                If (LEqual (Local7, IVID))
                {
                    Return (Zero)
                }
            }

            If (LEqual (Arg1, Zero))
            {
                If (LEqual (Arg0, Zero))
                {
                    If (LEqual (SGPI (SGGP, PWE0, PWG0, PWA0), Zero))
                    {
                        Return (Zero)
                    }
                }

                If (LEqual (Arg0, One))
                {
                    If (LEqual (SGPI (P1GP, PWE1, PWG1, PWA1), Zero))
                    {
                        Return (Zero)
                    }
                }

                If (LEqual (Arg0, 0x02))
                {
                    If (LEqual (SGPI (P2GP, PWE2, PWG2, PWA2), Zero))
                    {
                        Return (Zero)
                    }
                }
            }
            ElseIf (LEqual (Arg1, One))
            {
                If (LEqual (Arg0, Zero))
                {
                    If (LEqual (SGPI (SGGP, PWE0, PWG0, PWA0), One))
                    {
                        Return (Zero)
                    }
                }

                If (LEqual (Arg0, One))
                {
                    If (LEqual (SGPI (P1GP, PWE1, PWG1, PWA1), One))
                    {
                        Return (Zero)
                    }
                }

                If (LEqual (Arg0, 0x02))
                {
                    If (LEqual (SGPI (P2GP, PWE2, PWG2, PWA2), One))
                    {
                        Return (Zero)
                    }
                }
            }

            Return (One)
        }

        Method (NTFY, 2, NotSerialized)
        {
            If (LEqual (Arg0, Zero))
            {
                Notify (\_SB.PCI0.PEG0, Arg1)
            }
            ElseIf (LEqual (Arg0, One))
            {
                Notify (\_SB.PCI0.PEG1, Arg1)
            }
            ElseIf (LEqual (Arg0, 0x02))
            {
                Notify (\_SB.PCI0.PEG2, Arg1)
            }
        }

        Method (GPPR, 2, NotSerialized)
        {
            If (LEqual (Arg1, Zero))
            {
                If (LEqual (Arg0, Zero))
                {
                    SGPO (SGGP, HRE0, HRG0, HRA0, One)
                    Sleep (0x03)
                    SGPO (SGGP, PWE0, PWG0, PWA0, Zero)
                    Sleep (0x05)
                }

                If (LEqual (Arg0, One))
                {
                    SGPO (P1GP, HRE1, HRG1, HRA1, One)
                    Sleep (DLHR)
                    SGPO (P1GP, PWE1, PWG1, PWA1, Zero)
                }

                If (LEqual (Arg0, 0x02))
                {
                    SGPO (P2GP, HRE2, HRG2, HRA2, One)
                    Sleep (DLHR)
                    SGPO (P2GP, PWE2, PWG2, PWA2, Zero)
                }
            }
            ElseIf (LEqual (Arg1, One))
            {
                If (LEqual (Arg0, Zero))
                {
                    SGPO (SGGP, PWE0, PWG0, PWA0, One)
                    While (LNotEqual (\_SB.PCI0.GGPI (SGGP, Zero, 0x0303000A, One), One))
                    {
                        Sleep (One)
                    }

                    SGPO (SGGP, HRE0, HRG0, HRA0, Zero)
                    Sleep (0x05)
                }

                If (LEqual (Arg0, One))
                {
                    SGPO (P1GP, PWE1, PWG1, PWA1, One)
                    Sleep (DLPW)
                    SGPO (P1GP, HRE1, HRG1, HRA1, Zero)
                    Sleep (DLHR)
                }

                If (LEqual (Arg0, 0x02))
                {
                    SGPO (P2GP, PWE2, PWG2, PWA2, One)
                    Sleep (DLPW)
                    SGPO (P2GP, HRE2, HRG2, HRA2, Zero)
                    Sleep (DLHR)
                }
            }
        }

        Method (SGPO, 5, Serialized)
        {
            If (LEqual (Arg3, Zero))
            {
                Not (Arg4, Arg4)
                And (Arg4, One, Arg4)
            }

            If (LEqual (Arg0, One))
            {
                If (CondRefOf (\_SB.SGOV))
                {
                    \_SB.SGOV (Arg2, Arg4)
                }
            }
        }

        Method (SGPI, 4, Serialized)
        {
            If (LEqual (Arg0, One))
            {
                If (CondRefOf (\_SB.GGOV))
                {
                    Store (\_SB.GGOV (Arg2), Local0)
                }
            }

            If (LEqual (Arg3, Zero))
            {
                Not (Local0, Local0)
                And (Local0, One, Local0)
            }

            Return (Local0)
        }

        Method (GGPI, 4, Serialized)
        {
            If (LEqual (Arg0, One))
            {
                If (CondRefOf (\_SB.GGIV))
                {
                    Store (\_SB.GGIV (Arg2), Local0)
                }
            }

            If (LEqual (Arg3, Zero))
            {
                And (Not (Local0), One, Local0)
            }

            Return (Local0)
        }
    }

    Scope (\_SB.PCI0)
    {
        Method (RTEN, 1, NotSerialized)
        {
            If (LEqual (Arg0, Zero))
            {
                Store (One, Q0L0) /* \_SB_.PCI0.Q0L0 */
                Sleep (0x10)
                Store (Zero, Local0)
                While (Q0L0)
                {
                    If (LGreater (Local0, 0x04))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Increment (Local0)
                }

                Store (Zero, P0RM) /* \_SB_.PCI0.P0RM */
                Store (Zero, P0AP) /* \_SB_.PCI0.P0AP */
            }
            ElseIf (LEqual (Arg0, One))
            {
                Store (One, Q1L0) /* \_SB_.PCI0.Q1L0 */
                Sleep (0x10)
                Store (Zero, Local0)
                While (Q1L0)
                {
                    If (LGreater (Local0, 0x04))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Increment (Local0)
                }

                Store (Zero, P1RM) /* \_SB_.PCI0.P1RM */
                Store (Zero, P1AP) /* \_SB_.PCI0.P1AP */
            }
            ElseIf (LEqual (Arg0, 0x02))
            {
                Store (One, Q2L0) /* \_SB_.PCI0.Q2L0 */
                Sleep (0x10)
                Store (Zero, Local0)
                While (Q2L0)
                {
                    If (LGreater (Local0, 0x04))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Increment (Local0)
                }

                Store (Zero, P2RM) /* \_SB_.PCI0.P2RM */
                Store (Zero, P2AP) /* \_SB_.PCI0.P2AP */
            }
        }

        Method (RTDS, 1, NotSerialized)
        {
            If (LEqual (Arg0, Zero))
            {
                Store (One, Q0L2) /* \_SB_.PCI0.Q0L2 */
                Sleep (0x10)
                Store (Zero, Local0)
                While (Q0L2)
                {
                    If (LGreater (Local0, 0x04))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Increment (Local0)
                }

                Store (One, P0RM) /* \_SB_.PCI0.P0RM */
                Store (0x03, P0AP) /* \_SB_.PCI0.P0AP */
            }
            ElseIf (LEqual (Arg0, One))
            {
                Store (One, Q1L2) /* \_SB_.PCI0.Q1L2 */
                Sleep (0x10)
                Store (Zero, Local0)
                While (Q1L2)
                {
                    If (LGreater (Local0, 0x04))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Increment (Local0)
                }

                Store (One, P1RM) /* \_SB_.PCI0.P1RM */
                Store (0x03, P1AP) /* \_SB_.PCI0.P1AP */
            }
            ElseIf (LEqual (Arg0, 0x02))
            {
                Store (One, Q2L2) /* \_SB_.PCI0.Q2L2 */
                Sleep (0x10)
                Store (Zero, Local0)
                While (Q2L2)
                {
                    If (LGreater (Local0, 0x04))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Increment (Local0)
                }

                Store (One, P2RM) /* \_SB_.PCI0.P2RM */
                Store (0x03, P2AP) /* \_SB_.PCI0.P2AP */
            }
        }
    }
}

