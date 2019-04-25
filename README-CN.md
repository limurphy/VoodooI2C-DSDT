# VoodooI2C-DSDT

[中文版](https://github.com/penghubingzhou/VoodooI2C-DSDT/blob/master/README-CN.md)|[English](https://github.com/penghubingzhou/VoodooI2C-DSDT/blob/master/README.md)



VoodooI2C-DSDT是一个致力于收集各种已有VoodooI2C驱动成功案例的DSDT的仓库。



## 目的



这个仓库的目的，在于给尚未驱动VoodooI2C的人提供一些有用的代码示例，用以参考修改。这里面并不一定会有你的机型配置，但是，里面的代码却可以提供给你一些帮助与参考。



请注意，这个仓库里的代码**仅供参考**，不能代替你本人的修改！！！



## 关于提交



本仓库欢迎各位通过PR提交自己已经成功驱动VoodooI2C的DSDT代码示例，以供其他人参考。要提交你的案例，请将修改好的DSDT资料（或者热补丁）、一份未安装VoodooI2C的ioreg、与一份`Info.txt`放入以机型命名的文件夹中。`Info.txt`中应该包括如下内容：

- 你的CPU型号(最好包含CPU架构信息)
- 你的触摸板设备ID
- 你所使用的模式(GPIO中断或轮询)
- 你所使用的目标驱动

然后，fork这个仓库并克隆，将你的文件放入并提交到你的仓库下。在检查完文件冲突后，把你的提交作为一个PR发送给我。

提交的示例可以参考 [联想小新潮7000-14](https://github.com/penghubingzhou/VoodooI2C-DSDT/tree/master/Lenovo%20Xiaoxin%20Chao%207000-14)的代码提交。



## 贡献



- @[Alexandred](https://github.com/alexandred)  的  [VoodooI2C](https://github.com/alexandred/VoodooI2C)
- @[daggeryu](https://github.com/daggeryu) 的 仓库想法
- @[penghubingzhou](https://github.com/penghubingzhou)  和 @[williambj1](https://github.com/williambj1) 对本仓库的维护

