EESchema Schematic File Version 2
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
LIBS:special
LIBS:microcontrollers
LIBS:dsp
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
LIBS:matts_components
LIBS:smd-special
LIBS:dips082
LIBS:CNT-RJ45
LIBS:VIt_Monitoring_Board_P2_SPIAD7490_17_2_14-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 8 9
Title "VIt Monitoring Slave Unit"
Date "7 may 2014"
Rev "1"
Comp "Product Health"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CP1 C23
U 1 1 52AF4905
P 2800 4950
F 0 "C23" H 2850 5050 50  0000 L CNN
F 1 "10u" H 2850 4850 50  0000 L CNN
F 2 "" H 2800 4950 60  0000 C CNN
F 3 "" H 2800 4950 60  0000 C CNN
	1    2800 4950
	0    -1   -1   0   
$EndComp
$Comp
L CP1 C26
U 1 1 52AF4914
P 3350 4950
F 0 "C26" H 3400 5050 50  0000 L CNN
F 1 "10u" H 3400 4850 50  0000 L CNN
F 2 "" H 3350 4950 60  0000 C CNN
F 3 "" H 3350 4950 60  0000 C CNN
	1    3350 4950
	0    -1   -1   0   
$EndComp
$Comp
L C C24
U 1 1 52AF4923
P 2800 5200
F 0 "C24" H 2850 5300 50  0000 L CNN
F 1 "100n" H 2850 5100 50  0000 L CNN
F 2 "" H 2800 5200 60  0000 C CNN
F 3 "" H 2800 5200 60  0000 C CNN
	1    2800 5200
	0    -1   -1   0   
$EndComp
$Comp
L C C27
U 1 1 52AF4932
P 3350 5200
F 0 "C27" H 3400 5300 50  0000 L CNN
F 1 "100n" H 3400 5100 50  0000 L CNN
F 2 "" H 3350 5200 60  0000 C CNN
F 3 "" H 3350 5200 60  0000 C CNN
	1    3350 5200
	0    -1   -1   0   
$EndComp
$Comp
L R R55
U 1 1 52AF4941
P 2800 4650
F 0 "R55" V 2880 4650 50  0000 C CNN
F 1 "10k" V 2800 4650 50  0000 C CNN
F 2 "" H 2800 4650 60  0000 C CNN
F 3 "" H 2800 4650 60  0000 C CNN
	1    2800 4650
	0    -1   -1   0   
$EndComp
$Comp
L R R56
U 1 1 52AF4950
P 3400 4650
F 0 "R56" V 3480 4650 50  0000 C CNN
F 1 "10k" V 3400 4650 50  0000 C CNN
F 2 "" H 3400 4650 60  0000 C CNN
F 3 "" H 3400 4650 60  0000 C CNN
	1    3400 4650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1500 4100 2900 4100
Wire Wire Line
	2900 4000 2900 4450
Wire Wire Line
	1750 4150 3000 4150
Wire Wire Line
	3000 4000 3000 4500
Wire Wire Line
	1800 4200 3100 4200
Wire Wire Line
	3100 4000 3100 4450
Wire Wire Line
	3050 4650 3150 4650
Wire Wire Line
	3000 4950 3150 4950
Wire Wire Line
	3000 5200 3150 5200
Wire Wire Line
	3100 4500 3100 5200
Connection ~ 3100 4950
Connection ~ 3100 5200
Connection ~ 3100 4650
Wire Wire Line
	3000 4500 3100 4500
Connection ~ 3000 4150
Wire Wire Line
	2550 4650 2500 4650
Wire Wire Line
	2500 4450 2500 5200
Wire Wire Line
	2500 5200 2600 5200
Wire Wire Line
	2600 4950 2500 4950
Connection ~ 2500 4950
Wire Wire Line
	3750 5200 3550 5200
Wire Wire Line
	3750 4450 3750 5200
Wire Wire Line
	3750 4650 3650 4650
Wire Wire Line
	3550 4950 3750 4950
