EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 5
Title "David's Falcon Booster 1"
Date "2022-01-15"
Rev "5"
Comp "D Henderson"
Comment1 "Copyright 2022 D Henderson"
Comment2 "Released under the terms of the GPLv2"
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	10850 2550 10850 2700
Text GLabel 10850 2800 3    50   Output ~ 0
GND
Text GLabel 12150 2800 3    50   Output ~ 0
VCC
Wire Wire Line
	2250 1900 2250 1950
Text GLabel 2250 2050 3    50   Output ~ 0
GND
Text GLabel 850  1250 2    50   Input ~ 0
GND
Text GLabel 850  900  2    50   Input ~ 0
VCC
Wire Wire Line
	800  850  800  900 
Wire Wire Line
	800  900  850  900 
Wire Wire Line
	850  1250 800  1250
Wire Wire Line
	800  1250 800  1200
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5FC3CFA2
P 800 850
F 0 "#FLG01" H 800 925 50  0001 C CNN
F 1 "PWR_FLAG" H 800 1023 50  0000 C CNN
F 2 "" H 800 850 50  0001 C CNN
F 3 "~" H 800 850 50  0001 C CNN
	1    800  850 
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5DD49C7C
P 800 1200
F 0 "#FLG02" H 800 1275 50  0001 C CNN
F 1 "PWR_FLAG" H 800 1373 50  0000 C CNN
F 2 "" H 800 1200 50  0001 C CNN
F 3 "~" H 800 1200 50  0001 C CNN
	1    800  1200
	-1   0    0    -1  
$EndComp
Text Notes 11750 2250 1    50   ~ 0
MFP INT FLAG
Text Notes 11650 2250 1    50   ~ 0
MFP INT INHIBIT
Text Notes 11350 2250 1    50   ~ 0
HIGH PRIORITY BUS GRANT\n
Text Notes 11150 2250 1    50   ~ 0
BUS GRANT OUT TO LOWER DEVICES
Text Notes 3550 1600 1    50   ~ 0
FROM GALS
Text Notes 2950 1600 1    50   ~ 0
FROM GALS
$Comp
L david:Conn_01x50 J1
U 1 1 5F519F09
P 4150 1700
F 0 "J1" V 4367 1146 50  0000 C CNN
F 1 "Conn_01x50" V 4276 1146 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x25_P2.54mm_Vertical" H 4150 1700 50  0001 C CNN
F 3 "~" H 4150 1700 50  0001 C CNN
	1    4150 1700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2350 1900 2350 1950
Wire Wire Line
	2350 1950 2250 1950
Connection ~ 2250 1950
Wire Wire Line
	2250 1950 2250 2050
NoConn ~ 7150 1900
Text Label 6350 2500 3    50   ~ 0
A7
Text Label 6450 2500 3    50   ~ 0
A6
Text Label 6550 2500 3    50   ~ 0
A5
Text Label 6650 2500 3    50   ~ 0
A4
Text Label 6850 2500 3    50   ~ 0
A2
Text Label 6950 2500 3    50   ~ 0
A1
Text Label 6750 2500 3    50   ~ 0
A3
Text Label 6250 2500 3    50   ~ 0
A8
Text Label 6150 2500 3    50   ~ 0
A9
Text Label 4950 2500 3    50   ~ 0
A21
Text Label 5150 2500 3    50   ~ 0
A19
Text Label 5050 2500 3    50   ~ 0
A20
Text Label 4850 2500 3    50   ~ 0
A22
Text Label 4750 2500 3    50   ~ 0
A23
Text Label 5250 2500 3    50   ~ 0
A18
Text Label 5350 2500 3    50   ~ 0
A17
Text Label 5850 2500 3    50   ~ 0
A12
Text Label 6050 2500 3    50   ~ 0
A10
Text Label 5950 2500 3    50   ~ 0
A11
Text Label 5750 2500 3    50   ~ 0
A13
Text Label 5650 2500 3    50   ~ 0
A14
Text Label 5550 2500 3    50   ~ 0
A15
Text Label 5450 2500 3    50   ~ 0
A16
Wire Wire Line
	6050 1900 6050 2700
Wire Wire Line
	5950 1900 5950 2700
Wire Wire Line
	6950 1900 6950 2700
Wire Wire Line
	6850 1900 6850 2700
Wire Wire Line
	6750 2700 6750 1900
Wire Wire Line
	6650 1900 6650 2700
Wire Wire Line
	6550 1900 6550 2700
Wire Wire Line
	6450 1900 6450 2700
Wire Wire Line
	6350 1900 6350 2700
Wire Wire Line
	6250 1900 6250 2700
