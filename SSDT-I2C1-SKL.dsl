// In config ACPI, I2C1 renamed I2X1
// Find:     49 32 43 31
// Replace:  49 32 58 31
// TgtBridge:no
//
// In config ACPI, I2X1._STA renamed I2X1.XSTA
// Find:     5F 53 54 41
// Replace:  58 53 54 41
// TgtBridge:49 32 58 31
#ifndef NO_DEFINITIONBLOCK
DefinitionBlock("", "SSDT", 2, "hack", "I2C1-SKL", 0)
{
#endif
    External(_SB.PCI0.I2X1, DeviceObj)
    External(SB11, FieldUnitObj)
    External(SMD1, FieldUnitObj)
    External(SB01, FieldUnitObj)
    External(SIR1, FieldUnitObj)
    //
    External(_SB.PCI0, DeviceObj)
    External(_SB.PCI0.GETD, MethodObj)
    External(_SB.PCI0.LPD0, MethodObj)
    External(_SB.PCI0.LPD3, MethodObj)
    External(_SB.PCI0.LHRV, MethodObj)
    External(_SB.PCI0.LCRS, MethodObj)
    External(_SB.PCI0.LSTA, MethodObj)
    External (_SB_.PCI0.PCIC, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.PCID, MethodObj)    // 4 Arguments (from opcode)

    Scope (_SB.PCI0.I2X1)
    {
        Method (_STA, 0, NotSerialized)
        {
            Return (0)
        }
    }   

    Scope (_SB.PCI0)
    {
        Device (I2C1)
        {
            Name (LINK, "\\_SB.PCI0.I2C1")
            Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
            {
                GETD (SB11)
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                LPD0 (SB11)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                LPD3 (SB11)
            }
        }
    }

    If (LNotEqual (SMD1, 0x02))
    {
        Scope (_SB.PCI0.I2C1)
        {
            Name (_HID, "INT3443")  // _HID: Hardware ID
            Method (_HRV, 0, NotSerialized)  // _HRV: Hardware Revision
            {
                Return (LHRV (SB11))
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (LCRS (SMD1, SB01, SIR1))
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (LSTA (SMD1))
            }
        }
    }

    If (LEqual (SMD1, 0x02))
    {
        Scope (_SB.PCI0.I2C1)
        {
            Name (_ADR, 0x00150001)  // _ADR: Address
            Method (XDSM, 4, Serialized)
            {
                If (PCIC (Arg0))
                {
                    Return (PCID (Arg0, Arg1, Arg2, Arg3))
                }

                Return (Zero)
            }
        }
    }
    
            
#ifndef NO_DEFINITIONBLOCK
}
#endif
//EOF