Connection ~ 3750 4950
Wire Wire Line
	2900 4450 2500 4450
Connection ~ 2900 4100
Connection ~ 2500 4650
Wire Wire Line
	3100 4450 3750 4450
Connection ~ 3750 4650
Connection ~ 3100 4200
$Comp
L CP1 C29
U 1 1 52AF5BD1
P 3800 3900
F 0 "C29" H 3850 4000 50  0000 L CNN
F 1 "10u" H 3850 3800 50  0000 L CNN
F 2 "" H 3800 3900 60  0000 C CNN
F 3 "" H 3800 3900 60  0000 C CNN
	1    3800 3900
	1    0    0    -1  
$EndComp
$Comp
L C C30
U 1 1 52AF5BE0
P 4150 3900
F 0 "C30" H 4200 4000 50  0000 L CNN
F 1 "100n" H 4200 3800 50  0000 L CNN
F 2 "" H 4150 3900 60  0000 C CNN
F 3 "" H 4150 3900 60  0000 C CNN
	1    4150 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 3700 4000 3700
Wire Wire Line
	4000 3700 4000 4300
Connection ~ 4000 4300
$Comp
L MCP1700 U8
U 1 1 52AF722F
P 2700 2050
F 0 "U8" H 2850 1854 60  0000 C CNN
F 1 "REF3025" H 2700 2250 60  0000 C CNN
F 2 "~" H 2700 2050 60  0000 C CNN
F 3 "~" H 2700 2050 60  0000 C CNN
	1    2700 2050
	-1   0    0    -1  
$EndComp
$Comp
L C C25
U 1 1 52AF723E
P 3200 2250
F 0 "C25" H 3250 2350 50  0000 L CNN
F 1 "100nf" H 3250 2150 50  0000 L CNN
F 2 "" H 3200 2250 60  0000 C CNN
F 3 "" H 3200 2250 60  0000 C CNN
	1    3200 2250
	-1   0    0    -1  
$EndComp
$Comp
L CP1 C28
U 1 1 52AF724D
P 3550 2250
F 0 "C28" H 3600 2350 50  0000 L CNN
F 1 "0.47uF" H 3600 2150 50  0000 L CNN
F 2 "" H 3550 2250 60  0000 C CNN
F 3 "" H 3550 2250 60  0000 C CNN
	1    3550 2250
	-1   0    0    -1  
$EndComp
$Comp
L CP1 C22
U 1 1 52AF725C
P 2100 2300
F 0 "C22" H 2150 2400 50  0000 L CNN
F 1 "10uf" H 2150 2200 50  0000 L CNN
F 2 "" H 2100 2300 60  0000 C CNN
F 3 "" H 2100 2300 60  0000 C CNN
	1    2100 2300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3550 2000 3100 2000
Wire Wire Line
	3550 2050 3550 2000
Wire Wire Line
	3550 2550 3550 2450
Wire Wire Line
	2700 2550 2700 2300
Wire Wire Line
	2100 2550 2100 2500
Connection ~ 2700 2550
Wire Wire Line
	1800 2000 2300 2000
Wire Wire Line
	2100 2000 2100 2100
$Comp
L +5V #PWR063
U 1 1 52AF7932
P 3450 1950
F 0 "#PWR063" H 3450 2040 20  0001 C CNN
F 1 "+5V" H 3450 2040 30  0000 C CNN
F 2 "" H 3450 1950 60  0000 C CNN
F 3 "" H 3450 1950 60  0000 C CNN
	1    3450 1950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3450 2000 3450 1950
Connection ~ 3450 2000
Wire Wire Line
	2850 2550 2850 2650
Connection ~ 2850 2550
$Comp
L NE0515 U9
U 1 1 52B1DC15
P 2900 3500
F 0 "U9" H 2650 3700 60  0000 C CNN
F 1 "NE0515" H 2850 3600 60  0000 C CNN
F 2 "~" H 2900 3500 60  0000 C CNN
F 3 "~" H 2900 3500 60  0000 C CNN
	1    2900 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 4000 2600 4250
