EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 2 5
Title "David's Falcon Booster 1"
Date "2022-01-15"
Rev "5"
Comp "D Henderson"
Comment1 "Copyright 2022 D Henderson"
Comment2 "Released under the terms of the GPLv2"
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 5950 1500 3    50   Input ~ 0
GND
$Comp
L Device:C C?
U 1 1 5F0E5B87
P 5400 1250
AR Path="/5F0E5B87" Ref="C?"  Part="1" 
AR Path="/6267658C/5F0E5B87" Ref="C?"  Part="1" 
AR Path="/5F0550B0/5F0E5B87" Ref="C3"  Part="1" 
F 0 "C3" H 5515 1296 50  0000 L CNN
F 1 "10u" H 5515 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 5438 1100 50  0001 C CNN
F 3 "~" H 5400 1250 50  0001 C CNN
F 4 "C15850" H 5400 1250 50  0001 C CNN "LCSC Part"
	1    5400 1250
	1    0    0    -1  
$EndComp
Text GLabel 6150 1000 1    50   Input ~ 0
VCC
Wire Wire Line
	6150 1100 6150 1000
Connection ~ 5400 1100
Text GLabel 9750 9250 3    50   Input ~ 0
GND
Wire Wire Line
	5950 5100 6550 5100
Wire Wire Line
	5950 5000 6550 5000
Wire Wire Line
	5950 4900 6550 4900
Wire Wire Line
	5950 4800 6550 4800
Wire Wire Line
	5950 4700 6550 4700
Wire Wire Line
	5950 4600 6550 4600
Wire Wire Line
	5950 4500 6550 4500
Wire Wire Line
	5950 4400 6550 4400
Wire Wire Line
	5950 4300 6550 4300
Wire Wire Line
	5950 4200 6550 4200
Wire Wire Line
	5950 4100 6550 4100
Wire Wire Line
	5950 4000 6550 4000
Wire Wire Line
	5950 3900 6550 3900
Wire Wire Line
	5950 3800 6550 3800
Wire Wire Line
	5950 3700 6550 3700
Wire Wire Line
	5950 3600 6550 3600
Text Label 6550 5100 2    50   ~ 0
D15
Text Label 6550 5000 2    50   ~ 0
D14
Text Label 6550 4900 2    50   ~ 0
D13
Text Label 6550 4800 2    50   ~ 0
D12
Text Label 6550 4700 2    50   ~ 0
D11
Text Label 6550 4600 2    50   ~ 0
D10
Text Label 6550 4500 2    50   ~ 0
D9
Text Label 6550 4400 2    50   ~ 0
D8
Text Label 6550 4300 2    50   ~ 0
D7
Text Label 6550 4200 2    50   ~ 0
D6
Text Label 6550 4100 2    50   ~ 0
D5
Text Label 6550 4000 2    50   ~ 0
D4
Text Label 6550 3900 2    50   ~ 0
D3
Text Label 6550 3800 2    50   ~ 0
D2
Text Label 6550 3700 2    50   ~ 0
D1
Text Label 6550 3600 2    50   ~ 0
D0
Text Label 2550 4400 2    50   ~ 0
A7
Text Label 2550 4300 2    50   ~ 0
A6
Text Label 2550 4200 2    50   ~ 0
A5
Text Label 2550 4100 2    50   ~ 0
A4
Text Label 2550 3900 2    50   ~ 0
A2
Text Label 2550 3800 2    50   ~ 0
A1
Text Label 2550 4000 2    50   ~ 0
A3
Text Label 2550 4500 2    50   ~ 0
A8
Text Label 2550 4600 2    50   ~ 0
A9
Text Label 2550 5800 2    50   ~ 0
A21
Entry Wire Line
	2250 6700 2350 6800
Entry Wire Line
	2250 6600 2350 6700
Entry Wire Line
	2250 6500 2350 6600
Entry Wire Line
	2250 6400 2350 6500
Entry Wire Line
	2250 6300 2350 6400
Text Label 2550 5600 2    50   ~ 0
A19
Text Label 2550 5700 2    50   ~ 0
A20
Text Label 2550 5900 2    50   ~ 0
A22
Text Label 2550 6000 2    50   ~ 0
A23
Text Label 2550 5500 2    50   ~ 0
A18
Text Label 2550 5400 2    50   ~ 0
A17
Text Label 2550 4900 2    50   ~ 0
A12
Entry Wire Line
	2250 6200 2350 6300
Entry Wire Line
	2250 6100 2350 6200
Entry Wire Line
	2250 6000 2350 6100
Entry Wire Line
	2250 5900 2350 6000
Entry Wire Line
	2250 5800 2350 5900
Entry Wire Line
	2250 5700 2350 5800
Entry Wire Line
	2250 5600 2350 5700
Entry Wire Line
	2250 5500 2350 5600
Entry Wire Line
	2250 5400 2350 5500
Text Label 2550 4700 2    50   ~ 0
A10
Text Label 2550 4800 2    50   ~ 0
A11
Text Label 2550 5000 2    50   ~ 0
A13
Text Label 2550 5100 2    50   ~ 0
A14
Text Label 2550 5200 2    50   ~ 0
A15
Text Label 2550 5300 2    50   ~ 0
A16
Entry Wire Line
	2250 5300 2350 5400
Entry Wire Line
	2250 5200 2350 5300
Entry Wire Line
	2250 5100 2350 5200
Entry Wire Line
	2250 5000 2350 5100
Entry Wire Line
	2250 4900 2350 5000
Entry Wire Line
	2250 4800 2350 4900
Entry Wire Line
	2250 4700 2350 4800
Entry Wire Line
	2250 4600 2350 4700
Entry Wire Line
	2250 4500 2350 4600
Entry Wire Line
	2250 4400 2350 4500
Text Label 2550 3700 2    50   ~ 0
A0
Entry Wire Line
	2250 4300 2350 4400
Entry Wire Line
	2250 4200 2350 4300
Entry Wire Line
	2250 4100 2350 4200
