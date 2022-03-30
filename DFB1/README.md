## David's Falcon Booster Mark 1 (DFB1)

#### Hardware

The directory *kicad5* contains all the Kicad 5 project files and libraries necessary to order or edit the DFB1 PCB.

Kicad is an open source EDA suite. https://www.kicad.org/

Premade gerber files may be found in the releases.

#### Firmware

##### Building

The directory *ise* contains the project files, verilog source and hardware definition files needed to build the firmware for the CPLD.

AMD/Xilinx's ISE Design Suite is required to edit and synthesise the CPLD firmware. Tested with ISE Webpack v13.

https://www.xilinx.com/products/design-tools/ise-design-suite/ise-webpack.html

Precompiled (JEDEC) firmwares may be found in the releases.

##### Flashing

Flashing the CPLD can be achieved with the free and open source xc3sprog tool and a Xilinx programmer, or a Raspberry Pi.

http://xc3sprog.sourceforge.net/

https://linuxjedi.co.uk/2021/11/25/revisiting-xilinx-jtag-programming-from-a-raspberry-pi/

#### Assembling

Pick and place positioning files and automated bill of materials file are not yet available, but when they are the board house may be able to partially assemble boards for you.

In the meantime, and for hobbiests, a hand assembly video guide is available on my YouTube channel:

https://www.youtube.com/playlist?list=PLZBirr2xVnY4OkgEWdXNjq90gBGzXah9X

#### Software

I recommend Anders Granlund's TFTools suite to enable the TT-RAM on the DFB1 board. FASTRAM.PRG detects and activates the TT-RAM. MAPROM.PRG will additionally copy TOS to TT-RAM for even better performance but may require a cold boot to work completely correctly. BLITFIX.PRG does not, unfortunately, work with the Falcon.

https://github.com/agranlund/tftools

NVDI is recommended to use the stock TOS4 desktop with TT-RAM enabled as there is no way of disabling the Blitter in TOS4 and unfortunately the Blitter is not compatible with TT-RAM. NVDI replaces the VDI calls that use the Blitter.

An excellent alternative to all the above is EmuTOS, but sadly, as of version 1.1.1, it does not support the Falcon's 16-bit true colour mode.

https://emutos.sourceforge.io/

---

*Copyright 2020-21 D Henderson, released under GPL2.0*