Wire Wire Line
	6150 1900 6150 2700
Wire Wire Line
	4750 1900 4750 2700
Wire Wire Line
	4850 1900 4850 2700
Wire Wire Line
	4950 1900 4950 2700
Wire Wire Line
	5050 1900 5050 2700
Wire Wire Line
	5150 1900 5150 2700
Wire Wire Line
	5250 1900 5250 2700
Wire Wire Line
	5350 1900 5350 2700
Wire Wire Line
	5450 1900 5450 2700
Wire Wire Line
	5550 1900 5550 2700
Wire Wire Line
	5650 1900 5650 2700
Wire Wire Line
	5850 1900 5850 2700
Wire Wire Line
	5750 1900 5750 2700
Wire Wire Line
	4650 1900 4550 1900
Wire Wire Line
	4650 1900 4650 2100
Connection ~ 4650 1900
Text GLabel 4650 2100 3    50   Output ~ 0
VCC
Wire Wire Line
	4450 1900 4450 2100
Wire Wire Line
	2650 1900 2650 2700
Wire Wire Line
	2550 1900 2550 2550
Wire Wire Line
	2450 1900 2450 2300
NoConn ~ 3450 1900
$Comp
L Connector_Generic:Conn_01x30 J3
U 1 1 60E1D324
P 10650 2350
F 0 "J3" V 10775 2296 50  0000 C CNN
F 1 "Conn_01x30" V 10866 2296 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x15_P2.54mm_Vertical" H 10650 2350 50  0001 C CNN
F 3 "~" H 10650 2350 50  0001 C CNN
	1    10650 2350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	12150 2550 12150 2700
Wire Wire Line
	11950 2550 11950 2700
Wire Wire Line
	11950 2700 12050 2700
Connection ~ 12150 2700
Wire Wire Line
	12150 2700 12150 2800
Wire Wire Line
	12050 2550 12050 2700
Connection ~ 12050 2700
Wire Wire Line
	12050 2700 12150 2700
Wire Wire Line
	9250 2550 9250 3650
Wire Wire Line
	9350 2550 9350 3650
Wire Wire Line
	9450 2550 9450 3650
Wire Wire Line
	9550 2550 9550 3650
Wire Wire Line
	9650 2550 9650 3650
Wire Wire Line
	9750 2550 9750 3650
Wire Wire Line
	9850 2550 9850 3650
Wire Wire Line
	9950 2550 9950 3650
Wire Wire Line
	10050 2550 10050 3650
Wire Wire Line
	10150 2550 10150 3650
Wire Wire Line
	10250 2550 10250 3650
Wire Wire Line
	10350 2550 10350 3650
Wire Wire Line
	10450 2550 10450 3650
Wire Wire Line
	10550 2550 10550 3650
Wire Wire Line
	10650 2550 10650 3650
Wire Wire Line
	10750 2550 10750 3650
Text Label 10450 3150 3    50   ~ 0
D18
Text Label 10250 3150 3    50   ~ 0
D20
Text Label 10050 3150 3    50   ~ 0
D22
Text Label 9850 3150 3    50   ~ 0
D24
Text Label 9650 3150 3    50   ~ 0
D26
Text Label 9450 3150 3    50   ~ 0
D28
Text Label 9250 3150 3    50   ~ 0
D30
Text Label 9350 3150 3    50   ~ 0
D29
Text Label 9550 3150 3    50   ~ 0
D27
Text Label 9750 3150 3    50   ~ 0
D25
Text Label 9950 3150 3    50   ~ 0
D23
Text Label 10150 3150 3    50   ~ 0
D21
Text Label 10350 3150 3    50   ~ 0
D19
Text Label 10550 3150 3    50   ~ 0
D17
Text Label 10750 3150 3    50   ~ 0
D31
Entry Wire Line
	9150 3750 9250 3650
Entry Wire Line
	9250 3750 9350 3650
Entry Wire Line
	9350 3750 9450 3650
Entry Wire Line
	9450 3750 9550 3650
Entry Wire Line
	9550 3750 9650 3650
Entry Wire Line
	9650 3750 9750 3650
Entry Wire Line
	9750 3750 9850 3650
Entry Wire Line
	9850 3750 9950 3650
Entry Wire Line
	9950 3750 10050 3650
Entry Wire Line
	10050 3750 10150 3650
Entry Wire Line
	10150 3750 10250 3650
Entry Wire Line
	10250 3750 10350 3650
Entry Wire Line
	10350 3750 10450 3650
Entry Wire Line
	10450 3750 10550 3650
Entry Wire Line
	10550 3750 10650 3650