Entry Wire Line
	2250 4000 2350 4100
Entry Wire Line
	2250 3900 2350 4000
Entry Wire Line
	2250 3800 2350 3900
Entry Wire Line
	2250 3700 2350 3800
Entry Wire Line
	2250 3600 2350 3700
Text Label 2550 6400 2    50   ~ 0
A27
Text Label 2550 6300 2    50   ~ 0
A26
Text Label 2550 6200 2    50   ~ 0
A25
Text Label 2550 6100 2    50   ~ 0
A24
Text Label 2550 6500 2    50   ~ 0
A28
Text Label 2550 6600 2    50   ~ 0
A29
Text Label 2550 6700 2    50   ~ 0
A30
Text Label 2550 6800 2    50   ~ 0
A31
Text GLabel 2050 3400 0    50   BiDi ~ 0
A[0..31]
Text GLabel 6850 3450 2    50   BiDi ~ 0
D[0..31]
Wire Bus Line
	6650 3450 6850 3450
Wire Wire Line
	5950 6800 6050 6800
NoConn ~ 5950 3300
NoConn ~ 3150 3000
Text GLabel 3150 1900 0    50   Input ~ 0
CPUCLK
Text GLabel 6250 1750 1    50   Input ~ 0
~AVEC
Text GLabel 6550 1750 1    50   Input ~ 0
~IPL2
Text GLabel 6700 1750 1    50   Input ~ 0
~IPL1
Text GLabel 6850 1750 1    50   Input ~ 0
~IPL0
Text GLabel 6050 6800 2    50   BiDi ~ 0
~BERR
Text GLabel 2700 1700 1    50   Input ~ 0
~BR
Text GLabel 2550 1700 1    50   Output ~ 0
~BG
Text GLabel 2400 1700 1    50   Input ~ 0
~BGK
Text GLabel 2250 1700 1    50   Input ~ 0
~HLT
Text GLabel 2100 1700 1    50   BiDi ~ 0
~RST
Text GLabel 1550 2400 1    50   Input ~ 0
~DSACK1
Text GLabel 1400 2400 1    50   Input ~ 0
~DSACK0
Text GLabel 1250 2400 1    50   Output ~ 0
~DS
Text GLabel 1100 2400 1    50   Output ~ 0
~AS
Text GLabel 950  2400 1    50   Output ~ 0
XR~W
Text GLabel 3050 3200 0    50   Output ~ 0
FC2
Text GLabel 3050 3300 0    50   Output ~ 0
FC1
Text GLabel 3050 3400 0    50   Output ~ 0
FC0
Text GLabel 3050 3500 0    50   Output ~ 0
SIZ0
Text GLabel 3050 3600 0    50   Output ~ 0
SIZ1
Wire Wire Line
	2100 1700 2100 2400
Wire Wire Line
	2250 2300 2250 1700
Wire Wire Line
	2400 1700 2400 2200
Wire Wire Line
	2550 2100 2550 1700
Wire Wire Line
	2700 1700 2700 2000
Wire Wire Line
	1550 2600 1550 2400
Wire Wire Line
	1100 2400 1100 2900
Wire Wire Line
	1250 2800 1250 2400
Wire Wire Line
	1400 2400 1400 2700
Wire Wire Line
	950  2400 950  3100
Wire Wire Line
	3150 3200 3050 3200
Wire Wire Line
	3050 3300 3150 3300
Wire Wire Line
	3150 3400 3050 3400
Wire Wire Line
	3050 3500 3150 3500
Wire Wire Line
	3150 3600 3050 3600
Wire Wire Line
	5950 1900 6250 1900
Wire Wire Line
	6250 1900 6250 1750
Wire Wire Line
	6700 2200 6700 1750
Wire Wire Line
	5950 2200 6700 2200
Wire Wire Line
	6850 1750 6850 2300
Wire Wire Line
	5950 2300 6850 2300
Wire Wire Line
	6550 2100 6550 1750
Wire Wire Line
	5950 2100 6550 2100
Wire Wire Line
	9750 9000 9750 9250
Wire Wire Line
	5000 1500 5000 1100
Wire Wire Line
	5000 1100 5400 1100
Text Label 6500 2400 0    50   ~ 0
CDIS
Text Label 6500 2500 0    50   ~ 0
MMUDIS
NoConn ~ 5950 2700
NoConn ~ 5950 3200
NoConn ~ 5950 2600
$Comp
L 68k:MC68030RC_PGA U2
U 1 1 5F2BC83E
P 4550 4150
F 0 "U2" H 4550 7003 60  0000 C CNN
F 1 "MC68030RC_PGA" H 4550 6897 60  0000 C CNN
F 2 "MC68030:MC68030RC_PGA" H 4550 4150 60  0001 C CNN
F 3 "" H 4550 4150 60  0000 C CNN
	1    4550 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 7200 3700 7200
Connection ~ 4300 1500
Connection ~ 4000 7200
Connection ~ 4200 7200
Connection ~ 4300 7200
Connection ~ 4500 1500
Connection ~ 4500 7200
Connection ~ 4100 1500
Connection ~ 3700 7200
Connection ~ 4700 7200
Connection ~ 4900 1500
Wire Wire Line
	4900 1500 5000 1500
Connection ~ 3800 7200
Connection ~ 4800 7200
Connection ~ 4900 7200
Connection ~ 3900 7200
Connection ~ 4200 1500
Connection ~ 4100 7200
Connection ~ 4400 1500
Connection ~ 4400 7200
Connection ~ 4600 1500
Connection ~ 4600 7200
Wire Wire Line
	2350 4700 3150 4700
Wire Wire Line
	2350 4800 3150 4800
Wire Wire Line
	2350 3800 3150 3800
Wire Wire Line
	2350 3900 3150 3900
Wire Wire Line
	2350 4000 3150 4000
Wire Wire Line
	2350 4100 3150 4100
Wire Wire Line
	2350 4200 3150 4200
Wire Wire Line
	2350 4300 3150 4300
