/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190215 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLXz6Hrq.aml, Sat Apr 27 22:45:45 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000EE (238)
 *     Revision         0x02
 *     Checksum         0x1A
 *     OEM ID           "hack"
 *     OEM Table ID     "TPAD"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20190215 (538509845)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "TPAD", 0x00000000)
{
    External (_SB_.PCI0.I2C0, DeviceObj)
    External (_SB_.PCI0.I2C0.TPAD, DeviceObj)
    External (FMD0, FieldUnitObj)
    External (FMH0, FieldUnitObj)
    External (FML0, FieldUnitObj)
    External (PKG3, MethodObj)    // 3 Arguments
    External (SSD0, FieldUnitObj)
    External (SSH0, FieldUnitObj)
    External (SSL0, FieldUnitObj)

    Scope (_SB.PCI0.I2C0)
    {
        Method (SSCN, 0, NotSerialized)
        {
            Return (PKG3 (SSH0, SSL0, SSD0))
        }

        Method (FMCN, 0, NotSerialized)
        {
            Return (PKG3 (FMH0, FML0, FMD0))
        }
    }

    Name (_SB.PCI0.I2C0.TPAD.SBFS, ResourceTemplate ()
    {
        Interrupt (ResourceConsumer, Level, ActiveLow, ExclusiveAndWake, ,, )
        {
            0x00000400,
        }
    })
}