Entry Wire Line
	10650 3750 10750 3650
Connection ~ 10850 2700
Wire Wire Line
	10850 2700 10850 2800
Wire Wire Line
	10950 2550 10950 2700
Connection ~ 10950 2700
Wire Wire Line
	10950 2700 10850 2700
Wire Wire Line
	11050 2550 11050 2700
Wire Wire Line
	11050 2700 10950 2700
Text Notes 3650 1600 1    50   ~ 0
LOW PRIORITY BUS GRANT
Text Notes 11250 2250 1    50   ~ 0
EXPANSION INT 1
Text Notes 11850 2250 1    50   ~ 0
EXPANSION INT 3
Wire Wire Line
	11850 3100 11850 2550
Text GLabel 4450 2100 3    50   Output ~ 0
XCPUCLK
Text GLabel 7550 2800 2    50   BiDi ~ 0
A[0..31]
Entry Wire Line
	6850 2800 6950 2700
Entry Wire Line
	6750 2800 6850 2700
Entry Wire Line
	6650 2800 6750 2700
Entry Wire Line
	6550 2800 6650 2700
Entry Wire Line
	6450 2800 6550 2700
Entry Wire Line
	6350 2800 6450 2700
Entry Wire Line
	6250 2800 6350 2700
Entry Wire Line
	6150 2800 6250 2700
Entry Wire Line
	6050 2800 6150 2700
Entry Wire Line
	5950 2800 6050 2700
Entry Wire Line
	5850 2800 5950 2700
Entry Wire Line
	5750 2800 5850 2700
Entry Wire Line
	5650 2800 5750 2700
Entry Wire Line
	5550 2800 5650 2700
Entry Wire Line
	5450 2800 5550 2700
Entry Wire Line
	5350 2800 5450 2700
Entry Wire Line
	5250 2800 5350 2700
Entry Wire Line
	5150 2800 5250 2700
Entry Wire Line
	5050 2800 5150 2700
Entry Wire Line
	4950 2800 5050 2700
Entry Wire Line
	4850 2800 4950 2700
Entry Wire Line
	4750 2800 4850 2700
Entry Wire Line
	4650 2800 4750 2700
$Sheet
S 12800 5050 3100 1000
U 5F0550B0
F0 "68030" 50
F1 "68030.sch" 50
$EndSheet
Text Notes 13050 5800 0    394  ~ 0
> 68030
Text GLabel 2300 5150 0    50   Output ~ 0
~IPL2
Text GLabel 2300 5000 0    50   Output ~ 0
~IPL1
Text GLabel 2300 4850 0    50   Output ~ 0
~IPL0
Text GLabel 2300 4700 0    50   BiDi ~ 0
~BERR
Text GLabel 2300 4550 0    50   BiDi ~ 0
~XHALT
Text GLabel 900  4400 0    50   BiDi ~ 0
~RST
Text GLabel 2300 4250 0    50   BiDi ~ 0
~XBR
Text GLabel 2300 2400 0    50   BiDi ~ 0
~XBGK
Text GLabel 2300 2550 0    50   BiDi ~ 0
~XAS
Text GLabel 2300 2700 0    50   Output ~ 0
~LDS
Text GLabel 2300 2850 0    50   Output ~ 0
~UDS
Text GLabel 2300 3600 0    50   BiDi ~ 0
BMODE
Text GLabel 2300 3150 0    50   Output ~ 0
~XDTACK
Text GLabel 2300 3000 0    50   Input ~ 0
XR~W
Wire Wire Line
	2300 2400 2450 2400
Wire Wire Line
	2300 2550 2550 2550
Wire Wire Line
	2300 2700 2650 2700
Wire Wire Line
	2750 2850 2300 2850
Wire Wire Line
	2750 1900 2750 2850
Wire Wire Line
	2300 3000 2850 3000
Wire Wire Line
	2850 1900 2850 3000
Wire Wire Line
	2300 3150 2950 3150
Wire Wire Line
	2950 1900 2950 3150
Wire Wire Line
	3050 1900 3050 3300
Wire Wire Line
	3150 1900 3150 3400
Wire Wire Line
	3250 1900 3250 3500
Wire Wire Line
	2300 3600 3350 3600
Wire Wire Line
	3350 1900 3350 3600
Wire Wire Line
	3750 4250 2450 4250
Wire Wire Line
	2300 4700 4050 4700
Wire Wire Line
	2300 5000 4250 5000
Wire Wire Line
	7050 1900 7050 4000
Wire Wire Line
	3850 1900 3850 4400
Wire Wire Line
	3950 1900 3950 4550
Wire Wire Line
	4050 1900 4050 4700
