# DELL-inspiron-5488/5580

- CPU model：i5-8265u CannonLake LP
- Device ID:DELL089C
- Working mode: GPIO interrupt
- Satellite: VoodooI2C VoodooI2CHID.kext

## USE:

- Currently need to use this "target drive"
- DSDT Patches
Comment:change TPDM == Zero to TPDM != Zero in TPD0
Find:424649A0 1E935450 444D00A4
Replace:424649A0 1F929354 50444D00 A4