/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190405 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of /Volumes/SYSTEM/EFI/CLOVER/ACPI/origin/SSDT-6-OptTabl.aml, Fri Feb 21 06:22:06 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000020A6 (8358)
 *     Revision         0x01
 *     Checksum         0xE6
 *     OEM ID           "OptRef"
 *     OEM Table ID     "OptTabl"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160527 (538314023)
 */
DefinitionBlock ("", "SSDT", 1, "OptRef", "OptTabl", 0x00001000)
{
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.GFX0, DeviceObj)
    External (_SB_.PCI0.GFX0._DSM, MethodObj)    // 4 Arguments
    External (_SB_.PCI0.GGPI, MethodObj)    // 4 Arguments
    External (_SB_.PCI0.LPCB.EC__.BE06, UnknownObj)
    External (_SB_.PCI0.LPCB.EC__.EC6I, UnknownObj)
    External (_SB_.PCI0.LPCB.EC__.EC6O, UnknownObj)
    External (_SB_.PCI0.LPCB.EC__.GPST, UnknownObj)
    External (_SB_.PCI0.LPCB.EC__.PSNM, UnknownObj)
    External (_SB_.PCI0.LPCB.EC__.QDXF, UnknownObj)
    External (_SB_.PCI0.LTRE, UnknownObj)
    External (_SB_.PCI0.P0LS, UnknownObj)
    External (_SB_.PCI0.PEG0, DeviceObj)
    External (_SB_.PCI0.PEG0.CEDR, UnknownObj)
    External (_SB_.PCI0.PEG0.DGCX, IntObj)
    External (_SB_.PCI0.PEG0.LREN, UnknownObj)
    External (_SB_.PCI0.PEG0.PEGP, DeviceObj)
    External (_SB_.PCI0.PEG0.PEGP._ADR, DeviceObj)
    External (_SB_.PCI0.PEG0.PEGP.LTRE, UnknownObj)
    External (_SB_.PCI0.PEG0.PEGP.PVID, UnknownObj)
    External (_SB_.PCI0.PEG0.TDGC, IntObj)
    External (_SB_.PCI0.PEG0.TGPC, IntObj)
    External (_SB_.PCI0.PGOF, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.PGON, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.RTDS, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.RTEN, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.SGPO, MethodObj)    // 5 Arguments
    External (DID1, UnknownObj)
    External (DID2, UnknownObj)
    External (DID3, UnknownObj)
    External (DID4, UnknownObj)
    External (DID5, UnknownObj)
    External (DID6, UnknownObj)
    External (DID7, UnknownObj)
    External (DID8, UnknownObj)
    External (EBAS, UnknownObj)
    External (HRA0, UnknownObj)
    External (HRE0, UnknownObj)
    External (HRG0, UnknownObj)
    External (HYSS, UnknownObj)
    External (NVAF, UnknownObj)
    External (NVGA, UnknownObj)
    External (NVHA, UnknownObj)
    External (NXD1, UnknownObj)
    External (NXD2, UnknownObj)
    External (NXD3, UnknownObj)
    External (NXD4, UnknownObj)
    External (NXD5, UnknownObj)
    External (NXD6, UnknownObj)
    External (NXD7, UnknownObj)
    External (NXD8, UnknownObj)
    External (OSYS, UnknownObj)
    External (P8XH, MethodObj)    // 2 Arguments
    External (PWA0, UnknownObj)
    External (PWE0, UnknownObj)
    External (PWG0, UnknownObj)
    External (RPA5, UnknownObj)
    External (SGFL, UnknownObj)
    External (SGGP, UnknownObj)
    External (SGMD, UnknownObj)
    External (SSMP, UnknownObj)
    External (XBAS, UnknownObj)

    Scope (\_SB.PCI0.PEG0)
    {
        OperationRegion (MSID, SystemMemory, EBAS, 0x0500)
        Field (MSID, DWordAcc, Lock, Preserve)
        {
            VEID,   16, 
            Offset (0x40), 
            NVID,   32, 
            Offset (0x4C), 
            ATID,   32, 
            Offset (0x48B), 
                ,   1, 
            NHDA,   1
        }

        OperationRegion (RPCX, SystemMemory, Add (Add (\XBAS, 0x8000), Zero), 0x1000)
        Field (RPCX, ByteAcc, NoLock, Preserve)
        {
            Offset (0x04), 
            CMDR,   8, 
            Offset (0x19), 
            PRBN,   8, 
            Offset (0x84), 
            D0ST,   2, 
            Offset (0xAA), 
            CEDR,   1, 
            Offset (0xB0), 
            ASPM,   2, 
                ,   2, 
            LNKD,   1, 
            Offset (0xC9), 
                ,   2, 
            LREN,   1, 
            Offset (0x216), 
            LNKS,   4
        }

        Name (TDGC, Zero)
        Name (DGCX, Zero)
        Name (TGPC, Buffer (0x04)
        {
             0x00                                             // .
        })
        PowerResource (PG00, 0x00, 0x0000)
        {
            Name (_STA, One)  // _STA: Status
            Name (DCNT, Zero)
            Name (OPTD, Zero)
            Method (DCHK, 0, Serialized)
            {
                Store (Zero, DCNT) /* \_SB_.PCI0.PEG0.PG00.DCNT */
                While (LLess (DCNT, 0x05))
                {
                    If (LEqual (VEID, 0xFFFF))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Add (DCNT, One, DCNT) /* \_SB_.PCI0.PEG0.PG00.DCNT */
                        P8XH (Zero, DCNT)
                    }
                }

                Return (Zero)
            }

            Method (_ON, 0, Serialized)  // _ON_: Power On
            {
                If (LEqual (\_SB.PCI0.PEG0.TDGC, One))
                {
                    If (LEqual (\_SB.PCI0.PEG0.DGCX, 0x03))
                    {
                        \_SB.PCI0.PEG0.PEGP.GC6O ()
                    }
                    ElseIf (LEqual (\_SB.PCI0.PEG0.DGCX, 0x04))
                    {
                        \_SB.PCI0.PEG0.PEGP.GC6O ()
                    }

                    Store (Zero, \_SB.PCI0.PEG0.TDGC)
                    Store (Zero, \_SB.PCI0.PEG0.DGCX)
                    Store (One, _STA) /* \_SB_.PCI0.PEG0.PG00._STA */
                }
                ElseIf (LGreater (OSYS, 0x07D9))
                {
                    PGON (Zero)
                    Or (CMDR, 0x07, CMDR) /* \_SB_.PCI0.PEG0.CMDR */
                    Store (Zero, D0ST) /* \_SB_.PCI0.PEG0.D0ST */
                    Store (Zero, OPTD) /* \_SB_.PCI0.PEG0.PG00.OPTD */
                    While (LAnd (DCHK (), LLess (OPTD, 0x0A)))
                    {
                        P8XH (Zero, 0x1F)
                        Sleep (0x0A)
                        Add (OPTD, One, OPTD) /* \_SB_.PCI0.PEG0.PG00.OPTD */
                    }

                    If (LEqual (VEID, 0x10DE))
                    {
                        Store (HYSS, NVID) /* \_SB_.PCI0.PEG0.NVID */
                    }

                    If (LEqual (VEID, 0x1002))
                    {
                        Store (HYSS, ATID) /* \_SB_.PCI0.PEG0.ATID */
                    }

                    Store (One, _STA) /* \_SB_.PCI0.PEG0.PG00._STA */
                }
            }

            Method (_OFF, 0, Serialized)  // _OFF: Power Off
            {
                If (LEqual (\_SB.PCI0.PEG0.TDGC, One))
                {
                    CreateField (\_SB.PCI0.PEG0.TGPC, Zero, 0x03, GUPC)
                    If (LEqual (ToInteger (GUPC), One))
                    {
                        \_SB.PCI0.PEG0.PEGP.GC6I ()
                    }
                    ElseIf (LEqual (ToInteger (GUPC), 0x02))
                    {
                        \_SB.PCI0.PEG0.PEGP.GC6I ()
                    }
                }
                ElseIf (LGreater (OSYS, 0x07D9))
                {
                    PGOF (Zero)
                    Store (Zero, _STA) /* \_SB_.PCI0.PEG0.PG00._STA */
                }
            }
        }

        Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
        {
            PG00
        })
        Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
        {
            PG00
        })
        Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
        {
            PG00
        })
    }

    Scope (\_SB.PCI0)
    {
        Name (OTM, "OTMACPI 2010-Mar-09 12:08:26")
    }

    Scope (\_SB.PCI0.PEG0.PEGP)
    {
        OperationRegion (PCI2, SystemMemory, EBAS, 0x0500)
        Field (PCI2, DWordAcc, Lock, Preserve)
        {
            Offset (0x04), 
            CMDR,   8, 
            VGAR,   2000, 
            Offset (0x48B), 
                ,   1, 
            NHDA,   1
        }

        Name (VGAB, Buffer (0xFA)
        {
             0x00                                             // .
        })
        Name (GPRF, Zero)
        OperationRegion (NVHM, SystemMemory, NVHA, 0x00030400)
        Field (NVHM, DWordAcc, NoLock, Preserve)
        {
            NVSG,   128, 
            NVSZ,   32, 
            NVVR,   32, 
            NVHO,   32, 
            RVBS,   32, 
            RBF1,   262144, 
            RBF2,   262144, 
            RBF3,   262144, 
            RBF4,   262144, 
            RBF5,   262144, 
            RBF6,   262144, 
            MXML,   32, 
            MXM3,   1600
        }

        Name (OPCE, 0x02)
        Name (DGPS, Zero)
        Method (SGST, 0, Serialized)
        {
            If (And (SGMD, 0x0F))
            {
                If (LNotEqual (SGGP, One))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            If (LNotEqual (PVID, 0xFFFF))
            {
                Return (0x0F)
            }

            Return (Zero)
        }

        Name (_PSC, Zero)  // _PSC: Power State Current
        Name (OTMS, Zero)
        Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
        {
            Store (Zero, _PSC) /* \_SB_.PCI0.PEG0.PEGP._PSC */
            If (LNotEqual (DGPS, Zero))
            {
                _ON ()
                Store (Zero, DGPS) /* \_SB_.PCI0.PEG0.PEGP.DGPS */
                Store (Zero, OTMS) /* \_SB_.PCI0.PEG0.PEGP.OTMS */
            }
        }

        Method (_PS1, 0, NotSerialized)  // _PS1: Power State 1
        {
            Store (One, _PSC) /* \_SB_.PCI0.PEG0.PEGP._PSC */
        }

        Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
        {
            If (LEqual (OPCE, 0x03))
            {
                If (LEqual (DGPS, Zero))
                {
                    Store (One, OTMS) /* \_SB_.PCI0.PEG0.PEGP.OTMS */
                    _OFF ()
                    Store (One, DGPS) /* \_SB_.PCI0.PEG0.PEGP.DGPS */
                }

                Store (0x02, OPCE) /* \_SB_.PCI0.PEG0.PEGP.OPCE */
            }

            Store (0x03, _PSC) /* \_SB_.PCI0.PEG0.PEGP._PSC */
        }

        Method (_ROM, 2, NotSerialized)  // _ROM: Read-Only Memory
        {
            Store (Arg0, Local0)
            Store (Arg1, Local1)
            If (LGreater (Local1, 0x1000))
            {
                Store (0x1000, Local1)
            }

            If (LGreater (Local0, 0x00030000))
            {
                Return (Buffer (Local1)
                {
                     0x00                                             // .
                })
            }

            Multiply (Local1, 0x08, Local3)
            Name (ROM1, Buffer (0x8000)
            {
                 0x00                                             // .
            })
            Name (ROM2, Buffer (Local1)
            {
                 0x00                                             // .
            })
            If (LLess (Local0, 0x8000))
            {
                Store (RBF1, ROM1) /* \_SB_.PCI0.PEG0.PEGP._ROM.ROM1 */
            }
            ElseIf (LLess (Local0, 0x00010000))
            {
                Subtract (Local0, 0x8000, Local0)
                Store (RBF2, ROM1) /* \_SB_.PCI0.PEG0.PEGP._ROM.ROM1 */
            }
            ElseIf (LLess (Local0, 0x00018000))
            {
                Subtract (Local0, 0x00010000, Local0)
                Store (RBF3, ROM1) /* \_SB_.PCI0.PEG0.PEGP._ROM.ROM1 */
            }
            ElseIf (LLess (Local0, 0x00020000))
            {
                Subtract (Local0, 0x00018000, Local0)
                Store (RBF4, ROM1) /* \_SB_.PCI0.PEG0.PEGP._ROM.ROM1 */
            }
            ElseIf (LLess (Local0, 0x00028000))
            {
                Subtract (Local0, 0x00020000, Local0)
                Store (RBF5, ROM1) /* \_SB_.PCI0.PEG0.PEGP._ROM.ROM1 */
            }
            ElseIf (LLess (Local0, 0x00030000))
            {
                Subtract (Local0, 0x00028000, Local0)
                Store (RBF6, ROM1) /* \_SB_.PCI0.PEG0.PEGP._ROM.ROM1 */
            }

            Multiply (Local0, 0x08, Local2)
            CreateField (ROM1, Local2, Local3, TMPB)
            Store (TMPB, ROM2) /* \_SB_.PCI0.PEG0.PEGP._ROM.ROM2 */
            Return (ROM2) /* \_SB_.PCI0.PEG0.PEGP._ROM.ROM2 */
        }

        Method (HDSM, 4, Serialized)
        {
            Return (0x80000001)
        }

        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            CreateByteField (Arg0, 0x03, GUID)
            Return (\_SB.PCI0.GFX0.HDSM (Arg0, Arg1, Arg2, Arg3))
        }

        Name (CTXT, Zero)
        Method (_ON, 0, Serialized)  // _ON_: Power On
        {
            \_SB.PCI0.PGON (Zero)
            If (LNotEqual (GPRF, One))
            {
                Store (CMDR, Local0)
                Store (Zero, CMDR) /* \_SB_.PCI0.PEG0.PEGP.CMDR */
                Store (VGAB, VGAR) /* \_SB_.PCI0.PEG0.PEGP.VGAR */
                Store (0x06, CMDR) /* \_SB_.PCI0.PEG0.PEGP.CMDR */
                Store (Local0, CMDR) /* \_SB_.PCI0.PEG0.PEGP.CMDR */
            }
        }

        Method (_OFF, 0, Serialized)  // _OFF: Power Off
        {
            If (LEqual (CTXT, Zero))
            {
                If (LNotEqual (GPRF, One))
                {
                    Store (VGAR, VGAB) /* \_SB_.PCI0.PEG0.PEGP.VGAB */
                }

                Store (One, CTXT) /* \_SB_.PCI0.PEG0.PEGP.CTXT */
            }

            PGOF (Zero)
        }
    }

    Scope (\_SB.PCI0.GFX0)
    {
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            Store (DID1, Index (TLPK, Zero))
            Store (DID2, Index (TLPK, 0x02))
            Store (DID3, Index (TLPK, 0x04))
            Store (DID4, Index (TLPK, 0x06))
            Store (DID5, Index (TLPK, 0x08))
            Store (DID6, Index (TLPK, 0x0A))
            Store (DID7, Index (TLPK, 0x0C))
            Store (DID2, Index (TLPK, 0x0E))
            Store (DID1, Index (TLPK, 0x0F))
            Store (DID2, Index (TLPK, 0x11))
            Store (DID3, Index (TLPK, 0x12))
            Store (DID2, Index (TLPK, 0x14))
            Store (DID4, Index (TLPK, 0x15))
            Store (DID2, Index (TLPK, 0x17))
            Store (DID5, Index (TLPK, 0x18))
            Store (DID2, Index (TLPK, 0x1A))
            Store (DID6, Index (TLPK, 0x1B))
            Store (DID2, Index (TLPK, 0x1D))
            Store (DID7, Index (TLPK, 0x1E))
        }

        OperationRegion (NVIG, SystemMemory, NVGA, 0x45)
        Field (NVIG, DWordAcc, NoLock, Preserve)
        {
            NISG,   128, 
            NISZ,   32, 
            NIVR,   32, 
            GPSS,   32, 
            GACD,   16, 
            GATD,   16, 
            LDES,   8, 
            DKST,   8, 
            DACE,   8, 
            DHPE,   8, 
            DHPS,   8, 
            SGNC,   8, 
            GPPO,   8, 
            USPM,   8, 
            GPSP,   8, 
            TLSN,   8, 
            DOSF,   8, 
            ELCL,   16
        }

        Name (TLPK, Package (0x20)
        {
            Ones, 
            0x2C, 
            Ones, 
            0x2C, 
            Ones, 
            0x2C, 
            Ones, 
            0x2C, 
            Ones, 
            0x2C, 
            Ones, 
            0x2C, 
            Ones, 
            0x2C, 
            Ones, 
            Ones, 
            0x2C, 
            Ones, 
            Ones, 
            0x2C, 
            Ones, 
            Ones, 
            0x2C, 
            Ones, 
            Ones, 
            0x2C, 
            Ones, 
            Ones, 
            0x2C, 
            Ones, 
            Ones, 
            0x2C
        })
        Method (INDL, 0, Serialized)
        {
            Store (Zero, NXD1) /* External reference */
            Store (Zero, NXD2) /* External reference */
            Store (Zero, NXD3) /* External reference */
            Store (Zero, NXD4) /* External reference */
            Store (Zero, NXD5) /* External reference */
            Store (Zero, NXD6) /* External reference */
            Store (Zero, NXD7) /* External reference */
            Store (Zero, NXD8) /* External reference */
        }

        Method (SND1, 1, Serialized)
        {
            If (LEqual (Arg0, DID1))
            {
                Store (One, NXD1) /* External reference */
            }

            If (LEqual (Arg0, DID2))
            {
                Store (One, NXD2) /* External reference */
            }

            If (LEqual (Arg0, DID3))
            {
                Store (One, NXD3) /* External reference */
            }

            If (LEqual (Arg0, DID4))
            {
                Store (One, NXD4) /* External reference */
            }

            If (LEqual (Arg0, DID5))
            {
                Store (One, NXD5) /* External reference */
            }

            If (LEqual (Arg0, DID6))
            {
                Store (One, NXD6) /* External reference */
            }

            If (LEqual (Arg0, DID7))
            {
                Store (One, NXD7) /* External reference */
            }

            If (LEqual (Arg0, DID8))
            {
                Store (One, NXD8) /* External reference */
            }
        }

        Method (SNXD, 1, Serialized)
        {
            INDL ()
            Store (One, Local0)
            Store (Zero, Local1)
            While (LLess (Local0, Arg0))
            {
                If (LEqual (DerefOf (Index (TLPK, Local1)), 0x2C))
                {
                    Increment (Local0)
                }

                Increment (Local1)
            }

            SND1 (DerefOf (Index (TLPK, Local1)))
            Increment (Local1)
            If (LNotEqual (DerefOf (Index (TLPK, Local1)), 0x2C))
            {
                SND1 (DerefOf (Index (TLPK, Local1)))
            }
        }

        Method (CTOI, 1, Serialized)
        {
            Switch (ToInteger (Arg0))
            {
                Case (One)
                {
                    Return (One)
                }
                Case (0x02)
                {
                    Return (0x02)
                }
                Case (0x04)
                {
                    Return (0x03)
                }
                Case (0x08)
                {
                    Return (0x04)
                }
                Case (0x10)
                {
                    Return (0x05)
                }
                Case (0x20)
                {
                    Return (0x06)
                }
                Case (0x40)
                {
                    Return (0x07)
                }
                Case (0x03)
                {
                    Return (0x08)
                }
                Case (0x06)
                {
                    Return (0x09)
                }
                Case (0x0A)
                {
                    Return (0x0A)
                }
                Case (0x12)
                {
                    Return (0x0B)
                }
                Case (0x22)
                {
                    Return (0x0C)
                }
                Case (0x42)
                {
                    Return (0x0D)
                }
                Default
                {
                    Return (One)
                }

            }
        }

        Method (HDSM, 4, Serialized)
        {
            If (LEqual (Arg0, ToUUID ("a3132d01-8cda-49ba-a52e-bc9d46df6b81")))
            {
                Return (\_SB.PCI0.PEG0.PEGP.GPS (Arg0, Arg1, Arg2, Arg3))
            }

            If (LEqual (Arg0, ToUUID ("cbeca351-067b-4924-9cbd-b46b00b86f34")))
            {
                Return (\_SB.PCI0.PEG0.PEGP.NGC6 (Arg0, Arg1, Arg2, Arg3))
            }

            Name (SGCI, Zero)
            Name (NBCI, Zero)
            Name (OPCI, Zero)
            Name (BUFF, Zero)
            If (LEqual (Arg0, ToUUID ("d4a50b75-65c7-46f7-bfb7-41514cea0244")))
            {
                Store (One, NBCI) /* \_SB_.PCI0.GFX0.HDSM.NBCI */
            }

            If (LEqual (Arg0, ToUUID ("a486d8f8-0bda-471b-a72b-6042a6b5bee0")))
            {
                Store (One, OPCI) /* \_SB_.PCI0.GFX0.HDSM.OPCI */
            }

            If (LOr (OPCI, LOr (SGCI, NBCI)))
            {
                If (OPCI)
                {
                    If (LNotEqual (Arg1, 0x0100))
                    {
                        Return (0x80000002)
                    }
                }
                ElseIf (LNotEqual (Arg1, 0x0102))
                {
                    Return (0x80000002)
                }

                If (LEqual (Arg2, Zero))
                {
                    If (SGCI)
                    {
                        Return (Buffer (0x04)
                        {
                             0x7F, 0x00, 0x04, 0x00                           // ....
                        })
                    }
                    ElseIf (NBCI)
                    {
                        Return (Buffer (0x04)
                        {
                             0x73, 0x00, 0x05, 0x00                           // s...
                        })
                    }
                    ElseIf (OPCI)
                    {
                        Return (Buffer (0x04)
                        {
                             0x61, 0x18, 0x03, 0x0C                           // a...
                        })
                    }
                }

                If (LEqual (Arg2, One))
                {
                    Name (TEMP, Buffer (0x04)
                    {
                         0x00, 0x00, 0x00, 0x00                           // ....
                    })
                    CreateDWordField (TEMP, Zero, STS0)
                    If (SGCI)
                    {
                        Or (STS0, 0x0B0000BF, STS0) /* \_SB_.PCI0.GFX0.HDSM.STS0 */
                        Or (STS0, ShiftLeft (SGNC, 0x08, SGNC) /* \_SB_.PCI0.GFX0.SGNC */, STS0) /* \_SB_.PCI0.GFX0.HDSM.STS0 */
                    }
                    Else
                    {
                        Or (STS0, Zero, STS0) /* \_SB_.PCI0.GFX0.HDSM.STS0 */
                    }

                    Return (TEMP) /* \_SB_.PCI0.GFX0.HDSM.TEMP */
                }

                If (LEqual (Arg2, 0x02))
                {
                    Name (TMP1, Buffer (0x04)
                    {
                         0x00, 0x00, 0x00, 0x00                           // ....
                    })
                    CreateDWordField (TMP1, Zero, STS1)
                    ToInteger (Arg3, Local0)
                    And (Local0, 0x1F, Local0)
                    If (And (Local0, 0x10))
                    {
                        And (Local0, 0x0F, Local0)
                        Store (Local0, GPSS) /* \_SB_.PCI0.GFX0.GPSS */
                        Notify (\_SB.PCI0.GFX0, 0xD9) // Hardware-Specific
                        Notify (\_SB.PCI0.WMI1, 0xD9) // Hardware-Specific
                    }
                    Else
                    {
                        And (Local0, 0x0F, Local0)
                        If (LEqual (GPPO, One))
                        {
                            Store (GPSS, Local0)
                            Or (Local0, 0x10, Local0)
                            Store (Zero, GPPO) /* \_SB_.PCI0.GFX0.GPPO */
                        }
                    }

                    Or (STS1, Local0, STS1) /* \_SB_.PCI0.GFX0.HDSM.STS1 */
                    Return (TMP1) /* \_SB_.PCI0.GFX0.HDSM.TMP1 */
                }

                If (LEqual (Arg2, 0x03))
                {
                    Name (TMP2, Buffer (0x04)
                    {
                         0x00, 0x00, 0x00, 0x00                           // ....
                    })
                    CreateDWordField (TMP2, Zero, STS2)
                    ToInteger (Arg3, Local0)
                    And (Local0, 0x03, Local0)
                    If (LEqual (Local0, Zero))
                    {
                        \_SB.PCI0.PEG0.PEGP.SGST ()
                    }

                    If (LEqual (Local0, One))
                    {
                        \_SB.PCI0.PGON (Zero)
                    }

                    If (LEqual (Local0, 0x02))
                    {
                        \_SB.PCI0.PGOF (Zero)
                    }

                    If (LEqual (\_SB.PCI0.PEG0.PEGP.SGST (), 0x0F))
                    {
                        Or (STS2, One, STS2) /* \_SB_.PCI0.GFX0.HDSM.STS2 */
                    }

                    Return (TMP2) /* \_SB_.PCI0.GFX0.HDSM.TMP2 */
                }

                If (LEqual (Arg2, 0x04))
                {
                    Name (TMP3, Buffer (0x04)
                    {
                         0x00, 0x00, 0x00, 0x00                           // ....
                    })
                    CreateDWordField (TMP3, Zero, STS3)
                    ToInteger (Arg3, Local0)
                    Store (Local0, Local1)
                    ShiftRight (Local0, 0x10, Local0)
                    And (Local0, One, USPM) /* \_SB_.PCI0.GFX0.USPM */
                    ShiftRight (Local1, 0x0D, Local1)
                    And (Local1, 0x03, Local1)
                    If (LNotEqual (Local1, GPSP))
                    {
                        If (LEqual (USPM, One))
                        {
                            Store (Local1, GPSP) /* \_SB_.PCI0.GFX0.GPSP */
                        }
                        Else
                        {
                            Store (GPSP, Local1)
                            Or (STS3, 0x8000, STS3) /* \_SB_.PCI0.GFX0.HDSM.STS3 */
                        }
                    }

                    Or (STS3, ShiftLeft (Local1, 0x0D), STS3) /* \_SB_.PCI0.GFX0.HDSM.STS3 */
                    Return (TMP3) /* \_SB_.PCI0.GFX0.HDSM.TMP3 */
                }

                If (LEqual (Arg2, 0x05))
                {
                    Name (TMP4, Buffer (0x04)
                    {
                         0x00, 0x00, 0x00, 0x00                           // ....
                    })
                    CreateDWordField (TMP4, Zero, STS4)
                    ToInteger (Arg3, Local0)
                    If (And (Local0, 0x80000000))
                    {
                        Store (And (ShiftRight (Local0, 0x19), 0x1F), TLSN) /* \_SB_.PCI0.GFX0.TLSN */
                        If (And (Local0, 0x40000000))
                        {
                            Store (One, DOSF) /* \_SB_.PCI0.GFX0.DOSF */
                        }
                    }

                    If (And (Local0, 0x01000000))
                    {
                        Store (And (ShiftRight (Local0, 0x0C), 0x0FFF), GACD) /* \_SB_.PCI0.GFX0.GACD */
                        Store (And (Local0, 0x0FFF), GATD) /* \_SB_.PCI0.GFX0.GATD */
                        Store (CTOI (GACD), TLSN) /* \_SB_.PCI0.GFX0.TLSN */
                        Increment (TLSN)
                        If (LGreater (TLSN, 0x0D))
                        {
                            Store (One, TLSN) /* \_SB_.PCI0.GFX0.TLSN */
                        }

                        SNXD (TLSN)
                    }

                    Or (STS4, ShiftLeft (DHPE, 0x15), STS4) /* \_SB_.PCI0.GFX0.HDSM.STS4 */
                    Or (STS4, ShiftLeft (DHPS, 0x14), STS4) /* \_SB_.PCI0.GFX0.HDSM.STS4 */
                    Or (STS4, ShiftLeft (TLSN, 0x08), STS4) /* \_SB_.PCI0.GFX0.HDSM.STS4 */
                    Or (STS4, ShiftLeft (DKST, 0x05), STS4) /* \_SB_.PCI0.GFX0.HDSM.STS4 */
                    Or (STS4, ShiftLeft (LDES, 0x04), STS4) /* \_SB_.PCI0.GFX0.HDSM.STS4 */
                    Or (STS4, DACE, STS4) /* \_SB_.PCI0.GFX0.HDSM.STS4 */
                    Store (Zero, LDES) /* \_SB_.PCI0.GFX0.LDES */
                    Store (Zero, DHPS) /* \_SB_.PCI0.GFX0.DHPS */
                    Store (Zero, DHPE) /* \_SB_.PCI0.GFX0.DHPE */
                    Store (Zero, DACE) /* \_SB_.PCI0.GFX0.DACE */
                    Return (TMP4) /* \_SB_.PCI0.GFX0.HDSM.TMP4 */
                }

                If (LEqual (Arg2, 0x06))
                {
                    Return (TLPK) /* \_SB_.PCI0.GFX0.TLPK */
                }

                If (LEqual (Arg2, 0x10))
                {
                    CreateWordField (Arg3, 0x02, USRG)
                    Name (OPVK, Buffer (0x96)
                    {
                        /* 0000 */  0xE4, 0x57, 0x31, 0x0D, 0xD1, 0x7D, 0x49, 0x60,  // .W1..}I`
                        /* 0008 */  0x4B, 0x56, 0x96, 0x00, 0x00, 0x00, 0x01, 0x00,  // KV......
                        /* 0010 */  0x31, 0x35, 0x36, 0x32, 0x37, 0x33, 0x34, 0x36,  // 15627346
                        /* 0018 */  0x38, 0x37, 0x33, 0x39, 0x47, 0x65, 0x6E, 0x75,  // 8739Genu
                        /* 0020 */  0x69, 0x6E, 0x65, 0x20, 0x4E, 0x56, 0x49, 0x44,  // ine NVID
                        /* 0028 */  0x49, 0x41, 0x20, 0x43, 0x65, 0x72, 0x74, 0x69,  // IA Certi
                        /* 0030 */  0x66, 0x69, 0x65, 0x64, 0x20, 0x4F, 0x70, 0x74,  // fied Opt
                        /* 0038 */  0x69, 0x6D, 0x75, 0x73, 0x20, 0x52, 0x65, 0x61,  // imus Rea
                        /* 0040 */  0x64, 0x79, 0x20, 0x4D, 0x6F, 0x74, 0x68, 0x65,  // dy Mothe
                        /* 0048 */  0x72, 0x62, 0x6F, 0x61, 0x72, 0x64, 0x20, 0x2D,  // rboard -
                        /* 0050 */  0x20, 0x43, 0x6F, 0x70, 0x79, 0x72, 0x69, 0x67,  //  Copyrig
                        /* 0058 */  0x68, 0x74, 0x20, 0x32, 0x30, 0x31, 0x31, 0x20,  // ht 2011 
                        /* 0060 */  0x4E, 0x56, 0x49, 0x44, 0x49, 0x41, 0x20, 0x43,  // NVIDIA C
                        /* 0068 */  0x6F, 0x72, 0x70, 0x6F, 0x72, 0x61, 0x74, 0x69,  // orporati
                        /* 0070 */  0x6F, 0x6E, 0x20, 0x41, 0x6C, 0x6C, 0x20, 0x52,  // on All R
                        /* 0078 */  0x69, 0x67, 0x68, 0x74, 0x73, 0x20, 0x52, 0x65,  // ights Re
                        /* 0080 */  0x73, 0x65, 0x72, 0x76, 0x65, 0x64, 0x2D, 0x31,  // served-1
                        /* 0088 */  0x30, 0x33, 0x37, 0x35, 0x36, 0x33, 0x38, 0x35,  // 03756385
                        /* 0090 */  0x36, 0x35, 0x32, 0x28, 0x52, 0x29               // 652(R)
                    })
                    Name (RTDR, Buffer (0xA1)
                    {
                        /* 0000 */  0x57, 0x74, 0xDC, 0x86, 0x75, 0x84, 0xEC, 0xE7,  // Wt..u...
                        /* 0008 */  0x52, 0x44, 0xA1, 0x00, 0x00, 0x00, 0x00, 0x01,  // RD......
                        /* 0010 */  0x00, 0x00, 0x00, 0x00, 0xDE, 0x10, 0x00, 0x00,  // ........
                        /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0020 */  0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x34, 0x00,  // ......4.
                        /* 0028 */  0x00, 0x00, 0x01, 0x00, 0x47, 0x00, 0x00, 0x00,  // ....G...
                        /* 0030 */  0x02, 0x00, 0x45, 0x00, 0x00, 0x00, 0x03, 0x00,  // ..E.....
                        /* 0038 */  0x51, 0x00, 0x00, 0x00, 0x04, 0x00, 0x4F, 0x00,  // Q.....O.
                        /* 0040 */  0x00, 0x00, 0x05, 0x00, 0x4D, 0x00, 0x00, 0x00,  // ....M...
                        /* 0048 */  0x06, 0x00, 0x4B, 0x00, 0x00, 0x00, 0x07, 0x00,  // ..K.....
                        /* 0050 */  0x49, 0x00, 0x00, 0x00, 0x08, 0x00, 0x47, 0x00,  // I.....G.
                        /* 0058 */  0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0xD9, 0x1C,  // ........
                        /* 0060 */  0x04, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00,  // ........
                        /* 0068 */  0x41, 0x5D, 0xC9, 0x00, 0x01, 0x24, 0x2E, 0x00,  // A]...$..
                        /* 0070 */  0x02, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x01,  // ........
                        /* 0078 */  0x00, 0x00, 0x00, 0xD9, 0x1C, 0x04, 0x00, 0x00,  // ........
                        /* 0080 */  0x00, 0x01, 0x00, 0x00, 0x00, 0x60, 0x68, 0x9E,  // .....`h.
                        /* 0088 */  0x35, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // 5.......
                        /* 0090 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0098 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 00A0 */  0x00                                             // .
                    })
                    If (LEqual (USRG, 0x564B))
                    {
                        Return (OPVK) /* \_SB_.PCI0.GFX0.HDSM.OPVK */
                    }

                    If (LEqual (USRG, 0x4452))
                    {
                        Return (RTDR) /* \_SB_.PCI0.GFX0.HDSM.RTDR */
                    }

                    Return (Zero)
                }

                If (LEqual (Arg2, 0x11))
                {
                    Return (Zero)
                }

                If (LEqual (Arg2, 0x12))
                {
                    Return (Package (0x0A)
                    {
                        0xD0, 
                        ToUUID ("921a2f40-0dc4-402d-ac18-b48444ef9ed2"), 
                        0xD9, 
                        ToUUID ("c12ad361-9fa9-4c74-901f-95cb0945cf3e"), 
                        0xDB, 
                        ToUUID ("42848006-8886-490e-8c72-2bdca93a8a09"), 
                        0xEF, 
                        ToUUID ("b3e485d2-3cc1-4b54-8f31-77ba2fdc9ebe"), 
                        0xF0, 
                        ToUUID ("360d6fb6-1d4e-4fa6-b848-1be33dd8ec7b")
                    })
                }

                If (LEqual (Arg2, 0x1A))
                {
                    CreateField (Arg3, 0x18, 0x02, OMPR)
                    CreateField (Arg3, Zero, One, FLCH)
                    CreateField (Arg3, One, One, DVSR)
                    CreateField (Arg3, 0x02, One, DVSC)
                    If (ToInteger (FLCH))
                    {
                        Store (OMPR, \_SB.PCI0.PEG0.PEGP.OPCE)
                    }

                    Store (Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           // ....
                        }, Local0)
                    CreateField (Local0, Zero, One, OPEN)
                    CreateField (Local0, 0x03, 0x02, CGCS)
                    CreateField (Local0, 0x06, One, SHPC)
                    CreateField (Local0, 0x08, One, SNSR)
                    CreateField (Local0, 0x18, 0x03, DGPC)
                    CreateField (Local0, 0x1B, 0x02, OHAC)
                    Store (One, OPEN) /* \_SB_.PCI0.GFX0.HDSM.OPEN */
                    Store (One, SHPC) /* \_SB_.PCI0.GFX0.HDSM.SHPC */
                    Store (One, DGPC) /* \_SB_.PCI0.GFX0.HDSM.DGPC */
                    Store (0x03, OHAC) /* \_SB_.PCI0.GFX0.HDSM.OHAC */
                    If (ToInteger (DVSC))
                    {
                        If (ToInteger (DVSR))
                        {
                            Store (One, \_SB.PCI0.PEG0.PEGP.GPRF)
                        }
                        Else
                        {
                            Store (Zero, \_SB.PCI0.PEG0.PEGP.GPRF)
                        }
                    }

                    Store (\_SB.PCI0.PEG0.PEGP.GPRF, SNSR) /* \_SB_.PCI0.GFX0.HDSM.SNSR */
                    If (LNotEqual (\_SB.PCI0.PEG0.PEGP.SGST (), Zero))
                    {
                        Store (0x03, CGCS) /* \_SB_.PCI0.GFX0.HDSM.CGCS */
                    }

                    Return (Local0)
                }

                If (LEqual (Arg2, 0x1B))
                {
                    CreateField (Arg3, Zero, One, OACC)
                    CreateField (Arg3, One, One, UOAC)
                    CreateField (Arg3, 0x02, 0x08, OPDA)
                    CreateField (Arg3, 0x0A, One, OPDE)
                    Store (Zero, Local1)
                    Store (\_SB.PCI0.PEG0.PEGP.NHDA, Local1)
                    Return (Local1)
                }

                Return (0x80000002)
            }

            Return (0x80000001)
        }
    }

    Scope (\_SB.PCI0.PEG0.PEGP)
    {
        OperationRegion (IO8, SystemIO, 0x80, One)
        Field (IO8, ByteAcc, Lock, Preserve)
        {
            DBG8,   8
        }

        Method (GC6I, 0, Serialized)
        {
            Store ("<<< GC6I >>>", Debug)
            Store (\_SB.PCI0.PEG0.LREN, \_SB.PCI0.PEG0.PEGP.LTRE) /* External reference */
            \_SB.PCI0.RTDS (Zero)
            Sleep (0x0A)
            \_SB.PCI0.SGPO (SGGP, HRE0, HRG0, HRA0, One)
            Store (One, \_SB.PCI0.LPCB.EC.EC6I) /* External reference */
            Store (0xAA, DBG8) /* \_SB_.PCI0.PEG0.PEGP.DBG8 */
        }

        Method (GC6O, 0, Serialized)
        {
            Store ("<<< GC6O >>>", Debug)
            Store (0x99, DBG8) /* \_SB_.PCI0.PEG0.PEGP.DBG8 */
            \_SB.PCI0.SGPO (SGGP, HRE0, HRG0, HRA0, Zero)
            Sleep (0x0A)
            \_SB.PCI0.RTEN (Zero)
            Or (\_SB.PCI0.PEG0.CMDR, 0x04, \_SB.PCI0.PEG0.CMDR)
            Store (\_SB.PCI0.PEG0.PEGP.LTRE, \_SB.PCI0.PEG0.LREN)
            Store (One, \_SB.PCI0.PEG0.CEDR)
            Store (Zero, \_SB.PCI0.LPCB.EC.EC6I) /* External reference */
        }

        Method (GETS, 0, Serialized)
        {
            Store (0x77, DBG8) /* \_SB_.PCI0.PEG0.PEGP.DBG8 */
            If (LEqual (\_SB.PCI0.GGPI (SGGP, Zero, 0x0303000A, One), One))
            {
                Store ("<<< GETS() return 0x1 >>>", Debug)
                Return (One)
            }
            Else
            {
                Store ("<<< GETS() return 0x3 >>>", Debug)
                Return (0x03)
            }
        }

        Method (NGC6, 4, Serialized)
        {
            Store ("------- GC6 DSM --------", Debug)
            If (LLess (Arg1, 0x0100))
            {
                Return (0x80000001)
            }

            Switch (ToInteger (Arg2))
            {
                Case (Zero)
                {
                    Return (Buffer (0x04)
                    {
                         0x1B, 0x00, 0x00, 0x00                           // ....
                    })
                }
                Case (One)
                {
                    Name (JTB1, Buffer (0x04)
                    {
                         0x00                                             // .
                    })
                    CreateField (JTB1, Zero, One, JTEN)
                    CreateField (JTB1, One, 0x02, SREN)
                    CreateField (JTB1, 0x03, 0x03, PLPR)
                    CreateField (JTB1, 0x06, 0x02, FBPR)
                    CreateField (JTB1, 0x08, 0x02, GUPR)
                    CreateField (JTB1, 0x0A, One, GC6R)
                    CreateField (JTB1, 0x0B, One, PTRH)
                    CreateField (JTB1, 0x0D, One, MHYB)
                    CreateField (JTB1, 0x0E, One, RPCL)
                    CreateField (JTB1, 0x0F, 0x02, GC6M)
                    CreateField (JTB1, 0x14, 0x0C, JTRV)
                    Store (One, JTEN) /* \_SB_.PCI0.PEG0.PEGP.NGC6.JTEN */
                    Store (Zero, GC6R) /* \_SB_.PCI0.PEG0.PEGP.NGC6.GC6R */
                    Store (0x02, GC6M) /* \_SB_.PCI0.PEG0.PEGP.NGC6.GC6M */
                    Store (One, PTRH) /* \_SB_.PCI0.PEG0.PEGP.NGC6.PTRH */
                    Store (One, SREN) /* \_SB_.PCI0.PEG0.PEGP.NGC6.SREN */
                    If (\_OSI ("Windows 2013"))
                    {
                        Store (One, MHYB) /* \_SB_.PCI0.PEG0.PEGP.NGC6.MHYB */
                    }

                    Store (0x0200, JTRV) /* \_SB_.PCI0.PEG0.PEGP.NGC6.JTRV */
                    Return (JTB1) /* \_SB_.PCI0.PEG0.PEGP.NGC6.JTB1 */
                }
                Case (0x02)
                {
                    Store ("GPS fun 19", Debug)
                    Return (Arg3)
                }
                Case (0x03)
                {
                    CreateField (Arg3, Zero, 0x03, GUPC)
                    CreateField (Arg3, 0x04, One, PLPC)
                    CreateField (Arg3, 0x0E, 0x02, DFGC)
                    CreateField (Arg3, 0x10, 0x03, GPCX)
                    Store (Arg3, \_SB.PCI0.PEG0.TGPC)
                    If (LOr (LNotEqual (ToInteger (GUPC), Zero), LNotEqual (ToInteger (DFGC
                        ), Zero)))
                    {
                        Store (ToInteger (DFGC), \_SB.PCI0.PEG0.TDGC)
                        Store (ToInteger (GPCX), \_SB.PCI0.PEG0.DGCX)
                    }

                    Name (JTB3, Buffer (0x04)
                    {
                         0x00                                             // .
                    })
                    CreateField (JTB3, Zero, 0x03, GUPS)
                    CreateField (JTB3, 0x03, One, GPGS)
                    CreateField (JTB3, 0x07, One, PLST)
                    If (LNotEqual (ToInteger (DFGC), Zero))
                    {
                        Store (One, GPGS) /* \_SB_.PCI0.PEG0.PEGP.NGC6.GPGS */
                        Store (One, GUPS) /* \_SB_.PCI0.PEG0.PEGP.NGC6.GUPS */
                        Return (JTB3) /* \_SB_.PCI0.PEG0.PEGP.NGC6.JTB3 */
                    }

                    If (LEqual (ToInteger (GUPC), One))
                    {
                        Store (Arg3, \_SB.PCI0.PEG0.TGPC)
                        GC6I ()
                        Store (One, PLST) /* \_SB_.PCI0.PEG0.PEGP.NGC6.PLST */
                    }
                    ElseIf (LEqual (ToInteger (GUPC), 0x02))
                    {
                        Store (Arg3, \_SB.PCI0.PEG0.TGPC)
                        GC6I ()
                        If (LEqual (ToInteger (PLPC), Zero))
                        {
                            Store (Zero, PLST) /* \_SB_.PCI0.PEG0.PEGP.NGC6.PLST */
                        }
                    }
                    ElseIf (LEqual (ToInteger (GUPC), 0x03))
                    {
                        Store (Arg3, \_SB.PCI0.PEG0.TGPC)
                        GC6O ()
                        If (LNotEqual (ToInteger (PLPC), Zero))
                        {
                            Store (Zero, PLST) /* \_SB_.PCI0.PEG0.PEGP.NGC6.PLST */
                        }
                    }
                    ElseIf (LEqual (ToInteger (GUPC), 0x04))
                    {
                        Store (Arg3, \_SB.PCI0.PEG0.TGPC)
                        GC6O ()
                        If (LNotEqual (ToInteger (PLPC), Zero))
                        {
                            Store (Zero, PLST) /* \_SB_.PCI0.PEG0.PEGP.NGC6.PLST */
                        }
                    }
                    ElseIf (LEqual (ToInteger (GUPC), Zero))
                    {
                        Store (GETS (), GUPS) /* \_SB_.PCI0.PEG0.PEGP.NGC6.GUPS */
                        If (LEqual (ToInteger (GUPS), One))
                        {
                            Store (One, GPGS) /* \_SB_.PCI0.PEG0.PEGP.NGC6.GPGS */
                        }
                        Else
                        {
                            Store (Zero, GPGS) /* \_SB_.PCI0.PEG0.PEGP.NGC6.GPGS */
                        }
                    }
                    ElseIf (LEqual (ToInteger (GUPC), 0x06)){}
                    Return (JTB3) /* \_SB_.PCI0.PEG0.PEGP.NGC6.JTB3 */
                }
                Case (0x04)
                {
                    Return (0x80000002)
                }

            }

            Return (0x80000002)
        }
    }

    Scope (\_SB.PCI0.PEG0.PEGP)
    {
        Name (NLIM, Zero)
        Name (PSLS, Zero)
        Name (CTGP, Zero)
        Name (VPSC, One)
        Name (GPSP, Buffer (0x24){})
        CreateDWordField (GPSP, Zero, RETN)
        CreateDWordField (GPSP, 0x04, VRV1)
        CreateDWordField (GPSP, 0x08, TGPU)
        CreateDWordField (GPSP, 0x0C, PDTS)
        CreateDWordField (GPSP, 0x10, SFAN)
        CreateDWordField (GPSP, 0x14, SKNT)
        CreateDWordField (GPSP, 0x18, CPUE)
        CreateDWordField (GPSP, 0x1C, TMP1)
        CreateDWordField (GPSP, 0x20, TMP2)
        Method (GPS, 4, Serialized)
        {
            OperationRegion (IO8, SystemIO, 0x80, One)
            Field (IO8, ByteAcc, Lock, Preserve)
            {
                DBG8,   8
            }

            Store ("<<< GPS >>>", Debug)
            If (LNotEqual (Arg1, 0x0100))
            {
                Return (0x80000002)
            }

            Switch (ToInteger (Arg2))
            {
                Case (Zero)
                {
                    Store ("GPS fun 0", Debug)
                    Return (Buffer (0x08)
                    {
                         0x01, 0x00, 0x08, 0x00, 0x01, 0x04, 0x00, 0x00   // ........
                    })
                }
                Case (0x13)
                {
                    Store ("GPS fun 19", Debug)
                    Store (0x91, DBG8) /* \_SB_.PCI0.PEG0.PEGP.GPS_.DBG8 */
                    Store (One, \_SB.PCI0.LPCB.EC.BE06) /* External reference */
                    If (LEqual (\_SB.PCI0.LPCB.EC.QDXF, One))
                    {
                        Store (Zero, \_SB.PCI0.LPCB.EC.QDXF) /* External reference */
                    }

                    Return (Arg3)
                    Return (Arg3)
                }
                Case (0x1C)
                {
                    Store ("   GPS fun 28", Debug)
                    CreateField (Arg3, Zero, 0x04, RTFS)
                    CreateField (Arg3, 0x08, 0x08, VPS0)
                    CreateField (Arg3, 0x24, 0x08, VPS1)
                    If (LEqual (ToInteger (RTFS), Zero))
                    {
                        Store (0x02, Local0)
                        If (LEqual (VPSC, Zero))
                        {
                            Or (0x0600, Local0, Local0)
                        }
                        Else
                        {
                            Or (Zero, Local0, Local0)
                        }

                        Return (Local0)
                    }
                    ElseIf (LEqual (ToInteger (RTFS), 0x02))
                    {
                        Return (Zero)
                    }
                }
                Case (0x20)
                {
                    Store ("GPS fun 32", Debug)
                    Name (RET1, Zero)
                    CreateBitField (Arg3, 0x02, SPBI)
                    If (NLIM)
                    {
                        Or (RET1, One, RET1) /* \_SB_.PCI0.PEG0.PEGP.GPS_.RET1 */
                    }

                    If (PSLS)
                    {
                        Or (RET1, 0x02, RET1) /* \_SB_.PCI0.PEG0.PEGP.GPS_.RET1 */
                    }

                    If (CTGP)
                    {
                        Or (RET1, 0x00400000, RET1) /* \_SB_.PCI0.PEG0.PEGP.GPS_.RET1 */
                    }

                    Return (RET1) /* \_SB_.PCI0.PEG0.PEGP.GPS_.RET1 */
                }
                Case (0x2A)
                {
                    Store ("GPS fun 42", Debug)
                    CreateField (Arg3, Zero, 0x04, PSH0)
                    CreateBitField (Arg3, 0x08, GPUT)
                    Store (0x00010000, VRV1) /* \_SB_.PCI0.PEG0.PEGP.VRV1 */
                    If (LNotEqual (One, \_SB.PCI0.LPCB.EC.BE06))
                    {
                        Store (One, \_SB.PCI0.LPCB.EC.BE06) /* External reference */
                    }

                    If (LEqual (\_SB.PCI0.LPCB.EC.QDXF, One))
                    {
                        Store (Zero, \_SB.PCI0.LPCB.EC.QDXF) /* External reference */
                    }

                    Switch (ToInteger (PSH0))
                    {
                        Case (Zero)
                        {
                            Return (GPSP) /* \_SB_.PCI0.PEG0.PEGP.GPSP */
                        }
                        Case (One)
                        {
                            Store (0x0100, RETN) /* \_SB_.PCI0.PEG0.PEGP.RETN */
                            Or (RETN, ToInteger (PSH0), RETN) /* \_SB_.PCI0.PEG0.PEGP.RETN */
                            Return (GPSP) /* \_SB_.PCI0.PEG0.PEGP.GPSP */
                        }
                        Case (0x02)
                        {
                            Store (0x0102, RETN) /* \_SB_.PCI0.PEG0.PEGP.RETN */
                            Return (GPSP) /* \_SB_.PCI0.PEG0.PEGP.GPSP */
                        }

                    }

                    Return (0x80000002)
                }

            }

            Return (0x80000002)
        }
    }

    Scope (\_SB.PCI0)
    {
        Device (WMI2)
        {
            Name (_HID, "PNP0C14" /* Windows Management Instrumentation Device */)  // _HID: Hardware ID
            Name (_UID, "OPTM")  // _UID: Unique ID
            Name (_WDG, Buffer (0x28)
            {
                /* 0000 */  0xBF, 0x82, 0x49, 0xCA, 0x30, 0xC2, 0x8E, 0x45,  // ..I.0..E
                /* 0008 */  0xB1, 0x2F, 0x6F, 0x16, 0x47, 0x5F, 0x35, 0x1B,  // ./o.G_5.
                /* 0010 */  0x4F, 0x50, 0x01, 0x02, 0xF8, 0xD8, 0x86, 0xA4,  // OP......
                /* 0018 */  0xDA, 0x0B, 0x1B, 0x47, 0xA7, 0x2B, 0x60, 0x42,  // ...G.+`B
                /* 0020 */  0xA6, 0xB5, 0xBE, 0xE0, 0x53, 0x4D, 0x01, 0x00   // ....SM..
            })
            Method (WMOP, 3, NotSerialized)
            {
                If (LEqual (Arg1, One))
                {
                    \_SB.PCI0.PEG0.PEGP._PS0 ()
                    Notify (\_SB.PCI0.PEG0, Zero) // Bus Check
                    Return (Zero)
                }

                If (LEqual (Arg1, 0x02))
                {
                    If (LEqual (\_SB.PCI0.PEG0.PEGP.DGPS, Zero))
                    {
                        Return (0x10)
                    }
                    Else
                    {
                        Return (0x20)
                    }
                }
            }

            Method (WQSM, 1, NotSerialized)
            {
                Return (ATSM) /* \_SB_.PCI0.WMI2.ATSM */
            }

            Name (ATSM, Buffer (0xE2)
            {
                /* 0000 */  0x52, 0xAA, 0x89, 0xC5, 0x44, 0xCE, 0xC3, 0x3A,  // R...D..:
                /* 0008 */  0x4B, 0x56, 0xE2, 0x00, 0x00, 0x00, 0x01, 0x00,  // KV......
                /* 0010 */  0x32, 0x37, 0x34, 0x35, 0x39, 0x31, 0x32, 0x35,  // 27459125
                /* 0018 */  0x33, 0x36, 0x38, 0x37, 0x47, 0x65, 0x6E, 0x75,  // 3687Genu
                /* 0020 */  0x69, 0x6E, 0x65, 0x20, 0x4E, 0x56, 0x49, 0x44,  // ine NVID
                /* 0028 */  0x49, 0x41, 0x20, 0x43, 0x65, 0x72, 0x74, 0x69,  // IA Certi
                /* 0030 */  0x66, 0x69, 0x65, 0x64, 0x20, 0x4F, 0x70, 0x74,  // fied Opt
                /* 0038 */  0x69, 0x6D, 0x75, 0x73, 0x20, 0x52, 0x65, 0x61,  // imus Rea
                /* 0040 */  0x64, 0x79, 0x20, 0x4D, 0x6F, 0x74, 0x68, 0x65,  // dy Mothe
                /* 0048 */  0x72, 0x62, 0x6F, 0x61, 0x72, 0x64, 0x20, 0x66,  // rboard f
                /* 0050 */  0x6F, 0x72, 0x20, 0x63, 0x6F, 0x6F, 0x6B, 0x69,  // or cooki
                /* 0058 */  0x65, 0x20, 0x66, 0x6F, 0x72, 0x20, 0x75, 0x6C,  // e for ul
                /* 0060 */  0x35, 0x30, 0x20, 0x75, 0x73, 0x69, 0x6E, 0x20,  // 50 usin 
                /* 0068 */  0x2D, 0x20, 0x5E, 0x57, 0x3C, 0x4A, 0x3D, 0x41,  // - ^W<J=A
                /* 0070 */  0x24, 0x4C, 0x3A, 0x4B, 0x38, 0x32, 0x26, 0x51,  // $L:K82&Q
                /* 0078 */  0x48, 0x35, 0x4C, 0x3E, 0x2B, 0x33, 0x52, 0x2B,  // H5L>+3R+
                /* 0080 */  0x54, 0x35, 0x2A, 0x52, 0x29, 0x3A, 0x5B, 0x4C,  // T5*R):[L
                /* 0088 */  0x4A, 0x3E, 0x36, 0x48, 0x22, 0x48, 0x41, 0x50,  // J>6H"HAP
                /* 0090 */  0x47, 0x39, 0x5A, 0x39, 0x5E, 0x3E, 0x44, 0x53,  // G9Z9^>DS
                /* 0098 */  0x54, 0x3C, 0x20, 0x2D, 0x20, 0x43, 0x6F, 0x70,  // T< - Cop
                /* 00A0 */  0x79, 0x72, 0x69, 0x67, 0x68, 0x74, 0x20, 0x32,  // yright 2
                /* 00A8 */  0x30, 0x30, 0x39, 0x20, 0x4E, 0x56, 0x49, 0x44,  // 009 NVID
                /* 00B0 */  0x49, 0x41, 0x20, 0x43, 0x6F, 0x72, 0x70, 0x6F,  // IA Corpo
                /* 00B8 */  0x72, 0x61, 0x74, 0x69, 0x6F, 0x6E, 0x20, 0x41,  // ration A
                /* 00C0 */  0x6C, 0x6C, 0x20, 0x52, 0x69, 0x67, 0x68, 0x74,  // ll Right
                /* 00C8 */  0x73, 0x20, 0x52, 0x65, 0x73, 0x65, 0x72, 0x76,  // s Reserv
                /* 00D0 */  0x65, 0x64, 0x2D, 0x32, 0x37, 0x34, 0x35, 0x39,  // ed-27459
                /* 00D8 */  0x31, 0x32, 0x35, 0x33, 0x36, 0x38, 0x37, 0x28,  // 1253687(
                /* 00E0 */  0x52, 0x29                                       // R)
            })
        }

        Device (WMI1)
        {
            Name (_HID, "PNP0C14" /* Windows Management Instrumentation Device */)  // _HID: Hardware ID
            Name (_UID, "OPT1")  // _UID: Unique ID
            Name (_WDG, Buffer (0x14)
            {
                /* 0000 */  0x3C, 0x5C, 0xCB, 0xF6, 0xAE, 0x9C, 0xBD, 0x4E,  // <\.....N
                /* 0008 */  0xB5, 0x77, 0x93, 0x1E, 0xA3, 0x2A, 0x2C, 0xC0,  // .w...*,.
                /* 0010 */  0x4D, 0x58, 0x01, 0x02                           // MX..
            })
            Method (WMMX, 3, NotSerialized)
            {
                CreateDWordField (Arg2, Zero, FUNC)
                If (LEqual (FUNC, 0x534F525F))
                {
                    If (LGreaterEqual (SizeOf (Arg2), 0x08))
                    {
                        CreateDWordField (Arg2, 0x04, ARGS)
                        CreateDWordField (Arg2, 0x08, XARG)
                        Return (\_SB.PCI0.PEG0.PEGP._ROM (ARGS, XARG))
                    }
                }

                If (LEqual (FUNC, 0x4D53445F))
                {
                    If (LGreaterEqual (SizeOf (Arg2), 0x1C))
                    {
                        CreateField (Arg2, Zero, 0x80, MUID)
                        CreateDWordField (Arg2, 0x10, REVI)
                        CreateDWordField (Arg2, 0x14, SFNC)
                        CreateField (Arg2, 0xE0, 0x20, XRG0)
                        If (CondRefOf (\_SB.PCI0.GFX0._DSM))
                        {
                            Return (\_SB.PCI0.GFX0._DSM (MUID, REVI, SFNC, XRG0))
                        }
                    }
                }

                Return (Zero)
            }
        }
    }
}