Wire Wire Line
	2700 4000 2700 4300
Text Notes 1950 1700 0    60   ~ 0
Accurate 2V5 for ADC and Thermistors
$Comp
L AGND #PWR064
U 1 1 52C8A93E
P 2850 2650
F 0 "#PWR064" H 2850 2650 40  0001 C CNN
F 1 "AGND" H 2850 2580 50  0000 C CNN
F 2 "" H 2850 2650 60  0000 C CNN
F 3 "" H 2850 2650 60  0000 C CNN
	1    2850 2650
	1    0    0    -1  
$EndComp
Text HLabel 1800 2000 0    60   Output ~ 0
+2V5
Connection ~ 2100 2000
Wire Wire Line
	4150 4250 4150 4100
Connection ~ 4150 4250
$Comp
L DGND #PWR065
U 1 1 52C8A923
P 4350 4400
F 0 "#PWR065" H 4350 4400 40  0001 C CNN
F 1 "DGND" H 4350 4330 40  0000 C CNN
F 2 "" H 4350 4400 60  0000 C CNN
F 3 "" H 4350 4400 60  0000 C CNN
	1    4350 4400
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR066
U 1 1 52C8A932
P 4350 4150
F 0 "#PWR066" H 4350 4240 20  0001 C CNN
F 1 "+5V" H 4350 4240 30  0000 C CNN
F 2 "" H 4350 4150 60  0000 C CNN
F 3 "" H 4350 4150 60  0000 C CNN
	1    4350 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 4250 4350 4150
Wire Wire Line
	4350 4300 4350 4400
Text HLabel 1500 4100 0    60   Output ~ 0
+15V
Text HLabel 1500 4200 0    60   Output ~ 0
AGND
Text HLabel 1500 4300 0    60   Output ~ 0
-15V
Wire Wire Line
	2600 4250 4350 4250
Wire Wire Line
	2700 4300 4350 4300
Wire Wire Line
	1500 4300 1800 4300
Wire Wire Line
	1800 4300 1800 4200
Wire Wire Line
	1750 4200 1500 4200
Text Notes 2200 3100 0    60   ~ 0
This needs to supply enough \ncurrent for 3 x LEM sensors
$Comp
L AP1512 U11
U 1 1 52C92C73
P 7150 3750
F 0 "U11" H 7150 4200 60  0000 C CNN
F 1 "AP1512/A" H 6800 3250 60  0000 C CNN
F 2 "~" H 7150 3750 60  0000 C CNN
F 3 "~" H 7150 3750 60  0000 C CNN
	1    7150 3750
	1    0    0    -1  
$EndComp
$Comp
L 78L05 U10
U 1 1 52C92C82
P 7150 2300
F 0 "U10" H 7300 2104 60  0000 C CNN
F 1 "78L05" H 7150 2500 60  0000 C CNN
F 2 "~" H 7150 2300 60  0000 C CNN
F 3 "~" H 7150 2300 60  0000 C CNN
	1    7150 2300
	1    0    0    -1  
$EndComp
Text Notes 6350 3150 0    60   ~ 0
DC/DC High Voltage Input Regulator
Text Notes 6650 1850 0    60   ~ 0
Linear Regulator: 1A\nLDO Low Quiescent I
$Comp
L C C32
U 1 1 52C92C91
P 6050 3900
F 0 "C32" H 6100 4000 50  0000 L CNN
F 1 "1uF" H 6100 3800 50  0000 L CNN
F 2 "" H 6050 3900 60  0000 C CNN
F 3 "" H 6050 3900 60  0000 C CNN
	1    6050 3900
	1    0    0    -1  
