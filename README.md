# VoodooI2C-DSDT

[中文版](https://github.com/penghubingzhou/VoodooI2C-DSDT/blob/master/README-CN.md)|[English](https://github.com/penghubingzhou/VoodooI2C-DSDT/blob/master/README.md)



VoodooI2C-DSDT is a repository that is aiming at collecting various successful DSDTs for Voodoo I2C.



## Purpose

The purpose of this repository is to provide some useful code examples for people who haven't yet make VoodooI2C work. Maybe It don't have your model of laptop, but code in this repository may  have  some  help  and references  for you.

Note that the code in this repository is **ONLY FOR REFERENCES** and  it can‘t replace your own work!



## For Submission



This repository welcomes everyone to submit  DSDT code examples that have successfully made VoodooI2C work by PR. To submit your example, please put the DSDT file (or Hotpatch SSDT file), an ioreg without Voodoo I2C installed, and `Info.txt` in a folder named by your laptop model. `Info.txt` should include:

- Your CPU model (better for  including  CPU platform)

- Your touchpad Device ID

- The mode you use (GPIO interrupt or polling)

- Satellite Driver You Use

  

Then, fork this repository and clone it, put your file in and commit it to your repository. After checking the conflicts, you can  send your commit as a PR to me.

An example for submitting can be found  in [Lenovo Xiaoxin Chao 7000-14](https://github.com/penghubingzhou/VoodooI2C-DSDT/tree/master/Lenovo%20Xiaoxin%20Chao%207000-14).



## Credits



- @[Alexandred](https://github.com/alexandred) for [VoodooI2C](https://github.com/alexandred/VoodooI2C)
- @[daggeryu](https://github.com/daggeryu) for the idea in  this  repository
- @[penghubingzhou](https://github.com/penghubingzhou) and @[williambj1](https://github.com/williambj1) for  maintaining