Wire Wire Line
	2350 4400 3150 4400
Wire Wire Line
	2350 4500 3150 4500
Wire Wire Line
	2350 4600 3150 4600
Wire Wire Line
	2350 6000 3150 6000
Wire Wire Line
	2350 5900 3150 5900
Wire Wire Line
	2350 5800 3150 5800
Wire Wire Line
	2350 5700 3150 5700
Wire Wire Line
	2350 5600 3150 5600
Wire Wire Line
	2350 5500 3150 5500
Wire Wire Line
	2350 5400 3150 5400
Wire Wire Line
	2350 5300 3150 5300
Wire Wire Line
	2350 5200 3150 5200
Wire Wire Line
	2350 5100 3150 5100
Wire Wire Line
	2350 4900 3150 4900
Wire Wire Line
	2350 5000 3150 5000
Wire Wire Line
	2350 3700 3150 3700
Wire Wire Line
	2350 6100 3150 6100
Wire Wire Line
	2350 6200 3150 6200
Wire Wire Line
	2350 6300 3150 6300
Wire Wire Line
	2350 6400 3150 6400
Wire Wire Line
	2350 6500 3150 6500
Wire Wire Line
	2350 6600 3150 6600
Wire Wire Line
	2350 6700 3150 6700
Wire Wire Line
	2350 6800 3150 6800
Wire Wire Line
	2100 2400 3150 2400
Wire Wire Line
	2250 2300 3150 2300
Wire Wire Line
	2400 2200 3150 2200
Wire Wire Line
	2550 2100 3150 2100
Wire Wire Line
	2700 2000 3150 2000
Wire Wire Line
	1550 2600 3150 2600
Wire Wire Line
	1100 2900 3150 2900
Wire Wire Line
	1250 2800 3150 2800
Wire Wire Line
	1400 2700 3150 2700
Wire Wire Line
	950  3100 3150 3100
Wire Wire Line
	1750 2500 3150 2500
Wire Wire Line
	4900 7200 5000 7200
Wire Wire Line
	4000 1500 4100 1500
Wire Wire Line
	4800 7200 4900 7200
Wire Wire Line
	3800 7200 3900 7200
Wire Wire Line
	4800 1500 4900 1500
Wire Wire Line
	4700 7200 4800 7200
Wire Wire Line
	4600 7200 4700 7200
Wire Wire Line
	3700 7200 3800 7200
Wire Wire Line
	4500 1500 4600 1500
Wire Wire Line
	4500 7200 4600 7200
Wire Wire Line
	4400 7200 4500 7200
Wire Wire Line
	4400 1500 4500 1500
Wire Wire Line
	4300 1500 4400 1500
Wire Wire Line
	4300 7200 4400 7200
Wire Wire Line
	4200 7200 4300 7200
Wire Wire Line
	4100 7200 4200 7200
Wire Wire Line
	4000 7200 4100 7200
Wire Wire Line
	3900 7200 4000 7200
Wire Wire Line
	4200 1500 4300 1500
Wire Wire Line
	4100 1500 4200 1500
Wire Wire Line
	4600 1500 4700 1500
Wire Wire Line
	5950 6700 6550 6700
Wire Wire Line
	5950 6600 6550 6600
Wire Wire Line
	5950 6500 6550 6500
Wire Wire Line
	5950 6400 6550 6400
Wire Wire Line
	5950 6300 6550 6300
Wire Wire Line
	5950 6200 6550 6200
Wire Wire Line
	5950 6100 6550 6100
Wire Wire Line
	5950 6000 6550 6000
Wire Wire Line
	5950 5900 6550 5900
Wire Wire Line
	5950 5800 6550 5800
Wire Wire Line
	5950 5700 6550 5700
Wire Wire Line
	5950 5600 6550 5600
Wire Wire Line
	5950 5500 6550 5500
Wire Wire Line
	5950 5400 6550 5400
Wire Wire Line
	5950 5300 6550 5300
Wire Wire Line
	5950 5200 6550 5200
Entry Wire Line
	6650 5000 6550 5100
Entry Wire Line
	6650 4900 6550 5000
Entry Wire Line
	6650 4800 6550 4900
Entry Wire Line
	6650 4700 6550 4800
Entry Wire Line
	6650 4600 6550 4700
Entry Wire Line
	6650 4500 6550 4600
Entry Wire Line
	6650 4400 6550 4500
Entry Wire Line
	6650 4300 6550 4400
Entry Wire Line
	6650 4200 6550 4300
Entry Wire Line
	6650 4100 6550 4200
Entry Wire Line
	6650 4000 6550 4100
Entry Wire Line
	6650 3900 6550 4000
Entry Wire Line
	6650 3800 6550 3900
Entry Wire Line
	6650 3700 6550 3800
Entry Wire Line
	6650 3600 6550 3700
Entry Wire Line
	6650 3500 6550 3600
Entry Wire Line
	6650 6600 6550 6700
Entry Wire Line
	6650 6500 6550 6600
Entry Wire Line
	6650 6400 6550 6500
Entry Wire Line
	6650 6300 6550 6400
Entry Wire Line
	6650 6200 6550 6300
Entry Wire Line
	6650 6100 6550 6200
Entry Wire Line
	6650 6000 6550 6100
Entry Wire Line
	6650 5900 6550 6000
Entry Wire Line
	6650 5800 6550 5900
Entry Wire Line
	6650 5700 6550 5800
Entry Wire Line
	6650 5600 6550 5700
Entry Wire Line
	6650 5500 6550 5600
Entry Wire Line
	6650 5400 6550 5500
Entry Wire Line
	6650 5300 6550 5400
Entry Wire Line
	6650 5200 6550 5300
Entry Wire Line
	6650 5100 6550 5200