Wire Wire Line
	4150 1900 4150 4850
Wire Wire Line
	4250 1900 4250 5000
Wire Wire Line
	4350 1900 4350 5150
Text Notes 5400 3700 0    50   ~ 0
NOT USED
Wire Notes Line
	5350 3550 5350 4200
Wire Notes Line
	5350 4200 6100 4200
Wire Wire Line
	11350 2550 11350 3650
Wire Wire Line
	11150 2550 11150 3650
Wire Wire Line
	11650 2550 11650 3300
Wire Wire Line
	11750 2550 11750 3200
Text Notes 12800 3300 0    50   ~ 0
NOT USED
Wire Notes Line
	13500 3000 12400 3000
Text Label 10650 3150 3    50   ~ 0
D16
Text Notes 16000 10550 2    50   ~ 0
Max workable size is the header\nzone of 110x52 plus:-\n13mm left;\n12mm up;\n25 right.
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J4
U 1 1 5F9451AC
P 14150 1950
F 0 "J4" H 14200 2267 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 14200 2176 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 14150 1950 50  0001 C CNN
F 3 "~" H 14150 1950 50  0001 C CNN
	1    14150 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	14450 1850 14450 1950
Connection ~ 14450 1950
Wire Wire Line
	14450 1950 14450 2050
Connection ~ 14450 2050
Wire Wire Line
	14450 2050 14450 2250
Wire Wire Line
	13950 2050 13950 1950
Connection ~ 13950 1850
Wire Wire Line
	13950 1850 13950 1500
Connection ~ 13950 1950
Wire Wire Line
	13950 1950 13950 1850
Text GLabel 14450 2250 3    50   Input ~ 0
GND
Text GLabel 13950 1500 1    50   Input ~ 0
VCC
Text Label 5100 4000 0    50   ~ 0
~IACK
Text Label 6200 4000 0    50   ~ 0
~EXPD
Wire Wire Line
	6050 4000 7050 4000
Text Label 11900 3100 0    50   ~ 0
~XINT3
Text Label 11900 3200 0    50   ~ 0
~MFP_INT
Text Label 11900 3300 0    50   ~ 0
~MFP_IEI
Wire Wire Line
	11850 3100 12500 3100
Wire Wire Line
	11750 3200 12500 3200
Wire Wire Line
	12500 3300 11650 3300
Text GLabel 6550 4750 1    50   Input ~ 0
VCC3
Text GLabel 6000 5450 0    50   Output ~ 0
ENABLE
$Sheet
S 12800 7600 3100 1000
U 5FC0C568
F0 "RAM" 50
F1 "RAM.sch" 50
$EndSheet
Text Notes 13050 8350 0    394  ~ 0
> RAM
NoConn ~ 10150 5100
Wire Wire Line
	10450 4700 10450 4800
Text GLabel 10450 4700 1    50   Input ~ 0
VCC
Text GLabel 10500 5450 3    50   Input ~ 0
GND
Text GLabel 11750 5050 2    50   Output ~ 0
CLKOSC
NoConn ~ 12500 3100
NoConn ~ 12500 3200
NoConn ~ 12500 3300
NoConn ~ 12500 3400
NoConn ~ 5400 4000
NoConn ~ 6050 4000
Text Label 11500 4000 0    50   ~ 0
CPUBGI
Text GLabel 2300 3750 0    50   Output ~ 0
~XBG
Wire Wire Line
	2300 3750 2450 3750
Wire Notes Line
	6100 4200 6100 3550
Wire Notes Line
	6100 3550 5350 3550
NoConn ~ 11550 2550
Wire Wire Line
	11250 2550 11250 3400
Wire Wire Line
	11450 2550 11450 2700
Wire Notes Line
	12400 3000 12400 3500
Wire Notes Line
	13500 3000 13500 3500
Wire Notes Line
	12400 3500 13500 3500
Wire Wire Line
	11250 3400 12500 3400
Text Label 11900 3400 0    50   ~ 0
~XINT1
Text GLabel 8850 3750 0    50   BiDi ~ 0
D[0..31]
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J5
U 1 1 5FC7EE18
P 15050 1950
F 0 "J5" H 15100 2267 50  0000 C CNN
F 1 "Conn_02x02_Odd_Even" H 15100 2176 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x02_P2.54mm_Vertical" H 15050 1950 50  0001 C CNN
F 3 "~" H 15050 1950 50  0001 C CNN
	1    15050 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	15350 1850 15350 1950
Connection ~ 15350 1950
Wire Wire Line
	15350 1950 15350 2050
Connection ~ 15350 2050
Wire Wire Line
	15350 2050 15350 2250
