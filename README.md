## David's Falcon Booster (DFB)

#### An attempt to build a low-cost memory expansion and accelerator board for the Atari Falcon.

The primary goals of the project are to:

* Be a plug-in board requiring no soldering on the Falcon;
* Increase available RAM beyond the 14MB the stock Falcon can be expanded to;
* Be low cost;
* Provide some acceleration;
* Allow the PSU to remain in the case;
* Be open source.

Some development narration on this project is provided in the [Wiki](https://github.com/dh219/DFB/wiki).

Firmware source (ISE), board design files (KiCAD) and any source for support programs are published at each release.

#### Capabilities

As of 2024 the published firmware supports 64 (2x32) or 128 (2x64) MB of TT-RAM.

It supports only a PGA128 MC68030. The board has been tested between 32 and 50MHz with the CPU normally being the limiting factor.

The FPU is optional and can be run at half the CPU speed, or with an independent oscillator. This is configured by a resistor placement choice.

The Falcon's on-board FPU, if fitted, should be removed to prevent bus conflicts.

---

*Copyright 2020-24 D Henderson, released under GPL2.0*