Text Label 6400 5400 0    50   ~ 0
D18
Text Label 6400 5600 0    50   ~ 0
D20
Text Label 6400 5800 0    50   ~ 0
D22
Text Label 6400 6000 0    50   ~ 0
D24
Text Label 6400 6200 0    50   ~ 0
D26
Text Label 6400 6400 0    50   ~ 0
D28
Text Label 6400 6600 0    50   ~ 0
D30
Text Label 6400 6500 0    50   ~ 0
D29
Text Label 6400 6300 0    50   ~ 0
D27
Text Label 6400 6100 0    50   ~ 0
D25
Text Label 6400 5900 0    50   ~ 0
D23
Text Label 6400 5700 0    50   ~ 0
D21
Text Label 6400 5500 0    50   ~ 0
D19
Text Label 6400 5300 0    50   ~ 0
D17
Text Label 6400 6700 0    50   ~ 0
D31
Text Label 6400 5200 0    50   ~ 0
D16
$Comp
L Device:C C?
U 1 1 5FA9A7AF
P 5750 1250
AR Path="/5FA9A7AF" Ref="C?"  Part="1" 
AR Path="/6267658C/5FA9A7AF" Ref="C?"  Part="1" 
AR Path="/5F0550B0/5FA9A7AF" Ref="C4"  Part="1" 
F 0 "C4" H 5865 1296 50  0000 L CNN
F 1 "100n" H 5865 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 5788 1100 50  0001 C CNN
F 3 "~" H 5750 1250 50  0001 C CNN
F 4 "C49678" H 5750 1250 50  0001 C CNN "LCSC Part"
	1    5750 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FA9ACB2
P 6150 1250
AR Path="/5FA9ACB2" Ref="C?"  Part="1" 
AR Path="/6267658C/5FA9ACB2" Ref="C?"  Part="1" 
AR Path="/5F0550B0/5FA9ACB2" Ref="C5"  Part="1" 
F 0 "C5" H 6265 1296 50  0000 L CNN
F 1 "330p" H 6265 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 6188 1100 50  0001 C CNN
F 3 "~" H 6150 1250 50  0001 C CNN
F 4 "C51207" H 6150 1250 50  0001 C CNN "LCSC Part"
	1    6150 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 1100 5750 1100
Connection ~ 5750 1100
Wire Wire Line
	6150 1400 5950 1400
Connection ~ 5750 1400
Wire Wire Line
	5750 1400 5400 1400
Wire Wire Line
	4800 1500 4700 1500
Connection ~ 4800 1500
Connection ~ 4700 1500
$Comp
L Device:C C?
U 1 1 5F9E0AFA
P 6550 1250
AR Path="/5F9E0AFA" Ref="C?"  Part="1" 
AR Path="/6267658C/5F9E0AFA" Ref="C?"  Part="1" 
AR Path="/5F0550B0/5F9E0AFA" Ref="C6"  Part="1" 
F 0 "C6" H 6665 1296 50  0000 L CNN
F 1 "100n" H 6665 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 6588 1100 50  0001 C CNN
F 3 "~" H 6550 1250 50  0001 C CNN
F 4 "C49678" H 6550 1250 50  0001 C CNN "LCSC Part"
	1    6550 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 1100 6150 1100
Connection ~ 6150 1100
Wire Wire Line
	6150 1400 6550 1400
Connection ~ 6150 1400
Wire Wire Line
	5950 1500 5950 1400
Connection ~ 5950 1400
Wire Wire Line
	5950 1400 5750 1400
$Comp
L Device:C C?
U 1 1 5F9AE247
P 6950 1250
AR Path="/5F9AE247" Ref="C?"  Part="1" 
AR Path="/6267658C/5F9AE247" Ref="C?"  Part="1" 
AR Path="/5F0550B0/5F9AE247" Ref="C7"  Part="1" 
F 0 "C7" H 7065 1296 50  0000 L CNN
F 1 "100n" H 7065 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 6988 1100 50  0001 C CNN
F 3 "~" H 6950 1250 50  0001 C CNN
F 4 "C49678" H 6950 1250 50  0001 C CNN "LCSC Part"
	1    6950 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 1100 6950 1100
Connection ~ 6550 1100
Wire Wire Line
	6950 1400 6550 1400
Connection ~ 6550 1400
Wire Wire Line
	5750 1100 6150 1100
Text GLabel 6650 3100 2    50   Output ~ 0
~CBACK
Text GLabel 6250 3000 2    50   Output ~ 0
~CBREQ
NoConn ~ 5950 3400
NoConn ~ 5950 2000
NoConn ~ 5950 2800
Wire Wire Line
	5950 3100 6650 3100
Wire Wire Line
	5950 3000 6250 3000
Wire Bus Line
	2050 3400 2250 3400
$Comp
L david:MC68882 U3
U 1 1 6136C4B4
P 10400 6950
F 0 "U3" H 10400 9231 50  0000 C CNN
F 1 "MC68882" H 10400 9140 50  0000 C CNN
F 2 "Package_LCC:PLCC-68_THT-Socket" H 10400 6400 50  0001 C CNN
F 3 "" H 10400 6400 50  0001 C CNN
	1    10400 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	11800 7000 12500 7000
Wire Wire Line
	11800 6900 12500 6900
Wire Wire Line
	11800 6800 12500 6800
Wire Wire Line
	11800 6700 12500 6700
Wire Wire Line
	11800 6600 12500 6600
Wire Wire Line
	11800 6500 12500 6500
Wire Wire Line
	11800 6400 12500 6400
Wire Wire Line
	11800 6300 12500 6300
Wire Wire Line
	11800 6200 12500 6200
Wire Wire Line
	11800 6100 12500 6100
Wire Wire Line
	11800 6000 12500 6000
Wire Wire Line
	11800 5900 12500 5900
Wire Wire Line
	11800 5800 12500 5800
Wire Wire Line
	11800 5700 12500 5700
Wire Wire Line
	11800 5600 12500 5600
Wire Wire Line
	11800 5500 12500 5500