Wire Wire Line
	14850 2050 14850 1950
Connection ~ 14850 1950
Text GLabel 15350 2250 3    50   Input ~ 0
GND
Text GLabel 14850 1500 1    50   Input ~ 0
VCC3
Wire Wire Line
	14850 1500 14850 1950
Text Notes 13050 9650 0    394  ~ 0
> ROM
$Sheet
S 12800 6350 3100 1000
U 5F0FD8AA
F0 "CPLD" 50
F1 "CPLD.sch" 50
$EndSheet
Text Notes 13050 7100 0    394  ~ 0
> CPLD
$Sheet
S 12800 8900 3100 1000
U 608897EB
F0 "ROM" 50
F1 "ROM.sch" 50
$EndSheet
Wire Wire Line
	10750 5050 11000 5050
$Comp
L david:CXO_DIP14_DIP8_DUAL X1
U 1 1 604CAF46
P 10450 5100
F 0 "X1" H 10450 5581 50  0000 C CNN
F 1 "CXO_DIP14_DIP8_DUAL" H 10450 5490 50  0000 C CNN
F 2 "david:Oscillator_DIP-14-DUAL" H 10950 4750 50  0001 C CNN
F 3 "http://cdn-reichelt.de/documents/datenblatt/B400/OSZI.pdf" H 10350 5100 50  0001 C CNN
	1    10450 5100
	1    0    0    -1  
$EndComp
Text GLabel 10400 5450 3    50   Input ~ 0
GND
$Comp
L Device:R_Pack04 RN?
U 1 1 6054D0D6
P 6650 4950
AR Path="/5F0550B0/6054D0D6" Ref="RN?"  Part="1" 
AR Path="/6054D0D6" Ref="RN2"  Part="1" 
F 0 "RN2" V 6233 4950 50  0000 C CNN
F 1 "10K" V 6324 4950 50  0000 C CNN
F 2 "Resistor_SMD:R_Array_Convex_4x0603" V 6925 4950 50  0001 C CNN
F 3 "~" H 6650 4950 50  0001 C CNN
F 4 "C29718" V 6650 4950 50  0001 C CNN "LCSC Part"
	1    6650 4950
	-1   0    0    1   
$EndComp
Text GLabel 8100 5750 2    50   Input ~ 0
GND
Text GLabel 8100 5650 2    50   Input ~ 0
GND
Text GLabel 8100 5550 2    50   Input ~ 0
GND
Text GLabel 8100 5450 2    50   Input ~ 0
GND
Text GLabel 6000 5650 0    50   Output ~ 0
EN_ALTRAM
Text GLabel 6650 4750 1    50   Input ~ 0
VCC3
Text GLabel 6750 4750 1    50   Input ~ 0
VCC3
Text GLabel 6850 4750 1    50   Input ~ 0
VCC3
Wire Wire Line
	2300 4550 3950 4550
Wire Wire Line
	2300 4850 4150 4850
Wire Wire Line
	2300 5150 4350 5150
$Comp
L Regulator_Linear:LM1117-3.3 U1
U 1 1 60F39A71
P 6300 6700
AR Path="/60F39A71" Ref="U1"  Part="1" 
AR Path="/5F0FD8AA/60F39A71" Ref="U?"  Part="1" 
F 0 "U1" H 6300 6942 50  0000 C CNN
F 1 "LM1117-3.3" H 6300 6851 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 6300 6700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm1117.pdf" H 6300 6700 50  0001 C CNN
F 4 "" H 6300 6700 50  0001 C CNN "LCSC Part"
F 5 "1467779" H 6300 6700 50  0001 C CNN "Farnell Order Code"
	1    6300 6700
	1    0    0    -1  
$EndComp
Text GLabel 6300 7100 3    50   Input ~ 0
GND
Text GLabel 5550 6700 0    50   Input ~ 0
VCC
$Comp
L Device:C C2
U 1 1 60F39A7B
P 7200 6850
AR Path="/60F39A7B" Ref="C2"  Part="1" 
AR Path="/5F0FD8AA/60F39A7B" Ref="C?"  Part="1" 
F 0 "C2" H 7315 6896 50  0000 L CNN
F 1 "100n" H 7315 6805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 7238 6700 50  0001 C CNN
F 3 "~" H 7200 6850 50  0001 C CNN
	1    7200 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 7000 7200 7000
Wire Wire Line
	6600 6700 7200 6700
Wire Wire Line
	7200 6700 7800 6700
