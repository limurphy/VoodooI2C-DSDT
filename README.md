# VoodooI2C-DSDT

[中文版](https://github.com/penghubingzhou/VoodooI2C-DSDT/blob/master/README-CN.md) | English

VoodooI2C-DSDT is a repository that is aiming at collecting various successful DSDTs for VoodooI2C.

## Purpose

The purpose of this repository is to provide some useful code examples for people who haven't made VoodooI2C work yet. Maybe It doesn't include your model of laptop, but the code changing samples in this repository may have some help and references for you.

Note that the code in this repository is **ONLY FOR REFERENCES** and it can‘t replace your own work!

## For Submission

This repository welcomes everyone to submit  DSDT code examples by PR that have successfully made VoodooI2C work.

### To submit your example, please put:

- DSDT file (or Hotpatch SSDT file)
- An ioreg **without** Voodoo I2C installed
- An `Readme.md`

in a folder named by your **Your Laptop Model**.

**`Readme.md` should include:**

- Your CPU model (better for including CPU platform, chipset and Southbridge)
- Your trackpad Device ID
- Your trackpad Device's Bios Path
- The mode you use (GPIO interrupt or polling)
- Satellite Driver You Use
- Patches you use

Then, fork this repository and clone it, put all your files into a folder named by **Your Laptop Model** and commit it to your repository. After checking the conflicts, you can send your commit as a PR to me.

An example of submitting can be found in [Lenovo Xiaoxin Chao 7000-14](https://github.com/penghubingzhou/VoodooI2C-DSDT/tree/master/Lenovo%20Xiaoxin%20Chao%207000-14).

## Credits

- @[Alexandred](https://github.com/alexandred) for [VoodooI2C](https://github.com/alexandred/VoodooI2C)
- @[daggeryu](https://github.com/daggeryu) for the idea of this repository
- @[penghubingzhou](https://github.com/penghubingzhou) and @[williambj1](https://github.com/williambj1) for maintaining