Text Label 12400 7000 2    50   ~ 0
D15
Text Label 12400 6900 2    50   ~ 0
D14
Text Label 12400 6800 2    50   ~ 0
D13
Text Label 12400 6700 2    50   ~ 0
D12
Text Label 12400 6600 2    50   ~ 0
D11
Text Label 12400 6500 2    50   ~ 0
D10
Text Label 12400 6400 2    50   ~ 0
D9
Text Label 12400 6300 2    50   ~ 0
D8
Text Label 12400 6200 2    50   ~ 0
D7
Text Label 12400 6100 2    50   ~ 0
D6
Text Label 12400 6000 2    50   ~ 0
D5
Text Label 12400 5900 2    50   ~ 0
D4
Text Label 12400 5800 2    50   ~ 0
D3
Text Label 12400 5700 2    50   ~ 0
D2
Text Label 12400 5600 2    50   ~ 0
D1
Text Label 12400 5500 2    50   ~ 0
D0
Text GLabel 13200 5150 0    50   BiDi ~ 0
D[0..31]
Wire Bus Line
	13450 5150 13200 5150
Wire Wire Line
	11800 8600 12500 8600
Wire Wire Line
	11800 8500 12500 8500
Wire Wire Line
	11800 8400 12500 8400
Wire Wire Line
	11800 8300 12500 8300
Wire Wire Line
	11800 8200 12500 8200
Wire Wire Line
	11800 8100 12500 8100
Wire Wire Line
	11800 8000 12500 8000
Wire Wire Line
	11800 7900 12500 7900
Wire Wire Line
	11800 7800 12500 7800
Wire Wire Line
	11800 7700 12500 7700
Wire Wire Line
	11800 7600 12500 7600
Wire Wire Line
	11800 7500 12500 7500
Wire Wire Line
	11800 7400 12500 7400
Wire Wire Line
	11800 7300 12500 7300
Wire Wire Line
	11800 7200 12500 7200
Wire Wire Line
	11800 7100 12500 7100
Entry Wire Line
	12600 7200 12500 7100
Entry Wire Line
	12600 7300 12500 7200
Entry Wire Line
	12600 7400 12500 7300
Entry Wire Line
	12600 7500 12500 7400
Entry Wire Line
	12600 7600 12500 7500
Entry Wire Line
	12600 7700 12500 7600
Entry Wire Line
	12600 7800 12500 7700
Entry Wire Line
	12600 7900 12500 7800
Entry Wire Line
	12600 8000 12500 7900
Entry Wire Line
	12600 8100 12500 8000
Entry Wire Line
	12600 8200 12500 8100
Entry Wire Line
	12600 8300 12500 8200
Entry Wire Line
	12600 8400 12500 8300
Entry Wire Line
	12600 8500 12500 8400
Entry Wire Line
	12600 8600 12500 8500
Entry Wire Line
	12600 8700 12500 8600
Entry Wire Line
	12600 5600 12500 5500
Entry Wire Line
	12600 5700 12500 5600
Entry Wire Line
	12600 5800 12500 5700
Entry Wire Line
	12600 5900 12500 5800
Entry Wire Line
	12600 6000 12500 5900
Entry Wire Line
	12600 6100 12500 6000
Entry Wire Line
	12600 6200 12500 6100
Entry Wire Line
	12600 6300 12500 6200
Entry Wire Line
	12600 6400 12500 6300
Entry Wire Line
	12600 6500 12500 6400
Entry Wire Line
	12600 6600 12500 6500
Entry Wire Line
	12600 6700 12500 6600
Entry Wire Line
	12600 6800 12500 6700
Entry Wire Line
	12600 6900 12500 6800
Entry Wire Line
	12600 7000 12500 6900
Entry Wire Line
	12600 7100 12500 7000
Text Label 12250 7300 0    50   ~ 0
D18
Text Label 12250 7500 0    50   ~ 0
D20
Text Label 12250 7700 0    50   ~ 0
D22
Text Label 12250 7900 0    50   ~ 0
D24
Text Label 12250 8100 0    50   ~ 0
D26
Text Label 12250 8300 0    50   ~ 0
D28
Text Label 12250 8500 0    50   ~ 0
D30
Text Label 12250 8400 0    50   ~ 0
D29
Text Label 12250 8200 0    50   ~ 0
D27
Text Label 12250 8000 0    50   ~ 0
D25
Text Label 12250 7800 0    50   ~ 0
D23
Text Label 12250 7600 0    50   ~ 0
D21
Text Label 12250 7400 0    50   ~ 0
D19
Text Label 12250 7200 0    50   ~ 0
D17
Text Label 12250 8600 0    50   ~ 0
D31
Text Label 12250 7100 0    50   ~ 0
D16
Text GLabel 9000 5250 0    50   Input ~ 0
FPUCLK
Text GLabel 9000 5400 0    50   Input ~ 0
~AS
Text GLabel 9000 5500 0    50   Input ~ 0
~DS
Text GLabel 9000 5900 0    50   Input ~ 0
~RST
Text GLabel 9000 5700 0    50   Input ~ 0
~FPUCS
Text GLabel 8500 4850 1    50   Input ~ 0
VCC
Wire Wire Line
	9000 5800 8500 5800
Wire Wire Line
	8500 5050 8500 5800
Text Label 8500 5700 1    50   ~ 0
FPUSIZE
Text Label 8400 6550 2    50   ~ 0
A4
Text Label 8400 6350 2    50   ~ 0
A2
Text Label 8400 6250 2    50   ~ 0
A1
Text Label 8400 6450 2    50   ~ 0
A3
Entry Wire Line
	8000 6450 8100 6550
Entry Wire Line
	8000 6350 8100 6450
Entry Wire Line
	8000 6250 8100 6350
Entry Wire Line
	8000 6150 8100 6250
Text GLabel 7900 5850 0    50   BiDi ~ 0
A[0..31]
Wire Wire Line
	8100 6250 9000 6250
Wire Wire Line
	8100 6350 9000 6350
Wire Wire Line
	8100 6450 9000 6450
Wire Wire Line
	8100 6550 9000 6550
Wire Wire Line
	8200 6150 9000 6150
Wire Bus Line
	7900 5850 8000 5850
Wire Wire Line
	10950 9000 10850 9000
