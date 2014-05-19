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
LIBS:VIt_Monitoring_Board_P2_I2CADS1015_17_2_14-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 6
Title "VIt Monitoring Slave Unit"
Date "11 mar 2014"
Rev "1"
Comp "Product Health"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L AGND #PWR01
U 1 1 52C96734
P 4700 3150
F 0 "#PWR01" H 4700 3150 40  0001 C CNN
F 1 "AGND" H 4700 3080 50  0000 C CNN
F 2 "" H 4700 3150 60  0000 C CNN
F 3 "" H 4700 3150 60  0000 C CNN
	1    4700 3150
	1    0    0    -1  
$EndComp
Text Notes 4300 1850 0    60   ~ 0
ADDR is connected to:\nGND -> 0x48\nVcc -> 0x49\nSDA -> 0x4A\nSCL -> 0x4B
$Comp
L R R2
U 1 1 52AF33E2
P 6200 2450
F 0 "R2" V 6280 2450 50  0000 C CNN
F 1 "10k" V 6200 2450 50  0000 C CNN
F 2 "" H 6200 2450 60  0000 C CNN
F 3 "" H 6200 2450 60  0000 C CNN
	1    6200 2450
	-1   0    0    1   
$EndComp
$Comp
L R R3
U 1 1 52C9673F
P 6400 2450
F 0 "R3" V 6480 2450 50  0000 C CNN
F 1 "10k" V 6400 2450 50  0000 C CNN
F 2 "" H 6400 2450 60  0000 C CNN
F 3 "" H 6400 2450 60  0000 C CNN
	1    6400 2450
	-1   0    0    1   
$EndComp
$Comp
L CP1 C2
U 1 1 52AF6A63
P 7250 3950
F 0 "C2" H 7300 4050 50  0000 L CNN
F 1 "10uf" H 7300 3850 50  0000 L CNN
F 2 "" H 7250 3950 60  0000 C CNN
F 3 "" H 7250 3950 60  0000 C CNN
	1    7250 3950
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 52AF6A72
P 5650 3850
F 0 "C1" V 5750 4000 50  0000 L CNN
F 1 "100nf" V 5750 3550 50  0000 L CNN
F 2 "" H 5650 3850 60  0000 C CNN
F 3 "" H 5650 3850 60  0000 C CNN
	1    5650 3850
	0    1    1    0   
$EndComp
$Comp
L ADS1015 U1
U 1 1 52C9674A
P 5600 2950
F 0 "U1" H 5650 3300 60  0000 C CNN
F 1 "ADS1015" H 5650 2300 60  0000 C CNN
F 2 "~" H 5800 2850 60  0000 C CNN
F 3 "~" H 5800 2850 60  0000 C CNN
	1    5600 2950
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR02
U 1 1 52C82DF8
P 7250 3400
F 0 "#PWR02" H 7250 3490 20  0001 C CNN
F 1 "+5V" H 7250 3490 30  0000 C CNN
F 2 "" H 7250 3400 60  0000 C CNN
F 3 "" H 7250 3400 60  0000 C CNN
	1    7250 3400
	1    0    0    -1  
$EndComp
$Comp
L INDUCTOR L1
U 1 1 52C9674F
P 6850 3600
F 0 "L1" V 6800 3600 40  0000 C CNN
F 1 "FERRITE" V 6950 3600 40  0000 C CNN
F 2 "" H 6850 3600 60  0000 C CNN
F 3 "" H 6850 3600 60  0000 C CNN
	1    6850 3600
	0    -1   -1   0   
$EndComp
$Comp
L R R1
U 1 1 52C96750
P 5150 2450
F 0 "R1" V 5230 2450 50  0000 C CNN
F 1 "10k" V 5150 2450 50  0000 C CNN
F 2 "" H 5150 2450 60  0000 C CNN
F 3 "" H 5150 2450 60  0000 C CNN
	1    5150 2450
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR03
U 1 1 52C96753
P 7250 4500
F 0 "#PWR03" H 7250 4500 40  0001 C CNN
F 1 "DGND" H 7250 4430 40  0000 C CNN
F 2 "" H 7250 4500 60  0000 C CNN
F 3 "" H 7250 4500 60  0000 C CNN
	1    7250 4500
	1    0    0    -1  
$EndComp
Text Notes 4050 3050 0    60   ~ 0
This is ID: 0x48
Text HLabel 6750 2800 2    60   Output ~ 0
SCLK
Text HLabel 6750 2950 2    60   Output ~ 0
SDA
Text HLabel 4150 3500 0    60   Input ~ 0
Vin0
Text HLabel 4150 3650 0    60   Input ~ 0
Vin1
Text HLabel 4150 3800 0    60   Input ~ 0
Vin2
Text HLabel 4150 3950 0    60   Input ~ 0
Vin3
Text HLabel 7600 4300 2    60   Input ~ 0
DGND
Text HLabel 3800 3100 0    60   Input ~ 0
AGND
Wire Wire Line
	6050 2800 6750 2800
Wire Wire Line
	6050 2950 6750 2950
Wire Wire Line
	6200 2200 6200 2150
Wire Wire Line
	6400 2150 6400 2200
Wire Wire Line
	6200 2700 6200 2800
Connection ~ 6200 2800
Wire Wire Line
	6400 2700 6400 2950
Connection ~ 6400 2950
Wire Wire Line
	3800 3100 5250 3100
Wire Wire Line
	4700 3100 4700 3150
Wire Wire Line
	7250 3750 7250 3400
Wire Wire Line
	6050 3100 6400 3100
Wire Wire Line
	7250 4150 7250 4500
Connection ~ 5100 3100
Wire Wire Line
	5450 3850 5100 3850
Wire Wire Line
	6400 3850 5850 3850
Wire Wire Line
	7150 3600 7250 3600
Connection ~ 7250 3600
Wire Wire Line
	5100 3850 5100 3100
Wire Wire Line
	6550 3600 6400 3600
Wire Wire Line
	6400 3100 6400 3850
Connection ~ 6400 3600
Wire Wire Line
	5250 2950 5150 2950
Wire Wire Line
	5150 2950 5150 2700
Wire Wire Line
	5150 2200 5150 2150
Connection ~ 6200 2150
Wire Wire Line
	4900 3250 4900 3500
Wire Wire Line
	4900 3250 5250 3250
Wire Wire Line
	6150 3400 6050 3400
Wire Wire Line
	6050 3250 6250 3250
Wire Wire Line
	5250 2800 4900 2800
Wire Wire Line
	4900 2800 4900 3100
Connection ~ 4900 3100
Wire Wire Line
	5150 2150 6600 2150
Wire Wire Line
	6600 2150 6600 3250
Wire Wire Line
	6600 3250 6400 3250
Connection ~ 6400 3250
Connection ~ 6400 2150
Wire Wire Line
	4900 3500 4150 3500
Wire Wire Line
	4150 3650 5150 3650
Wire Wire Line
	5150 3650 5150 3400
Wire Wire Line
	5150 3400 5250 3400
Wire Wire Line
	4150 3800 4950 3800
Wire Wire Line
	4950 3800 4950 4150
Wire Wire Line
	4950 4150 6150 4150
Wire Wire Line
	6150 4150 6150 3400
Wire Wire Line
	4150 3950 4800 3950
Wire Wire Line
	4800 3950 4800 4250
Wire Wire Line
	4800 4250 6250 4250
Wire Wire Line
	6250 4250 6250 3250
Connection ~ 4700 3100
Wire Wire Line
	7600 4300 7250 4300
Connection ~ 7250 4300
$EndSCHEMATC
