EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
Title "David's Falcon Booster 1"
Date "2022-01-15"
Rev "5"
Comp "D Henderson"
Comment1 "Copyright 2022 D Henderson"
Comment2 "Released under the terms of the GPLv2"
Comment3 ""
Comment4 ""
$EndDescr
Text Label 4600 3550 2    50   ~ 0
A7
Text Label 4600 3450 2    50   ~ 0
A6
Text Label 4600 3350 2    50   ~ 0
A5
Text Label 4600 3250 2    50   ~ 0
A4
Text Label 4600 3050 2    50   ~ 0
A2
Text Label 4600 3150 2    50   ~ 0
A3
Text Label 4600 3650 2    50   ~ 0
A8
Text Label 4600 3750 2    50   ~ 0
A9
Text Label 4600 4650 2    50   ~ 0
A18
Text Label 4600 4550 2    50   ~ 0
A17
Text Label 4600 4050 2    50   ~ 0
A12
Text Label 4600 3850 2    50   ~ 0
A10
Text Label 4600 3950 2    50   ~ 0
A11
Text Label 4600 4150 2    50   ~ 0
A13
Text Label 4600 4250 2    50   ~ 0
A14
Text Label 4600 4350 2    50   ~ 0
A15
Text Label 4600 4450 2    50   ~ 0
A16
Wire Wire Line
	5200 3850 4400 3850
Wire Wire Line
	5200 3950 4400 3950
Wire Wire Line
	5200 3050 4400 3050
Wire Wire Line
	4400 3150 5200 3150
Wire Wire Line
	5200 3250 4400 3250
Wire Wire Line
	5200 3350 4400 3350
Wire Wire Line
	5200 3450 4400 3450
Wire Wire Line
	5200 3550 4400 3550
Wire Wire Line
	5200 3650 4400 3650
Wire Wire Line
	5200 3750 4400 3750
Wire Wire Line
	5200 4650 4400 4650
Wire Wire Line
	5200 4550 4400 4550
Wire Wire Line
	5200 4450 4400 4450
Wire Wire Line
	5200 4350 4400 4350
Wire Wire Line
	5200 4250 4400 4250
Wire Wire Line
	5200 4050 4400 4050
Wire Wire Line
	5200 4150 4400 4150
Entry Wire Line
	4300 4550 4400 4650
Entry Wire Line
	4300 4450 4400 4550
Entry Wire Line
	4300 4350 4400 4450
Entry Wire Line
	4300 4250 4400 4350
Entry Wire Line
	4300 4150 4400 4250
Entry Wire Line
	4300 4050 4400 4150
Entry Wire Line
	4300 3950 4400 4050
Entry Wire Line
	4300 3850 4400 3950
Entry Wire Line
	4300 3750 4400 3850
Entry Wire Line
	4300 3650 4400 3750
Entry Wire Line
	4300 3550 4400 3650
Entry Wire Line
	4300 3450 4400 3550
Entry Wire Line
	4300 3350 4400 3450
Entry Wire Line
	4300 3250 4400 3350
Entry Wire Line
	4300 3150 4400 3250
Entry Wire Line
	4300 3050 4400 3150
Entry Wire Line
	4300 2950 4400 3050
Entry Wire Line
	4300 2850 4400 2950
Wire Wire Line
	5800 2600 5800 2000
Wire Wire Line
	5800 2000 6100 2000
$Comp
L Device:C C23
U 1 1 609535E7
P 6100 2150
F 0 "C23" H 6215 2196 50  0000 L CNN
F 1 "100n" H 6215 2105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 6138 2000 50  0001 C CNN
F 3 "~" H 6100 2150 50  0001 C CNN
	1    6100 2150
	1    0    0    -1  
$EndComp
Text GLabel 6100 2300 3    50   Input ~ 0
GND
Wire Wire Line
	6400 4100 7500 4100
Wire Wire Line
	6400 4300 7500 4300
Text Label 6850 4500 0    50   ~ 0
D31
Entry Wire Line
	7600 2850 7500 2950
Entry Wire Line
	7600 2950 7500 3050
Entry Wire Line
	7600 3050 7500 3150
Entry Wire Line
	7600 3150 7500 3250
Entry Wire Line
	7600 3250 7500 3350
Entry Wire Line
	7600 3350 7500 3450
Entry Wire Line
	7600 3450 7500 3550
Entry Wire Line
	7600 3550 7500 3650