Connection ~ 9850 9000
Wire Wire Line
	9850 9000 9750 9000
Connection ~ 9950 9000
Wire Wire Line
	9950 9000 9850 9000
Connection ~ 10050 9000
Wire Wire Line
	10050 9000 9950 9000
Connection ~ 10150 9000
Wire Wire Line
	10150 9000 10050 9000
Connection ~ 10250 9000
Wire Wire Line
	10250 9000 10150 9000
Connection ~ 10350 9000
Wire Wire Line
	10350 9000 10250 9000
Connection ~ 10450 9000
Wire Wire Line
	10450 9000 10350 9000
Connection ~ 10550 9000
Wire Wire Line
	10550 9000 10450 9000
Connection ~ 10650 9000
Wire Wire Line
	10650 9000 10550 9000
Connection ~ 10750 9000
Wire Wire Line
	10750 9000 10650 9000
Connection ~ 10850 9000
Wire Wire Line
	10850 9000 10750 9000
$Comp
L Device:C C?
U 1 1 6149D7AA
P 10850 4050
AR Path="/6149D7AA" Ref="C?"  Part="1" 
AR Path="/6267658C/6149D7AA" Ref="C?"  Part="1" 
AR Path="/5F0550B0/6149D7AA" Ref="C8"  Part="1" 
F 0 "C8" H 10965 4096 50  0000 L CNN
F 1 "100n" H 10965 4005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 10888 3900 50  0001 C CNN
F 3 "~" H 10850 4050 50  0001 C CNN
F 4 "C49678" H 10850 4050 50  0001 C CNN "LCSC Part"
	1    10850 4050
	1    0    0    -1  
$EndComp
Text GLabel 11600 3800 1    50   Input ~ 0
VCC
Wire Wire Line
	11600 3900 11600 3800
Connection ~ 10850 3900
Connection ~ 11600 3900
Wire Wire Line
	11400 4300 11400 4200
Connection ~ 11400 4200
Wire Wire Line
	10750 4850 10650 4850
Connection ~ 10150 4850
Wire Wire Line
	10150 4850 10050 4850
Connection ~ 10250 4850
Wire Wire Line
	10250 4850 10150 4850
Connection ~ 10350 4850
Wire Wire Line
	10350 4850 10250 4850
Connection ~ 10450 4850
Wire Wire Line
	10450 4850 10350 4850
Connection ~ 10550 4850
Wire Wire Line
	10550 4850 10450 4850
Connection ~ 10650 4850
Wire Wire Line
	10650 4850 10550 4850
Wire Wire Line
	10050 4850 9850 4850
Wire Wire Line
	9850 4850 9850 3900
Wire Wire Line
	9850 3900 10850 3900
Connection ~ 10050 4850
Text GLabel 11400 4300 3    50   Input ~ 0
GND
Wire Wire Line
	10850 3900 11250 3900
Wire Wire Line
	10850 4200 11250 4200
Wire Wire Line
	11600 3900 12000 3900
$Comp
L Device:C C?
U 1 1 614EB0DA
P 11250 4050
AR Path="/614EB0DA" Ref="C?"  Part="1" 
AR Path="/6267658C/614EB0DA" Ref="C?"  Part="1" 
AR Path="/5F0550B0/614EB0DA" Ref="C9"  Part="1" 
F 0 "C9" H 11365 4096 50  0000 L CNN
F 1 "100n" H 11365 4005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 11288 3900 50  0001 C CNN
F 3 "~" H 11250 4050 50  0001 C CNN
F 4 "C49678" H 11250 4050 50  0001 C CNN "LCSC Part"
	1    11250 4050
	1    0    0    -1  
$EndComp
Connection ~ 11250 3900
Wire Wire Line
	11250 3900 11600 3900
Connection ~ 11250 4200
Wire Wire Line
	11250 4200 11400 4200
$Comp
L Device:C C?
U 1 1 614EB579
P 12000 4050
AR Path="/614EB579" Ref="C?"  Part="1" 
AR Path="/6267658C/614EB579" Ref="C?"  Part="1" 
AR Path="/5F0550B0/614EB579" Ref="C11"  Part="1" 
F 0 "C11" H 12115 4096 50  0000 L CNN
F 1 "100n" H 12115 4005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 12038 3900 50  0001 C CNN
F 3 "~" H 12000 4050 50  0001 C CNN
F 4 "C49678" H 12000 4050 50  0001 C CNN "LCSC Part"
	1    12000 4050
	1    0    0    -1  
$EndComp
Text GLabel 12200 5350 2    50   Output ~ 0
~FPUDSACK1
Text GLabel 12200 5250 2    50   Output ~ 0
~FPUDSACK0
NoConn ~ 9000 6000
Text GLabel 9000 5600 0    50   Input ~ 0
XR~W
Text GLabel 3650 7450 3    50   Input ~ 0
GND
Wire Wire Line
	3650 7200 3650 7450
Text Label 6500 2900 0    50   ~ 0
CIIN
Wire Wire Line
	5950 2400 7200 2400
Wire Wire Line
	5950 2500 7750 2500
Wire Wire Line
	5950 2900 7200 2900
$Comp
L Device:R_Pack04 RN4
U 1 1 621CF349
P 14350 5450
F 0 "RN4" V 13933 5450 50  0000 C CNN
F 1 "10K" V 14024 5450 50  0000 C CNN
F 2 "Resistor_SMD:R_Array_Convex_4x0603" V 14625 5450 50  0001 C CNN
F 3 "~" H 14350 5450 50  0001 C CNN
F 4 "C29718" V 14350 5450 50  0001 C CNN "LCSC Part"
F 5 "3550050" V 14350 5450 50  0001 C CNN "Farnell Order No"
	1    14350 5450
	0    1    1    0   