Connection ~ 7200 6700
$Comp
L Device:C C1
U 1 1 60F39A85
P 5700 6850
AR Path="/60F39A85" Ref="C1"  Part="1" 
AR Path="/5F0FD8AA/60F39A85" Ref="C?"  Part="1" 
F 0 "C1" H 5815 6896 50  0000 L CNN
F 1 "10u" H 5815 6805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 5738 6700 50  0001 C CNN
F 3 "~" H 5700 6850 50  0001 C CNN
	1    5700 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 7000 6300 7000
Connection ~ 6300 7000
Wire Wire Line
	6000 6700 5700 6700
Connection ~ 5700 6700
Wire Wire Line
	5700 6700 5550 6700
Wire Wire Line
	6300 7000 6300 7100
Text GLabel 7800 6700 2    50   Output ~ 0
VCC3
Text GLabel 6000 5550 0    50   Output ~ 0
EN_FLASH
Text GLabel 6000 5750 0    50   Output ~ 0
OPTION
Wire Wire Line
	10750 5150 11000 5150
Wire Wire Line
	11000 5150 11000 5050
Connection ~ 11000 5050
Wire Wire Line
	11000 5050 11450 5050
$Comp
L Device:R_Pack04 RN?
U 1 1 620A42F7
P 6200 5550
AR Path="/5F0550B0/620A42F7" Ref="RN?"  Part="1" 
AR Path="/620A42F7" Ref="RN1"  Part="1" 
F 0 "RN1" V 5783 5550 50  0000 C CNN
F 1 "10K" V 5874 5550 50  0000 C CNN
F 2 "Resistor_SMD:R_Array_Convex_4x0603" V 6475 5550 50  0001 C CNN
F 3 "~" H 6200 5550 50  0001 C CNN
F 4 "C29718" V 6200 5550 50  0001 C CNN "LCSC Part"
	1    6200 5550
	0    -1   -1   0   
$EndComp
Text Label 6950 5450 0    50   ~ 0
ENABLE_J
Text Label 6950 5650 0    50   ~ 0
EN_ALTRAM_J
Text Label 6950 5750 0    50   ~ 0
OPTION_J
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J2
U 1 1 6212FD7E
P 7800 5650
F 0 "J2" H 7850 5225 50  0000 C CNN
F 1 "Conn_02x04_Odd_Even" H 7850 5316 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 7800 5650 50  0001 C CNN
F 3 "~" H 7800 5650 50  0001 C CNN
	1    7800 5650
	1    0    0    1   
$EndComp
Text Label 6950 5550 0    50   ~ 0
EN_FLASH_J
Wire Wire Line
	6400 5450 6550 5450
Wire Wire Line
	6400 5550 6650 5550
Wire Wire Line
	6400 5650 6750 5650
Wire Wire Line
	6400 5750 6850 5750
Wire Wire Line
	6550 5150 6550 5450
Connection ~ 6550 5450
Wire Wire Line
	6550 5450 7600 5450
Wire Wire Line
	6650 5150 6650 5550
Connection ~ 6650 5550
Wire Wire Line
	6650 5550 7600 5550
Wire Wire Line
	6750 5150 6750 5650
Connection ~ 6750 5650
Wire Wire Line
	6750 5650 7600 5650
Wire Wire Line
	6850 5150 6850 5750
Connection ~ 6850 5750
Wire Wire Line
	6850 5750 7600 5750
$Comp
L Device:C C24
U 1 1 61238D91
P 9600 5100
AR Path="/61238D91" Ref="C24"  Part="1" 
AR Path="/6267658C/61238D91" Ref="C?"  Part="1" 
AR Path="/5F0550B0/61238D91" Ref="C?"  Part="1" 
F 0 "C24" H 9715 5146 50  0000 L CNN
F 1 "100n" H 9715 5055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 9638 4950 50  0001 C CNN
F 3 "~" H 9600 5100 50  0001 C CNN
F 4 "C49678" H 9600 5100 50  0001 C CNN "LCSC Part"
	1    9600 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 5400 10400 5450
Wire Wire Line
	10500 5450 10500 5400
Wire Wire Line
	10400 5450 9600 5450
Wire Wire Line
	9600 5450 9600 5250
Wire Wire Line
	9600 4950 9600 4700
Wire Wire Line
	9600 4700 10450 4700
Text GLabel 11450 2700 3    50   Output ~ 0
KHZ500
Text Notes 4200 7050 0    50   ~ 0
Power requirements:\n2x RAM chips @ 80mA\n1x CPLD @ ~~200mA\n4x buffers @  ~~30mA\n1x Flash @ ~~50mA\nTotal: ~~530mA + addons\n
Wire Notes Line
	4100 6400 8150 6400
Wire Notes Line
	8150 6400 8150 7450