$EndComp
$Comp
L CP1 C31
U 1 1 52C92CA0
P 5700 3900
F 0 "C31" H 5750 4000 50  0000 L CNN
F 1 "100u" H 5750 3800 50  0000 L CNN
F 2 "" H 5700 3900 60  0000 C CNN
F 3 "" H 5700 3900 60  0000 C CNN
	1    5700 3900
	1    0    0    -1  
$EndComp
$Comp
L CP1 C34
U 1 1 52C92CCD
P 9800 3800
F 0 "C34" H 9850 3900 50  0000 L CNN
F 1 "470u" H 9850 3700 50  0000 L CNN
F 2 "" H 9800 3800 60  0000 C CNN
F 3 "" H 9800 3800 60  0000 C CNN
	1    9800 3800
	1    0    0    -1  
$EndComp
$Comp
L C C33
U 1 1 52C92CDC
P 9500 3800
F 0 "C33" H 9550 3900 50  0000 L CNN
F 1 "10n" H 9550 3700 50  0000 L CNN
F 2 "" H 9500 3800 60  0000 C CNN
F 3 "" H 9500 3800 60  0000 C CNN
	1    9500 3800
	1    0    0    -1  
$EndComp
$Comp
L INDUCTOR L2
U 1 1 52C92CFA
P 8350 3500
F 0 "L2" V 8300 3500 40  0000 C CNN
F 1 "47uH 3A" V 8450 3500 40  0000 C CNN
F 2 "" H 8350 3500 60  0000 C CNN
F 3 "" H 8350 3500 60  0000 C CNN
	1    8350 3500
	0    -1   -1   0   
$EndComp
$Comp
L DIODE D15
U 1 1 52C92D27
P 7900 4200
F 0 "D15" H 7900 4300 40  0000 C CNN
F 1 "B360/B" H 7900 4100 40  0000 C CNN
F 2 "" H 7900 4200 60  0000 C CNN
F 3 "" H 7900 4200 60  0000 C CNN
	1    7900 4200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7750 3500 8050 3500
Wire Wire Line
	7900 4000 7900 3500
Connection ~ 7900 3500
Wire Wire Line
	9800 3500 9800 3600
Connection ~ 9800 3500
Wire Wire Line
	9500 3500 9500 3600
Connection ~ 9500 3500
Wire Wire Line
	9500 4000 9500 4100
Wire Wire Line
	9500 4100 9800 4100
Wire Wire Line
	9800 4100 9800 4000
Wire Wire Line
	7150 4450 7150 4850
Wire Wire Line
	5350 4850 9700 4850
Wire Wire Line
	9700 4850 9700 4100
Connection ~ 9700 4100
Wire Wire Line
	7900 4400 7900 4850
Connection ~ 7900 4850
Wire Wire Line
	5700 4850 5700 4100
Connection ~ 7150 4850
Wire Wire Line
	6050 4100 6050 4850
Connection ~ 6050 4850
Wire Wire Line
	6050 3700 6050 3500
Wire Wire Line
	5250 3500 6550 3500
Wire Wire Line
	5700 3700 5700 3500
Connection ~ 6050 3500
$Comp
L DGND #PWR067
U 1 1 52C934CC
P 7650 5000
F 0 "#PWR067" H 7650 5000 40  0001 C CNN
F 1 "DGND" H 7650 4930 40  0000 C CNN
F 2 "" H 7650 5000 60  0000 C CNN
F 3 "" H 7650 5000 60  0000 C CNN
	1    7650 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 5000 7650 4850
Connection ~ 7650 4850
$Comp
L +5V #PWR068
U 1 1 52C9354D
P 10100 3400
F 0 "#PWR068" H 10100 3490 20  0001 C CNN
F 1 "+5V" H 10100 3490 30  0000 C CNN
F 2 "" H 10100 3400 60  0000 C CNN
F 3 "" H 10100 3400 60  0000 C CNN
	1    10100 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 3500 10100 3400
Text Notes 6550 2850 0    60   ~ 0
NEVER USE BOTH!!!
Wire Wire Line
	6200 3500 6200 2250
Wire Wire Line
	6200 2250 6750 2250