$EndComp
$Comp
L Device:R_Pack04 RN5
U 1 1 621F53FF
P 14350 6200
F 0 "RN5" V 13933 6200 50  0000 C CNN
F 1 "10K" V 14024 6200 50  0000 C CNN
F 2 "Resistor_SMD:R_Array_Convex_4x0603" V 14625 6200 50  0001 C CNN
F 3 "~" H 14350 6200 50  0001 C CNN
F 4 "C29718" V 14350 6200 50  0001 C CNN "LCSC Part"
	1    14350 6200
	0    1    1    0   
$EndComp
$Comp
L Device:R_Pack04 RN6
U 1 1 62208ABA
P 14350 6850
F 0 "RN6" V 13933 6850 50  0000 C CNN
F 1 "10K" V 14024 6850 50  0000 C CNN
F 2 "Resistor_SMD:R_Array_Convex_4x0603" V 14625 6850 50  0001 C CNN
F 3 "~" H 14350 6850 50  0001 C CNN
F 4 "C29718" V 14350 6850 50  0001 C CNN "LCSC Part"
	1    14350 6850
	0    1    -1   0   
$EndComp
$Comp
L Device:R_Pack04 RN7
U 1 1 6221BEC6
P 14350 7600
F 0 "RN7" V 13933 7600 50  0000 C CNN
F 1 "10K" V 14024 7600 50  0000 C CNN
F 2 "Resistor_SMD:R_Array_Convex_4x0603" V 14625 7600 50  0001 C CNN
F 3 "~" H 14350 7600 50  0001 C CNN
F 4 "C29718" V 14350 7600 50  0001 C CNN "LCSC Part"
	1    14350 7600
	0    1    -1   0   
$EndComp
Wire Wire Line
	14150 5250 13550 5250
Wire Wire Line
	14150 5350 13550 5350
Wire Wire Line
	14150 5450 13550 5450
Wire Wire Line
	14150 5550 13550 5550
Wire Wire Line
	14150 6000 13550 6000
Wire Wire Line
	14150 6100 13550 6100
Wire Wire Line
	14150 6200 13550 6200
Wire Wire Line
	14150 6300 13550 6300
Wire Wire Line
	14150 6750 13550 6750
Wire Wire Line
	14150 6850 13550 6850
Wire Wire Line
	14150 6950 13550 6950
Wire Wire Line
	14150 7050 13550 7050
Wire Wire Line
	14150 7500 13550 7500
Wire Wire Line
	14150 7600 13550 7600
Wire Wire Line
	14150 7700 13550 7700
Wire Wire Line
	14150 7800 13550 7800
Text Label 13550 5250 0    50   ~ 0
D15
Text Label 13550 5350 0    50   ~ 0
D14
Text Label 13550 5450 0    50   ~ 0
D13
Text Label 13550 5550 0    50   ~ 0
D12
Text Label 13550 6000 0    50   ~ 0
D11
Text Label 13550 6100 0    50   ~ 0
D10
Text Label 13550 6200 0    50   ~ 0
D9
Text Label 13550 6300 0    50   ~ 0
D8
Text Label 13550 6750 0    50   ~ 0
D7
Text Label 13550 6950 0    50   ~ 0
D6
Text Label 13550 6850 0    50   ~ 0
D5
Text Label 13550 7050 0    50   ~ 0
D4
Text Label 13550 7500 0    50   ~ 0
D3
Text Label 13550 7600 0    50   ~ 0
D2
Text Label 13550 7700 0    50   ~ 0
D1
Text Label 13550 7800 0    50   ~ 0
D0
Entry Wire Line
	13450 5350 13550 5250
Entry Wire Line
	13450 5450 13550 5350
Entry Wire Line
	13450 5550 13550 5450
Entry Wire Line
	13450 5650 13550 5550
Entry Wire Line
	13450 6100 13550 6000
Entry Wire Line
	13450 6200 13550 6100
Entry Wire Line
	13450 6300 13550 6200
Entry Wire Line
	13450 6400 13550 6300
Entry Wire Line
	13450 6850 13550 6750
Entry Wire Line
	13450 6950 13550 6850
Entry Wire Line
	13450 7050 13550 6950
Entry Wire Line
	13450 7150 13550 7050
Entry Wire Line
	13450 7600 13550 7500
Entry Wire Line
	13450 7700 13550 7600
Entry Wire Line
	13450 7800 13550 7700
Entry Wire Line
	13450 7900 13550 7800
Wire Bus Line
	13450 8750 12600 8750
Wire Wire Line
	14550 5250 14550 5350
Connection ~ 14550 5350
Wire Wire Line
	14550 5350 14550 5450
Connection ~ 14550 5450
Wire Wire Line
	14550 5450 14550 5550
Connection ~ 14550 5550
Wire Wire Line
	14550 5550 14550 6000
Connection ~ 14550 6000
Wire Wire Line
	14550 6000 14550 6100
Connection ~ 14550 6100
Wire Wire Line
	14550 6100 14550 6200
Connection ~ 14550 6200
Wire Wire Line
	14550 6200 14550 6300
Connection ~ 14550 6300
Wire Wire Line
	14550 6300 14550 6750
Connection ~ 14550 6750
Wire Wire Line
	14550 6750 14550 6850
Connection ~ 14550 6850
Wire Wire Line
	14550 6850 14550 6950
Connection ~ 14550 6950
Wire Wire Line
	14550 6950 14550 7050
Connection ~ 14550 7050
Wire Wire Line
	14550 7050 14550 7500
Connection ~ 14550 7500
Wire Wire Line
	14550 7500 14550 7600
Connection ~ 14550 7600
Wire Wire Line
	14550 7600 14550 7700
Connection ~ 14550 7700
Wire Wire Line
	14550 7700 14550 7800
Wire Wire Line
	14550 5250 14550 5000
Wire Wire Line
	14550 5000 14800 5000
Connection ~ 14550 5250
Text GLabel 14800 5000 2    50   Input ~ 0
VCC
Connection ~ 11600 4200
Wire Wire Line
	11600 4200 12000 4200
Wire Wire Line
	11600 4200 11400 4200