Wire Notes Line
	8150 7450 4100 7450
Wire Notes Line
	4100 7450 4100 6400
Text Notes 550  11100 0    138  ~ 0
Changes r4 -> r5\n\nComplete:\nFCx must be joined\nOptional pullups on the BUS ARB lines & Reset\nSMD resistors on clocks\nDeclutter FB5 on CPLD\nSecond optional OSC for FPU\nCuttable BGI/BGO bridge\nCorrect FPU lines\nCorrect RAM data lines\nReorder ROM lines\nReduced number of fixed pull-ups: direct to VCC where possible.\n\nRejected:\n6k8 pullups on D31-D16 — passes all tests without\nDedicated expansion bus — insufficient room\n
Text GLabel 2300 3500 0    50   Input ~ 0
FC0
Text GLabel 2300 3300 0    50   Input ~ 0
FC2
Text GLabel 2300 3400 0    50   Input ~ 0
FC1
Wire Wire Line
	3050 3300 2300 3300
Wire Wire Line
	2300 3400 3150 3400
Wire Wire Line
	3250 3500 2300 3500
Wire Wire Line
	11500 4000 11500 3650
Wire Wire Line
	11500 3650 11350 3650
Wire Wire Line
	11150 3650 11000 3650
Wire Wire Line
	11000 3650 11000 4000
$Comp
L Device:R R12
U 1 1 61D8794A
P 700 3500
F 0 "R12" H 770 3546 50  0000 L CNN
F 1 "4k7 OPTION" H 770 3455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 630 3500 50  0001 C CNN
F 3 "~" H 700 3500 50  0001 C CNN
	1    700  3500
	1    0    0    -1  
$EndComp
Text GLabel 700  3350 1    50   Input ~ 0
VCC
$Comp
L Device:R R14
U 1 1 61D90D3F
P 1250 3000
F 0 "R14" H 1320 3046 50  0000 L CNN
F 1 "10k OPTION" H 1320 2955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1180 3000 50  0001 C CNN
F 3 "~" H 1250 3000 50  0001 C CNN
	1    1250 3000
	1    0    0    -1  
$EndComp
Text GLabel 1250 2850 1    50   Input ~ 0
VCC
$Comp
L Device:R R15
U 1 1 61D97FE6
P 1400 3500
F 0 "R15" H 1470 3546 50  0000 L CNN
F 1 "10k OPTION" H 1470 3455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1330 3500 50  0001 C CNN
F 3 "~" H 1400 3500 50  0001 C CNN
	1    1400 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 61D98334
P 1250 2100
F 0 "R13" H 1320 2146 50  0000 L CNN
F 1 "10k OPTION" H 1320 2055 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1180 2100 50  0001 C CNN
F 3 "~" H 1250 2100 50  0001 C CNN
	1    1250 2100
	1    0    0    -1  
$EndComp
Text GLabel 1400 3350 1    50   Input ~ 0
VCC
Text GLabel 1250 1950 1    50   Input ~ 0
VCC
Wire Wire Line
	1250 2250 1250 2300
Wire Wire Line
	1250 2300 2450 2300
Connection ~ 2450 2300
Wire Wire Line
	2450 2300 2450 2400
Wire Wire Line
	2450 3850 2450 3750
Wire Wire Line
	2450 3850 1400 3850
Connection ~ 2450 3750
Wire Wire Line
	2450 3750 3650 3750
Wire Wire Line
	3650 1900 3650 3750
Wire Wire Line
	1400 3850 1400 3650
Wire Wire Line
	3750 1900 3750 4250
Wire Wire Line
	2450 4250 2450 4150
Wire Wire Line
	2450 4150 1250 4150
Wire Wire Line
	1250 4150 1250 3150
Connection ~ 2450 4250
Wire Wire Line
	2450 4250 2300 4250
Wire Wire Line
	3550 4000 5400 4000
Wire Wire Line
	3550 1900 3550 4000
$Comp
L Device:R R?
U 1 1 61EF7FF9
P 11600 5050
AR Path="/5F0FD8AA/61EF7FF9" Ref="R?"  Part="1" 
AR Path="/61EF7FF9" Ref="R16"  Part="1" 
F 0 "R16" V 11393 5050 50  0000 C CNN
F 1 "33R NOMINAL" V 11484 5050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 11530 5050 50  0001 C CNN
F 3 "~" H 11600 5050 50  0001 C CNN
	1    11600 5050
	0    1    1    0   
$EndComp
NoConn ~ 10200 7100
Wire Wire Line
	10500 6700 10500 6800
