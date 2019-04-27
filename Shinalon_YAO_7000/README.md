# VoodooI2C-DSDT
![1](Shinalon_YAO_7000/irq.png)
### Hotpatch 
[hotpatch](Shinalon_YAO_7000/SSDT-TPAD.dsl)
### 原始DSDT TPAD部分(ORIGIN DSDT TPAD)
```bash
Device (TPAD)
        {
            Name (SADR, 0x2C)
            Name (HADR, 0x0020)
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "UNIW0001")  // _HID: Hardware ID
            Name (_CID, "PNP0C50")  // _CID: Compatible ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_S0W, Zero)  // _S0W: S0 Device Wake State
            Name (SBFB, ResourceTemplate ()
            {
                I2cSerialBusV2 (0x0000, ControllerInitiated, 0x00061A80,
                    AddressingMode7Bit, "\\_SB.PCI0.I2C0",
                    0x00, ResourceConsumer, _Y60, Exclusive,
                    )
            })
            CreateByteField (SBFB, \_SB.PCI0.I2C0.TPAD._Y60._ADR, BADR)  // _ADR: Address
            Name (SBFI, ResourceTemplate ()
            {
                GpioInt (Level, ActiveLow, Exclusive, PullNone, 0x0000,
                    "\\_SB.PCI0.GPI0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0000
                    }
            })
            CreateWordField (SBFI, 0x17, INTA)
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                Store (SADR, BADR)
                Store (GNUM (0x03040007), INTA)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LNotEqual (OTPM, 0x02))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Return (ConcatenateResTemplate (SBFB, SBFI))
            }

```
### POLLING MODE DSDT TPAD(POLLING MODE DSDT TPAD)
```bash
 Scope (_SB.PCI0.I2C0)
    {
        Device (TPAD)
        {
            Name (SADR, 0x2C)
            Name (HADR, 0x20)
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "UNIW0001")  // _HID: Hardware ID
            Name (_CID, "PNP0C50" /* HID Protocol Device (I2C bus) */)  // _CID: Compatible ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_S0W, Zero)  // _S0W: S0 Device Wake State
            Name (SBFB, ResourceTemplate ()
            {
                I2cSerialBusV2 (0x0000, ControllerInitiated, 0x00061A80,
                    AddressingMode7Bit, "\\_SB.PCI0.I2C0",
                    0x00, ResourceConsumer, _Y60, Exclusive,
                    )
            })
            CreateByteField (SBFB, \_SB.PCI0.I2C0.TPAD._Y60._ADR, BADR)  // _ADR: Address
            
            # 修改部分
            Name (SBFI, ResourceTemplate ()
            {
                Interrupt (ResourceConsumer, Level, ActiveLow, ExclusiveAndWake, ,, )
                {
                    0x00000400,
                }
            })
            
            CreateWordField (SBFI, 0x17, INTA)
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                BADR = SADR /* \_SB_.PCI0.I2C0.TPAD.SADR */
                INTA = GNUM (0x03040007)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((OTPM != 0x02))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Return (ConcatenateResTemplate (SBFB, SBFI))
            }

```