Connection ~ 6200 3500
Wire Wire Line
	7550 2250 9250 2250
Wire Wire Line
	9250 2250 9250 3500
Connection ~ 9250 3500
$Comp
L DGND #PWR069
U 1 1 52C93CD0
P 7150 2650
F 0 "#PWR069" H 7150 2650 40  0001 C CNN
F 1 "DGND" H 7150 2580 40  0000 C CNN
F 2 "" H 7150 2650 60  0000 C CNN
F 3 "" H 7150 2650 60  0000 C CNN
	1    7150 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 2650 7150 2550
Text HLabel 5250 3500 0    60   Input ~ 0
Vin
Text HLabel 5350 4850 0    60   Input ~ 0
GND
Connection ~ 5700 4850
Connection ~ 5700 3500
Wire Wire Line
	6550 3850 6450 3850
Wire Wire Line
	6450 3850 6450 4850
Connection ~ 6450 4850
$Comp
L INDUCTOR L1
U 1 1 52C97F2A
P 4950 2350
F 0 "L1" V 4900 2350 40  0000 C CNN
F 1 "FERRITE" V 5050 2350 40  0000 C CNN
F 2 "" H 4950 2350 60  0000 C CNN
F 3 "" H 4950 2350 60  0000 C CNN
	1    4950 2350
	0    -1   -1   0   
$EndComp
$Comp
L DGND #PWR070
U 1 1 52C97F39
P 5450 2500
F 0 "#PWR070" H 5450 2500 40  0001 C CNN
F 1 "DGND" H 5450 2430 40  0000 C CNN
F 2 "" H 5450 2500 60  0000 C CNN
F 3 "" H 5450 2500 60  0000 C CNN
	1    5450 2500
	1    0    0    -1  
$EndComp
$Comp
L AGND #PWR071
U 1 1 52C97F48
P 4500 2550
F 0 "#PWR071" H 4500 2550 40  0001 C CNN
F 1 "AGND" H 4500 2480 50  0000 C CNN
F 2 "" H 4500 2550 60  0000 C CNN
F 3 "" H 4500 2550 60  0000 C CNN
	1    4500 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 2550 4500 2350
Wire Wire Line
	4500 2350 4650 2350
Wire Wire Line
	5250 2350 5450 2350
Wire Wire Line
	5450 2350 5450 2500
Text Notes 4050 2150 0    60   ~ 0
This is the link between DGND and AGND
$Comp
L AGND #PWR072
U 1 1 52CAB635
P 2100 4350
F 0 "#PWR072" H 2100 4350 40  0001 C CNN
F 1 "AGND" H 2100 4280 50  0000 C CNN
F 2 "" H 2100 4350 60  0000 C CNN
F 3 "" H 2100 4350 60  0000 C CNN
	1    2100 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 4350 2100 4150
Connection ~ 2100 4150
Wire Wire Line
	2100 2550 3550 2550
Text HLabel 6100 5200 0    60   Output ~ 0
DGND
Wire Wire Line
	6100 5200 6300 5200
Wire Wire Line
	6300 5200 6300 4850
Connection ~ 6300 4850
Wire Wire Line
	8650 3500 10100 3500
Text Notes 1800 1550 0    60   ~ 0
USE A REFERNCE VOLTAGE DIODE FOR VREF.
Wire Wire Line
	3200 2450 3200 2550
Connection ~ 3200 2550
Wire Wire Line
	3200 2050 3200 2000
Connection ~ 3200 2000
Wire Wire Line
	3800 4100 3800 4300
Connection ~ 3800 4300
Wire Wire Line
	3800 3700 3600 3700
Wire Wire Line
	3600 3700 3600 4250
Connection ~ 3600 4250
Wire Wire Line
	7750 3850 8900 3850
Wire Wire Line
	8900 3850 8900 3500
Connection ~ 8900 3500
Wire Wire Line
	1750 4200 1750 4150
$EndSCHEMATC