$Comp
L Device:C C?
U 1 1 6149D7BA
P 11600 4050
AR Path="/6149D7BA" Ref="C?"  Part="1" 
AR Path="/6267658C/6149D7BA" Ref="C?"  Part="1" 
AR Path="/5F0550B0/6149D7BA" Ref="C10"  Part="1" 
F 0 "C10" H 11715 4096 50  0000 L CNN
F 1 "10u" H 11715 4005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 11638 3900 50  0001 C CNN
F 3 "~" H 11600 4050 50  0001 C CNN
F 4 "C15850" H 11600 4050 50  0001 C CNN "LCSC Part"
	1    11600 4050
	1    0    0    -1  
$EndComp
Text GLabel 8200 4850 1    50   Input ~ 0
VCC
Wire Wire Line
	8200 5050 8200 6150
Text Label 8200 5700 1    50   ~ 0
FPU_A0
Wire Notes Line
	13300 4650 15150 4650
Wire Notes Line
	15150 4650 15150 8300
Wire Notes Line
	15150 8300 13300 8300
Wire Notes Line
	13300 8300 13300 4650
Text Notes 13350 4750 0    50   ~ 0
FIT IF REQUIRED FOR STABILITY
Wire Wire Line
	11800 5250 12200 5250
Wire Wire Line
	12200 5350 12050 5350
$Comp
L Device:R R2
U 1 1 62806D79
P 11800 4750
F 0 "R2" H 11870 4796 50  0000 L CNN
F 1 "2k2" H 11870 4705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 11730 4750 50  0001 C CNN
F 3 "~" H 11800 4750 50  0001 C CNN
	1    11800 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 62807EC1
P 12050 4750
F 0 "R3" H 12120 4796 50  0000 L CNN
F 1 "2k2" H 12120 4705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 11980 4750 50  0001 C CNN
F 3 "~" H 12050 4750 50  0001 C CNN
	1    12050 4750
	1    0    0    -1  
$EndComp
Text GLabel 11800 4600 1    50   Input ~ 0
VCC
Text GLabel 12050 4600 1    50   Input ~ 0
VCC
Wire Wire Line
	11800 4900 11800 5250
Connection ~ 11800 5250
Connection ~ 12050 5350
Wire Wire Line
	12050 5350 11800 5350
Wire Wire Line
	12050 4900 12050 5350
$Comp
L Device:Jumper_NC_Small JP2
U 1 1 6294FCF3
P 7300 2400
F 0 "JP2" H 7300 2612 50  0000 C CNN
F 1 "Jumper_NC_Small" H 7300 2521 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_RoundedPad1.0x1.5mm_DAVID" H 7300 2400 50  0001 C CNN
F 3 "~" H 7300 2400 50  0001 C CNN
	1    7300 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NC_Small JP4
U 1 1 62950A76
P 7850 2500
F 0 "JP4" H 7850 2712 50  0000 C CNN
F 1 "Jumper_NC_Small" H 7850 2621 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_RoundedPad1.0x1.5mm_DAVID" H 7850 2500 50  0001 C CNN
F 3 "~" H 7850 2500 50  0001 C CNN
	1    7850 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NC_Small JP3
U 1 1 6295174D
P 7300 2900
F 0 "JP3" H 7300 3112 50  0000 C CNN
F 1 "Jumper_NC_Small" H 7300 3021 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_RoundedPad1.0x1.5mm_DAVID" H 7300 2900 50  0001 C CNN
F 3 "~" H 7300 2900 50  0001 C CNN
	1    7300 2900
	1    0    0    -1  
$EndComp
Text GLabel 8500 2000 1    50   Input ~ 0
VCC
Wire Wire Line
	7400 2400 8500 2400
Wire Wire Line
	8500 2400 8500 2000
Wire Wire Line
	7950 2500 8500 2500
Wire Wire Line
	8500 2500 8500 2400
Connection ~ 8500 2400
Wire Wire Line
	7400 2900 8500 2900
Wire Wire Line
	8500 2900 8500 2500
Connection ~ 8500 2500
$Comp
L Device:Jumper_NC_Small JP5
U 1 1 62A3D346
P 8200 4950
F 0 "JP5" V 8246 4903 50  0000 R CNN
F 1 "Jumper_NC_Small" V 8155 4903 50  0000 R CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_RoundedPad1.0x1.5mm_DAVID" H 8200 4950 50  0001 C CNN
F 3 "~" H 8200 4950 50  0001 C CNN
	1    8200 4950
	0    -1   -1   0   
$EndComp
$Comp
L Device:Jumper_NC_Small JP6
U 1 1 62A996EA
P 8500 4950
F 0 "JP6" V 8546 4903 50  0000 R CNN
F 1 "Jumper_NC_Small" V 8455 4903 50  0000 R CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_RoundedPad1.0x1.5mm_DAVID" H 8500 4950 50  0001 C CNN
F 3 "~" H 8500 4950 50  0001 C CNN
	1    8500 4950
	0    -1   -1   0   
$EndComp
Text GLabel 1750 1800 1    50   Input ~ 0
~STERM
Wire Wire Line
	1750 1800 1750 2500
Text GLabel 13950 3400 0    50   Output ~ 0
~FPUDSACK1
Text GLabel 13950 3500 0    50   Output ~ 0
~FPUDSACK0
Wire Bus Line
	8000 5850 8000 6450
Wire Bus Line
	13450 5150 13450 8750
Wire Bus Line
	6650 3450 6650 6600
Wire Bus Line
	12600 5600 12600 8750
Wire Bus Line
	2250 3400 2250 6700
Text Notes 13500 3700 0    50   ~ 0
For possible expansion use
$Comp
L Connector:Conn_01x02_Female J6
U 1 1 61EA5B63
P 14150 3400
F 0 "J6" H 14178 3376 50  0000 L CNN
F 1 "Conn_01x02_Female" H 14178 3285 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 14150 3400 50  0001 C CNN
F 3 "~" H 14150 3400 50  0001 C CNN
	1    14150 3400
	1    0    0    -1  
$EndComp
$EndSCHEMATC
