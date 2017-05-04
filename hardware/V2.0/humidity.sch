EESchema Schematic File Version 2
LIBS:tinkerforge
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:humidity-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Humidity Bricklet"
Date "2017-04-28"
Rev "2.0"
Comp "Tinkerforge GmbH"
Comment1 "Licensed under CERN OHL v.1.1"
Comment2 "Copyright (©) 2017, B.Nordmeyer <bastian@tinkerforge.com>"
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 550  7700 0    40   ~ 0
Copyright Tinkerforge GmbH 2017.\nThis documentation describes Open Hardware and is licensed under the\nCERN OHL v. 1.1.\nYou may redistribute and modify this documentation under the terms of the\nCERN OHL v.1.1. (http://ohwr.org/cernohl). This documentation is distributed\nWITHOUT ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING OF\nMERCHANTABILITY, SATISFACTORY QUALITY AND FITNESS FOR A\nPARTICULAR PURPOSE. Please see the CERN OHL v.1.1 for applicable\nconditions\n
$Comp
L DRILL U103
U 1 1 4C6050A5
P 10650 6150
F 0 "U103" H 10700 6200 60  0001 C CNN
F 1 "DRILL" H 10650 6150 60  0000 C CNN
F 2 "DRILL_NP" H 10650 6150 60  0001 C CNN
F 3 "" H 10650 6150 60  0001 C CNN
	1    10650 6150
	1    0    0    -1  
$EndComp
$Comp
L DRILL U104
U 1 1 4C6050A2
P 10650 6350
F 0 "U104" H 10700 6400 60  0001 C CNN
F 1 "DRILL" H 10650 6350 60  0000 C CNN
F 2 "DRILL_NP" H 10650 6350 60  0001 C CNN
F 3 "" H 10650 6350 60  0001 C CNN
	1    10650 6350
	1    0    0    -1  
$EndComp
$Comp
L DRILL U106
U 1 1 4C60509F
P 11000 6350
F 0 "U106" H 11050 6400 60  0001 C CNN
F 1 "DRILL" H 11000 6350 60  0000 C CNN
F 2 "DRILL_NP" H 11000 6350 60  0001 C CNN
F 3 "" H 11000 6350 60  0001 C CNN
	1    11000 6350
	1    0    0    -1  
$EndComp
$Comp
L DRILL U105
U 1 1 4C605099
P 11000 6150
F 0 "U105" H 11050 6200 60  0001 C CNN
F 1 "DRILL" H 11000 6150 60  0000 C CNN
F 2 "DRILL_NP" H 11000 6150 60  0001 C CNN
F 3 "" H 11000 6150 60  0001 C CNN
	1    11000 6150
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR01
U 1 1 4C5FCFB4
P 2850 850
F 0 "#PWR01" H 2850 950 30  0001 C CNN
F 1 "VCC" H 2850 950 30  0000 C CNN
F 2 "" H 2850 850 60  0001 C CNN
F 3 "" H 2850 850 60  0001 C CNN
	1    2850 850 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 4C5FCF4F
P 1450 2350
F 0 "#PWR02" H 1450 2350 30  0001 C CNN
F 1 "GND" H 1450 2280 30  0001 C CNN
F 2 "" H 1450 2350 60  0001 C CNN
F 3 "" H 1450 2350 60  0001 C CNN
	1    1450 2350
	1    0    0    -1  
$EndComp
$Comp
L CON-SENSOR2 P101
U 1 1 4C5FCF27
P 1450 1800
F 0 "P101" H 1600 2200 60  0000 C CNN
F 1 "CON-SENSOR2" V 1600 1800 60  0000 C CNN
F 2 "CON-SENSOR2" H 1450 1800 60  0001 C CNN
F 3 "" H 1450 1800 60  0001 C CNN
	1    1450 1800
	-1   0    0    -1  
$EndComp
$Comp
L C C101
U 1 1 54F76B96
P 2050 1200
F 0 "C101" V 2150 1350 50  0000 L CNN
F 1 "10uF" V 1900 1200 50  0000 L CNN
F 2 "C0805" H 2050 1200 60  0001 C CNN
F 3 "" H 2050 1200 60  0001 C CNN
	1    2050 1200
	-1   0    0    1   
$EndComp
$Comp
L C C103
U 1 1 54F77AA5
P 2850 1200
F 0 "C103" V 2950 1350 50  0000 L CNN
F 1 "1uF" V 2700 1200 50  0000 L CNN
F 2 "C0603F" H 2850 1200 60  0001 C CNN
F 3 "" H 2850 1200 60  0001 C CNN
	1    2850 1200
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR03
U 1 1 54F77AEA
P 2850 1650
F 0 "#PWR03" H 2850 1650 30  0001 C CNN
F 1 "GND" H 2850 1580 30  0001 C CNN
F 2 "" H 2850 1650 60  0001 C CNN
F 3 "" H 2850 1650 60  0001 C CNN
	1    2850 1650
	1    0    0    -1  
$EndComp
$Comp
L C C104
U 1 1 5820FDE6
P 4600 6600
F 0 "C104" V 4650 6350 50  0000 L CNN
F 1 "100nF" V 4450 6500 50  0000 L CNN
F 2 "C0603F" H 4600 6600 60  0001 C CNN
F 3 "" H 4600 6600 60  0001 C CNN
	1    4600 6600
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR04
U 1 1 5821096B
P 4600 6250
F 0 "#PWR04" H 4600 6350 30  0001 C CNN
F 1 "VCC" H 4600 6350 30  0000 C CNN
F 2 "" H 4600 6250 60  0001 C CNN
F 3 "" H 4600 6250 60  0001 C CNN
	1    4600 6250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 58210C80
P 4600 7000
F 0 "#PWR05" H 4600 7000 30  0001 C CNN
F 1 "GND" H 4600 6930 30  0001 C CNN
F 2 "" H 4600 7000 60  0001 C CNN
F 3 "" H 4600 7000 60  0001 C CNN
	1    4600 7000
	1    0    0    -1  
$EndComp
Text GLabel 3150 1800 2    60   Output ~ 0
S-CS
Text GLabel 3150 1900 2    60   Output ~ 0
S-CLK
Text GLabel 3150 2000 2    60   Output ~ 0
S-MOSI
Text GLabel 3150 2100 2    60   Input ~ 0
S-MISO
$Comp
L LED D101
U 1 1 5823347E
P 3800 5550
F 0 "D101" H 3800 5650 50  0000 C CNN
F 1 "blue" H 3800 5450 50  0000 C CNN
F 2 "D0603E" H 3800 5550 50  0001 C CNN
F 3 "" H 3800 5550 50  0000 C CNN
	1    3800 5550
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P102
U 1 1 58233528
P 4250 5300
F 0 "P102" H 4250 5450 50  0000 C CNN
F 1 "BOOT" V 4350 5300 50  0000 C CNN
F 2 "kicad-libraries:SolderJumper" H 4250 5200 50  0001 C CNN
F 3 "" H 4250 5200 50  0000 C CNN
	1    4250 5300
	-1   0    0    1   
$EndComp
$Comp
L VCC #PWR06
U 1 1 5824794E
P 3550 5500
F 0 "#PWR06" H 3550 5600 30  0001 C CNN
F 1 "VCC" H 3550 5600 30  0000 C CNN
F 2 "" H 3550 5500 60  0001 C CNN
F 3 "" H 3550 5500 60  0001 C CNN
	1    3550 5500
	1    0    0    -1  
$EndComp
Text Notes 3050 3650 0    39   ~ 0
SPI Slave/CH0\nP0.13 : USIC0_CH0-DX2F : SEL\nP0.14 : USIC0_CH0-DX1A : CLK\nP0.15 : USIC0_CH0-DX0B : MOSI\nP2.0 : USIC0_CH0-DOUT0 : MISO
$Comp
L R R101
U 1 1 5898C45C
P 4350 5550
F 0 "R101" V 4430 5550 50  0000 C CNN
F 1 "1k" V 4350 5550 50  0000 C CNN
F 2 "R0603F" H 4350 5550 60  0001 C CNN
F 3 "" H 4350 5550 60  0000 C CNN
	1    4350 5550
	0    1    1    0   
$EndComp
Wire Wire Line
	1450 2350 1450 2250
Wire Wire Line
	1900 950  2850 950 
Wire Wire Line
	1900 1700 1900 950 
Wire Wire Line
	2050 950  2050 1000
Connection ~ 2050 950 
Wire Wire Line
	1800 1800 2200 1800
Wire Wire Line
	1800 1900 2200 1900
Wire Wire Line
	1800 2000 2200 2000
Wire Wire Line
	1800 2100 2200 2100
Wire Wire Line
	1800 1700 1900 1700
Wire Wire Line
	4100 5550 4000 5550
Wire Wire Line
	3600 5550 3550 5550
Wire Wire Line
	3550 5550 3550 5500
Wire Wire Line
	1800 1600 2850 1600
Wire Wire Line
	2050 1400 2050 1600
Connection ~ 2050 1600
Wire Wire Line
	2850 1400 2850 1650
Connection ~ 2850 1600
Wire Wire Line
	2850 850  2850 1000
Connection ~ 2850 950 
$Comp
L XMC1XXX24 U101
U 3 1 58CC2BB9
P 5100 4300
F 0 "U101" H 5000 4550 60  0000 C CNN
F 1 "XMC1XXX24" H 5100 4050 60  0000 C CNN
F 2 "kicad-libraries:QFN24-4x4mm-0.5mm" H 5250 5050 60  0001 C CNN
F 3 "" H 5250 5050 60  0000 C CNN
	3    5100 4300
	1    0    0    -1  
$EndComp
$Comp
L XMC1XXX24 U101
U 2 1 58CC312F
P 5100 3200
F 0 "U101" H 5000 3750 60  0000 C CNN
F 1 "XMC1XXX24" H 5100 2650 60  0000 C CNN
F 2 "kicad-libraries:QFN24-4x4mm-0.5mm" H 5250 3950 60  0001 C CNN
F 3 "" H 5250 3950 60  0000 C CNN
	2    5100 3200
	1    0    0    -1  
$EndComp
$Comp
L XMC1XXX24 U101
U 4 1 58CC31C9
P 5100 5300
F 0 "U101" H 5000 5750 60  0000 C CNN
F 1 "XMC1XXX24" H 5100 4850 60  0000 C CNN
F 2 "kicad-libraries:QFN24-4x4mm-0.5mm" H 5250 6050 60  0001 C CNN
F 3 "" H 5250 6050 60  0000 C CNN
	4    5100 5300
	1    0    0    -1  
$EndComp
$Comp
L XMC1XXX24 U101
U 1 1 58CC3266
P 5100 6650
F 0 "U101" H 4950 7050 60  0000 C CNN
F 1 "XMC1XXX24" H 5100 6250 60  0000 C CNN
F 2 "kicad-libraries:QFN24-4x4mm-0.5mm" H 5250 7400 60  0001 C CNN
F 3 "" H 5250 7400 60  0000 C CNN
	1    5100 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 6850 4600 6850
Wire Wire Line
	4600 6800 4600 7000
Wire Wire Line
	4600 6250 4600 6400
Wire Wire Line
	4600 6350 4750 6350
Connection ~ 4600 6350
Wire Wire Line
	4600 6950 4750 6950
NoConn ~ 4750 5450
NoConn ~ 4750 5350
NoConn ~ 4750 5150
NoConn ~ 4750 5650
NoConn ~ 4750 4450
NoConn ~ 4750 4350
NoConn ~ 4750 3250
Connection ~ 4600 6850
Connection ~ 4600 6950
Wire Wire Line
	4650 3450 4750 3450
Wire Wire Line
	4750 3550 4650 3550
Wire Wire Line
	4750 3650 4650 3650
Wire Wire Line
	4650 4950 4750 4950
$Comp
L GND #PWR07
U 1 1 5828358D
P 4500 5400
F 0 "#PWR07" H 4500 5400 30  0001 C CNN
F 1 "GND" H 4500 5330 30  0001 C CNN
F 2 "" H 4500 5400 60  0001 C CNN
F 3 "" H 4500 5400 60  0001 C CNN
	1    4500 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 5250 4750 5250
Wire Wire Line
	4450 5350 4500 5350
Wire Wire Line
	4500 5350 4500 5400
Wire Wire Line
	2600 1800 3150 1800
Wire Wire Line
	3150 1900 2600 1900
Wire Wire Line
	2600 2000 3150 2000
Wire Wire Line
	3150 2100 2600 2100
Text GLabel 4650 3450 0    60   Input ~ 0
S-CS
Text GLabel 4650 3550 0    60   Input ~ 0
S-CLK
Text GLabel 4650 3650 0    60   Input ~ 0
S-MOSI
Text GLabel 4650 4950 0    60   Output ~ 0
S-MISO
$Comp
L GND #PWR08
U 1 1 59006077
P 2100 2550
F 0 "#PWR08" H 2100 2550 30  0001 C CNN
F 1 "GND" H 2100 2480 30  0001 C CNN
F 2 "" H 2100 2550 60  0001 C CNN
F 3 "" H 2100 2550 60  0001 C CNN
	1    2100 2550
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR09
U 1 1 59008D94
P 1800 850
F 0 "#PWR09" H 1800 700 50  0001 C CNN
F 1 "+5V" H 1800 990 50  0000 C CNN
F 2 "" H 1800 850 50  0000 C CNN
F 3 "" H 1800 850 50  0000 C CNN
	1    1800 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 1500 1800 850 
Text GLabel 4650 5050 0    60   Output ~ 0
RELAY1
Wire Wire Line
	4650 5050 4750 5050
NoConn ~ 4750 2850
NoConn ~ 4750 2750
Wire Wire Line
	4600 5550 4750 5550
$Comp
L SHT3x-DIS U102
U 1 1 590213D2
P 7950 3750
F 0 "U102" H 7650 4100 60  0000 C CNN
F 1 "SHT3x-DIS" V 8200 3550 60  0000 C CNN
F 2 "kicad-libraries:DFN8-25x25" H 7950 3750 60  0001 C CNN
F 3 "" H 7950 3750 60  0000 C CNN
	1    7950 3750
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR010
U 1 1 590215C3
P 7950 3200
F 0 "#PWR010" H 7950 3300 30  0001 C CNN
F 1 "VCC" H 7950 3300 30  0000 C CNN
F 2 "" H 7950 3200 60  0001 C CNN
F 3 "" H 7950 3200 60  0001 C CNN
	1    7950 3200
	1    0    0    -1  
$EndComp
$Comp
L C C105
U 1 1 59021733
P 8250 3200
F 0 "C105" V 8400 3250 50  0000 L CNN
F 1 "100nF" V 8100 3150 50  0000 L CNN
F 2 "C0603F" H 8250 3200 60  0001 C CNN
F 3 "" H 8250 3200 60  0001 C CNN
	1    8250 3200
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR011
U 1 1 59021C38
P 7950 4400
F 0 "#PWR011" H 7950 4400 30  0001 C CNN
F 1 "GND" H 7950 4330 30  0001 C CNN
F 2 "" H 7950 4400 60  0001 C CNN
F 3 "" H 7950 4400 60  0001 C CNN
	1    7950 4400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 59021CF7
P 8450 3250
F 0 "#PWR012" H 8450 3250 30  0001 C CNN
F 1 "GND" H 8450 3180 30  0001 C CNN
F 2 "" H 8450 3250 60  0001 C CNN
F 3 "" H 8450 3250 60  0001 C CNN
	1    8450 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 3350 7950 3200
Wire Wire Line
	7950 3200 8050 3200
Wire Wire Line
	8450 3200 8450 3250
Wire Wire Line
	7950 4400 7950 4300
Wire Wire Line
	7850 4300 7850 4350
Wire Wire Line
	7850 4350 8050 4350
Connection ~ 7950 4350
Wire Wire Line
	8050 4350 8050 4300
Connection ~ 7950 3200
Text GLabel 6950 3550 0    60   Input ~ 0
SDA
Text GLabel 6950 3650 0    60   Input ~ 0
SCL
Text GLabel 6950 3850 0    60   Input ~ 0
nRESET
Wire Wire Line
	6950 3850 7500 3850
Wire Wire Line
	6950 3650 7500 3650
Wire Wire Line
	6950 3550 7500 3550
$Comp
L R_PACK4 RP102
U 1 1 59022734
P 7400 3050
F 0 "RP102" H 7400 3500 50  0000 C CNN
F 1 "4k7" H 7400 3000 50  0000 C CNN
F 2 "0603X4" H 7400 3050 50  0001 C CNN
F 3 "" H 7400 3050 50  0000 C CNN
	1    7400 3050
	0    -1   1    0   
$EndComp
$Comp
L VCC #PWR013
U 1 1 5902285B
P 7200 2800
F 0 "#PWR013" H 7200 2900 30  0001 C CNN
F 1 "VCC" H 7200 2900 30  0000 C CNN
F 2 "" H 7200 2800 60  0001 C CNN
F 3 "" H 7200 2800 60  0001 C CNN
	1    7200 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 2850 7350 2850
Wire Wire Line
	7200 2800 7200 2850
Connection ~ 7200 2850
Connection ~ 7250 2850
Connection ~ 7150 2850
Wire Wire Line
	7350 3250 7350 3650
Connection ~ 7350 3650
Text GLabel 4650 3150 0    60   Output ~ 0
SDA
Text GLabel 4650 2950 0    60   Output ~ 0
SCL
Text GLabel 4650 3350 0    60   Output ~ 0
nRESET
$Comp
L R_PACK4 RP101
U 1 1 590B3692
P 2400 2150
F 0 "RP101" H 2400 2600 50  0000 C CNN
F 1 "TBD" H 2400 2100 50  0000 C CNN
F 2 "4X0402" H 2400 2150 50  0001 C CNN
F 3 "" H 2400 2150 50  0000 C CNN
	1    2400 2150
	1    0    0    -1  
$EndComp
$Comp
L C C102
U 1 1 590B3753
P 2100 2300
F 0 "C102" V 2200 2450 50  0000 L CNN
F 1 "TBD" V 1950 2300 50  0000 L CNN
F 2 "C0402E" H 2100 2300 60  0001 C CNN
F 3 "" H 2100 2300 60  0001 C CNN
	1    2100 2300
	-1   0    0    1   
$EndComp
Connection ~ 2100 2100
Wire Wire Line
	2100 2500 2100 2550
Wire Wire Line
	7050 3250 7050 3850
Connection ~ 7050 3850
Text Notes 3050 3200 0    39   ~ 0
SPI Slave/CH1\nP0.6 :USIC0_CH1-DOUT0/DX0C : SDA\nP0.8: USIC0_CH1-SCLKOUT/DX1B : SCL
Wire Wire Line
	4650 2950 4750 2950
Wire Wire Line
	4750 3150 4650 3150
Wire Wire Line
	7150 3250 7150 3550
Connection ~ 7150 3550
$Comp
L GND #PWR014
U 1 1 590B52E2
P 7450 3750
F 0 "#PWR014" H 7450 3750 30  0001 C CNN
F 1 "GND" H 7450 3680 30  0001 C CNN
F 2 "" H 7450 3750 60  0001 C CNN
F 3 "" H 7450 3750 60  0001 C CNN
	1    7450 3750
	0    1    1    0   
$EndComp
Wire Wire Line
	7450 3750 7500 3750
Text GLabel 4650 3050 0    60   Input ~ 0
ALERT
Wire Wire Line
	4650 3050 4750 3050
NoConn ~ 4750 4250
NoConn ~ 4750 4150
NoConn ~ 7500 3950
Wire Wire Line
	4650 3350 4750 3350
$EndSCHEMATC