Text GLabel 10500 6700 1    50   Input ~ 0
VCC
Text GLabel 10550 7450 3    50   Input ~ 0
GND
Text GLabel 11800 7050 2    50   Output ~ 0
FPUCLK
Wire Wire Line
	10800 7050 11050 7050
$Comp
L david:CXO_DIP14_DIP8_DUAL X2
U 1 1 6208A60F
P 10500 7100
F 0 "X2" H 10500 7581 50  0000 C CNN
F 1 "CXO_DIP14_DIP8_DUAL" H 10500 7490 50  0000 C CNN
F 2 "david:Oscillator_DIP-14-DUAL" H 11000 6750 50  0001 C CNN
F 3 "http://cdn-reichelt.de/documents/datenblatt/B400/OSZI.pdf" H 10400 7100 50  0001 C CNN
	1    10500 7100
	1    0    0    -1  
$EndComp
Text GLabel 10450 7450 3    50   Input ~ 0
GND
Wire Wire Line
	10800 7150 11050 7150
Wire Wire Line
	11050 7150 11050 7050
Connection ~ 11050 7050
Wire Wire Line
	11050 7050 11500 7050
$Comp
L Device:C C25
U 1 1 6208A61B
P 9650 7100
AR Path="/6208A61B" Ref="C25"  Part="1" 
AR Path="/6267658C/6208A61B" Ref="C?"  Part="1" 
AR Path="/5F0550B0/6208A61B" Ref="C?"  Part="1" 
F 0 "C25" H 9765 7146 50  0000 L CNN
F 1 "100n" H 9765 7055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 9688 6950 50  0001 C CNN
F 3 "~" H 9650 7100 50  0001 C CNN
F 4 "C49678" H 9650 7100 50  0001 C CNN "LCSC Part"
	1    9650 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 7400 10450 7450
Wire Wire Line
	10550 7450 10550 7400
Wire Wire Line
	10450 7450 9650 7450
Wire Wire Line
	9650 7450 9650 7250
Wire Wire Line
	9650 6950 9650 6700
Wire Wire Line
	9650 6700 10500 6700
$Comp
L Device:R R?
U 1 1 6208A627
P 11650 7050
AR Path="/5F0FD8AA/6208A627" Ref="R?"  Part="1" 
AR Path="/6208A627" Ref="R1"  Part="1" 
F 0 "R1" V 11443 7050 50  0000 C CNN
F 1 "33R NOMINAL" V 11534 7050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 11580 7050 50  0001 C CNN
F 3 "~" H 11650 7050 50  0001 C CNN
	1    11650 7050
	0    1    1    0   
$EndComp
Text Notes 8450 7700 0    50   ~ 0
ONLY POPULATE\nIF NOT USING R18
Wire Notes Line
	8400 6400 12450 6400
Wire Notes Line
	12450 7750 8400 7750
Wire Notes Line
	8400 7750 8400 6400
Wire Notes Line
	12450 6400 12450 7750
Wire Wire Line
	900  4400 1100 4400
Wire Wire Line
	700  3650 700  4200
Wire Wire Line
	700  4200 1100 4200
Wire Wire Line
	1100 4200 1100 4400
Connection ~ 1100 4400
$Comp
L Device:Jumper_NO_Small JP1
U 1 1 6279F010
P 1100 4900
F 0 "JP1" H 1100 5085 50  0000 C CNN
F 1 "Jumper_NO_Small" H 1100 4994 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1100 4900 50  0001 C CNN
F 3 "~" H 1100 4900 50  0001 C CNN
	1    1100 4900
	0    1    1    0   
$EndComp
Wire Wire Line
	1100 4800 1100 4400
Wire Wire Line
	1100 4400 3850 4400
Wire Wire Line
	1100 5000 1100 5250
Text GLabel 1100 5250 3    50   Input ~ 0
GND
$Comp
L Device:Jumper_NC_Small JP?
U 1 1 62B19347
P 11250 4000
AR Path="/5F0550B0/62B19347" Ref="JP?"  Part="1" 
AR Path="/62B19347" Ref="JP7"  Part="1" 
F 0 "JP7" H 11250 4212 50  0000 C CNN
F 1 "Jumper_NC_Small" H 11250 4121 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_RoundedPad1.0x1.5mm_DAVID" H 11250 4000 50  0001 C CNN
F 3 "~" H 11250 4000 50  0001 C CNN
	1    11250 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	11500 4000 11350 4000
Wire Wire Line
	11150 4000 11000 4000
Text Label 11000 4000 2    50   ~ 0
CPUBGO
Wire Bus Line
	8850 3750 10650 3750
Wire Bus Line
	4650 2800 7550 2800
$EndSCHEMATC