Entry Wire Line
	7600 3700 7500 3800
Entry Wire Line
	7600 3800 7500 3900
Entry Wire Line
	7600 3900 7500 4000
Entry Wire Line
	7600 4000 7500 4100
Entry Wire Line
	7600 4100 7500 4200
Entry Wire Line
	7600 4200 7500 4300
Entry Wire Line
	7600 4300 7500 4400
Entry Wire Line
	7600 4400 7500 4500
Text GLabel 7600 2500 1    50   BiDi ~ 0
D[0..31]
Text Label 6850 2950 0    50   ~ 0
D16
Text Label 6850 3050 0    50   ~ 0
D17
Text Label 6850 3250 0    50   ~ 0
D19
Text Label 6850 3450 0    50   ~ 0
D21
Text Label 6850 3650 0    50   ~ 0
D23
Text Label 6850 3900 0    50   ~ 0
D25
Text Label 6850 4100 0    50   ~ 0
D27
Text Label 6850 4300 0    50   ~ 0
D29
Text Label 6850 4400 0    50   ~ 0
D30
Text Label 6850 4200 0    50   ~ 0
D28
Text Label 6850 4000 0    50   ~ 0
D26
Text Label 6850 3800 0    50   ~ 0
D24
Text Label 6850 3550 0    50   ~ 0
D22
Text Label 6850 3350 0    50   ~ 0
D20
Text Label 6850 3150 0    50   ~ 0
D18
Wire Wire Line
	6400 3900 7500 3900
Wire Wire Line
	6400 3800 7500 3800
Wire Wire Line
	6400 3550 7500 3550
Wire Wire Line
	6400 3350 7500 3350
Wire Wire Line
	6400 3050 7500 3050
Wire Wire Line
	6400 4500 7500 4500
Wire Wire Line
	6400 4400 7500 4400
Wire Wire Line
	6400 4200 7500 4200
Wire Wire Line
	6400 4000 7500 4000
Wire Wire Line
	6400 3650 7500 3650
Wire Wire Line
	6400 3450 7500 3450
Wire Wire Line
	6400 3250 7500 3250
Wire Wire Line
	6400 3150 7500 3150
Wire Wire Line
	6400 2950 7500 2950
Text GLabel 4300 2500 1    50   BiDi ~ 0
A[0..31]
Text GLabel 5800 5700 3    50   Input ~ 0
GND
$Comp
L david:29F800C-TSOP-48 U5
U 1 1 60948C51
P 5800 3750
F 0 "U5" H 5800 4950 50  0000 C CNN
F 1 "29F800C-TSOP-48" H 5800 4850 50  0000 C CNN
F 2 "Package_SO:TSOP-I-48_18.4x12mm_P0.5mm" H 5800 3750 50  0001 C CNN
F 3 "" H 5800 3750 50  0001 C CNN
F 4 "" H 5800 3750 50  0001 C CNN "LCSC Part"
F 5 "MX29F400CBTI-70G" H 5800 3750 50  0001 C CNN "Mfr Part No"
F 6 "914-2759" H 5800 3750 50  0001 C CNN "RS Stock"
	1    5800 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 5600 5800 5600
Wire Wire Line
	5800 5700 5800 5600
Connection ~ 5800 5600
Wire Wire Line
	5800 5600 5850 5600
Text GLabel 6400 5250 2    50   Input ~ 0
XR~W
NoConn ~ 6400 4750
Text GLabel 6400 5150 2    50   Input ~ 0
~ROMOE
Text GLabel 6400 5050 2    50   Input ~ 0
~ROMCE
Text GLabel 6400 4850 2    50   Input ~ 0
~RST
Wire Wire Line
	7850 4800 7850 4950
Wire Wire Line
	6400 4950 7850 4950
Wire Wire Line
	5200 2950 4400 2950
Text Label 4600 2950 2    50   ~ 0
A1
Text Notes 7050 6950 0    50   ~ 0
NB: scrambled data lines means I’ll need a specialist FLASH tool to send the correct ERASE/WRITE\nsequences.
Text GLabel 7850 4800 1    50   Input ~ 0
VCC
Text GLabel 6100 2000 1    50   Input ~ 0
VCC
Text GLabel 5200 4750 0    50   Input ~ 0
ROM_A19
Wire Bus Line
	7600 2500 7600 4400
Wire Bus Line
	4300 2500 4300 4550
$EndSCHEMATC
