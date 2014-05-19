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
Sheet 7 9
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
L R R45
U 1 1 536A5801
P 3450 2350
F 0 "R45" V 3530 2350 50  0000 C CNN
F 1 "10k" V 3450 2350 50  0000 C CNN
F 2 "" H 3450 2350 60  0000 C CNN
F 3 "" H 3450 2350 60  0000 C CNN
	1    3450 2350
	1    0    0    -1  
$EndComp
$Comp
L R R46
U 1 1 536A5803
P 3450 2950
F 0 "R46" V 3530 2950 50  0000 C CNN
F 1 "Therm" V 3450 2950 50  0000 C CNN
F 2 "" H 3450 2950 60  0000 C CNN
F 3 "" H 3450 2950 60  0000 C CNN
	1    3450 2950
	1    0    0    -1  
$EndComp
$Comp
L R R41
U 1 1 536A57F2
P 2600 4700
F 0 "R41" V 2680 4700 50  0000 C CNN
F 1 "RV2" V 2600 4700 50  0000 C CNN
F 2 "" H 2600 4700 60  0000 C CNN
F 3 "" H 2600 4700 60  0000 C CNN
	1    2600 4700
	1    0    0    -1  
$EndComp
$Comp
L R R42
U 1 1 536A5806
P 2600 5350
F 0 "R42" V 2680 5350 50  0000 C CNN
F 1 "RV1" V 2600 5350 50  0000 C CNN
F 2 "" H 2600 5350 60  0000 C CNN
F 3 "" H 2600 5350 60  0000 C CNN
	1    2600 5350
	1    0    0    -1  
$EndComp
$Comp
L R R54
U 1 1 52C96717
P 9350 5000
F 0 "R54" V 9430 5000 50  0000 C CNN
F 1 "Rload" V 9350 5000 50  0000 C CNN
F 2 "" H 9350 5000 60  0000 C CNN
F 3 "" H 9350 5000 60  0000 C CNN
	1    9350 5000
	1    0    0    -1  
$EndComp
$Comp
L C C19
U 1 1 536A580C
P 3150 5350
F 0 "C19" H 3200 5450 50  0000 L CNN
F 1 "C" H 3200 5250 50  0000 L CNN
F 2 "" H 3150 5350 60  0000 C CNN
F 3 "" H 3150 5350 60  0000 C CNN
	1    3150 5350
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P22
U 1 1 536A580F
P 1900 5050
F 0 "P22" V 1850 5050 40  0000 C CNN
F 1 "VOLTS1" V 1950 5050 40  0000 C CNN
F 2 "" H 1900 5050 60  0000 C CNN
F 3 "" H 1900 5050 60  0000 C CNN
	1    1900 5050
	-1   0    0    1   
$EndComp
$Comp
L CONN_2 P24
U 1 1 536A5813
P 2750 2900
F 0 "P24" V 2700 2900 40  0000 C CNN
F 1 "THERM1" V 2800 2900 40  0000 C CNN
F 2 "" H 2750 2900 60  0000 C CNN
F 3 "" H 2750 2900 60  0000 C CNN
	1    2750 2900
	-1   0    0    1   
$EndComp
$Comp
L AGND #PWR054
U 1 1 52C96729
P 3350 3300
F 0 "#PWR054" H 3350 3300 40  0001 C CNN
F 1 "AGND" H 3350 3230 50  0000 C CNN
F 2 "" H 3350 3300 60  0000 C CNN
F 3 "" H 3350 3300 60  0000 C CNN
	1    3350 3300
	1    0    0    -1  
$EndComp
$Comp
L AGND #PWR055
U 1 1 536A57F5
P 2500 5700
F 0 "#PWR055" H 2500 5700 40  0001 C CNN
F 1 "AGND" H 2500 5630 50  0000 C CNN
F 2 "" H 2500 5700 60  0000 C CNN
F 3 "" H 2500 5700 60  0000 C CNN
	1    2500 5700
	1    0    0    -1  
$EndComp
$Comp
L AGND #PWR056
U 1 1 536A57F7
P 9700 4800
F 0 "#PWR056" H 9700 4800 40  0001 C CNN
F 1 "AGND" H 9700 4730 50  0000 C CNN
F 2 "" H 9700 4800 60  0000 C CNN
F 3 "" H 9700 4800 60  0000 C CNN
	1    9700 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 2800 3100 2650
Wire Wire Line
	3100 2650 5450 2650
Wire Wire Line
	3450 2600 3450 2700
Connection ~ 3450 2650
Wire Wire Line
	3100 3000 3100 3250
Wire Wire Line
	2250 5150 2250 5650
Wire Wire Line
	2250 5650 3150 5650
Wire Wire Line
	3150 5650 3150 5550
Wire Wire Line
	2900 5550 2900 5650
Connection ~ 2900 5650
Connection ~ 2600 5650
Wire Wire Line
	2600 5100 2600 4950
Connection ~ 2600 5000
Wire Wire Line
	3450 5000 2600 5000
Wire Wire Line
	3150 5150 3150 5000
Connection ~ 3150 5000
Wire Wire Line
	2900 5150 2900 5000
Connection ~ 2900 5000
Wire Wire Line
	2250 4350 2250 4950
$Comp
L C C21
U 1 1 536A5818
P 5950 2900
F 0 "C21" H 6000 3000 50  0000 L CNN
F 1 "100nf" H 6000 2800 50  0000 L CNN
F 2 "" H 5950 2900 60  0000 C CNN
F 3 "" H 5950 2900 60  0000 C CNN
	1    5950 2900
	0    -1   -1   0   
$EndComp
Text Notes 10450 4400 0    60   ~ 0
-15V\n0V\n+15V\n+5V\n0V\nDATA
Wire Wire Line
	2600 5650 2600 5600
Wire Wire Line
	2500 5650 2500 5700
Connection ~ 2500 5650
Wire Wire Line
	3450 3250 3450 3200
Wire Wire Line
	3350 3300 3350 3250
Connection ~ 3350 3250
$Comp
L OPA4340 U7
U 1 1 536A581B
P 5950 3550
F 0 "U7" H 6000 3900 60  0000 C CNN
F 1 "OPA4340" H 6000 2900 60  0000 C CNN
F 2 "~" H 6150 3550 60  0000 C CNN
F 3 "~" H 6150 3550 60  0000 C CNN
	1    5950 3550
	1    0    0    -1  
$EndComp
$Comp
L AGND #PWR057
U 1 1 536A581F
P 6700 3700
F 0 "#PWR057" H 6700 3700 40  0001 C CNN
F 1 "AGND" H 6700 3630 50  0000 C CNN
F 2 "" H 6700 3700 60  0000 C CNN
F 3 "" H 6700 3700 60  0000 C CNN
	1    6700 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 3700 6600 3700
Wire Wire Line
	6600 3700 6600 3650
Wire Wire Line
	6600 3650 7350 3650
Wire Wire Line
	6700 3650 6700 3700
Wire Wire Line
	5600 3700 5300 3700
Wire Wire Line
	4700 3400 5600 3400
Wire Wire Line
	5400 3400 5400 2200
Wire Wire Line
	5400 2200 10050 2200
Wire Wire Line
	5100 2300 10050 2300
Wire Wire Line
	5100 2300 5100 4700
Wire Wire Line
	5100 4000 5600 4000
Wire Wire Line
	6400 4000 9650 4000
Wire Wire Line
	6400 3400 9900 3400
Wire Wire Line
	6150 2900 6500 2900
Wire Wire Line
	6500 2900 6500 3700
Connection ~ 6500 3700
Wire Wire Line
	5750 2900 5500 2900
Wire Wire Line
	5500 2900 5500 3700
Connection ~ 5500 3700
$Comp
L R R47
U 1 1 536A5822
P 4400 3250
F 0 "R47" V 4480 3250 50  0000 C CNN
F 1 "100k" V 4400 3250 50  0000 C CNN
F 2 "" H 4400 3250 60  0000 C CNN
F 3 "" H 4400 3250 60  0000 C CNN
	1    4400 3250
	1    0    0    -1  
$EndComp
$Comp
L R R48
U 1 1 52C96759
P 4550 4350
F 0 "R48" V 4630 4350 50  0000 C CNN
F 1 "100k" V 4550 4350 50  0000 C CNN
F 2 "" H 4550 4350 60  0000 C CNN
F 3 "" H 4550 4350 60  0000 C CNN
	1    4550 4350
	1    0    0    -1  
$EndComp
$Comp
L R R49
U 1 1 536A57FC
P 6950 3050
F 0 "R49" V 7030 3050 50  0000 C CNN
F 1 "100k" V 6950 3050 50  0000 C CNN
F 2 "" H 6950 3050 60  0000 C CNN
F 3 "" H 6950 3050 60  0000 C CNN
	1    6950 3050
	1    0    0    -1  
$EndComp
$Comp
L R R50
U 1 1 536A5828
P 7100 4300
F 0 "R50" V 7180 4300 50  0000 C CNN
F 1 "100k" V 7100 4300 50  0000 C CNN
F 2 "" H 7100 4300 60  0000 C CNN
F 3 "" H 7100 4300 60  0000 C CNN
	1    7100 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 4050 7100 4000
Connection ~ 7100 4000
Wire Wire Line
	7100 4550 7000 4550
Wire Wire Line
	7000 3900 6400 3900
Wire Wire Line
	4400 3500 5600 3500
Wire Wire Line
	4700 2900 4700 3400
Connection ~ 5400 3400
Wire Wire Line
	4550 4100 4550 3900
Connection ~ 5100 4000
Wire Wire Line
	3450 3800 3450 5000
Wire Wire Line
	4550 4600 4550 4700
Wire Wire Line
	3450 3800 5600 3800
Wire Wire Line
	5600 3600 5450 3600
Wire Wire Line
	5450 3600 5450 2650
$Comp
L R R52
U 1 1 536A582B
P 8150 3500
F 0 "R52" V 8230 3500 50  0000 C CNN
F 1 "100k" V 8150 3500 50  0000 C CNN
F 2 "" H 8150 3500 60  0000 C CNN
F 3 "" H 8150 3500 60  0000 C CNN
	1    8150 3500
	0    -1   -1   0   
$EndComp
$Comp
L R R53
U 1 1 536A582E
P 8200 4400
F 0 "R53" V 8280 4400 50  0000 C CNN
F 1 "100k" V 8200 4400 50  0000 C CNN
F 2 "" H 8200 4400 60  0000 C CNN
F 3 "" H 8200 4400 60  0000 C CNN
	1    8200 4400
	1    0    0    -1  
$EndComp
$Comp
L R R51
U 1 1 536A5832
P 7850 4050
F 0 "R51" V 7930 4050 50  0000 C CNN
F 1 "100k" V 7850 4050 50  0000 C CNN
F 2 "" H 7850 4050 60  0000 C CNN
F 3 "" H 7850 4050 60  0000 C CNN
	1    7850 4050
	1    0    0    -1  
$EndComp
$Comp
L AGND #PWR058
U 1 1 536A5834
P 7850 4450
F 0 "#PWR058" H 7850 4450 40  0001 C CNN
F 1 "AGND" H 7850 4380 50  0000 C CNN
F 2 "" H 7850 4450 60  0000 C CNN
F 3 "" H 7850 4450 60  0000 C CNN
	1    7850 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 4450 7850 4300
$Comp
L +5V #PWR059
U 1 1 536A57FD
P 5300 3700
F 0 "#PWR059" H 5300 3790 20  0001 C CNN
F 1 "+5V" H 5300 3790 30  0000 C CNN
F 2 "" H 5300 3700 60  0000 C CNN
F 3 "" H 5300 3700 60  0000 C CNN
	1    5300 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 3500 7900 3500
Connection ~ 6950 3400
Wire Wire Line
	7500 3500 7500 2700
Wire Wire Line
	7500 2700 6950 2700
Wire Wire Line
	6950 2700 6950 2800
Connection ~ 7500 3500
Wire Wire Line
	6400 3600 7700 3600
Wire Wire Line
	7700 3600 7700 3700
Wire Wire Line
	7700 3700 8200 3700
Wire Wire Line
	7850 3800 7850 3700
Connection ~ 7850 3700
Wire Wire Line
	8400 3500 8900 3500
Text HLabel 3100 2050 0    60   Input ~ 0
+VREF
Wire Wire Line
	3100 2050 3450 2050
Text HLabel 9250 4350 0    60   Input ~ 0
-15V
Text HLabel 9250 4700 0    60   Input ~ 0
AGND
Text HLabel 9250 4450 0    60   Input ~ 0
+15V
$Comp
L +5V #PWR060
U 1 1 52C9677D
P 9100 4600
F 0 "#PWR060" H 9100 4690 20  0001 C CNN
F 1 "+5V" H 9100 4690 30  0000 C CNN
F 2 "" H 9100 4600 60  0000 C CNN
F 3 "" H 9100 4600 60  0000 C CNN
	1    9100 4600
	1    0    0    -1  
$EndComp
$Comp
L ZENER_SOT23 D12
U 1 1 52C99A3C
P 2900 5350
F 0 "D12" H 2900 5450 50  0000 C CNN
F 1 "5V1" H 2900 5250 40  0000 C CNN
F 2 "" H 2900 5350 60  0000 C CNN
F 3 "" H 2900 5350 60  0000 C CNN
	1    2900 5350
	0    -1   -1   0   
$EndComp
$Comp
L ZENER_SOT23 D14
U 1 1 52C99A69
P 9900 3600
F 0 "D14" H 9900 3700 50  0000 C CNN
F 1 "5V1" H 9900 3500 40  0000 C CNN
F 2 "" H 9900 3600 60  0000 C CNN
F 3 "" H 9900 3600 60  0000 C CNN
	1    9900 3600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3100 3250 3450 3250
Wire Wire Line
	4550 3900 5600 3900
Wire Wire Line
	4550 4700 5100 4700
Wire Wire Line
	2250 4350 2600 4350
Wire Wire Line
	2600 4350 2600 4450
Wire Wire Line
	7000 4550 7000 3900
Wire Wire Line
	6400 3800 7250 3800
Wire Wire Line
	7250 3800 7250 6600
Text HLabel 10050 2200 2    60   Output ~ 0
Therm
Text HLabel 10050 2300 2    60   Output ~ 0
Volt1
Text HLabel 10050 2400 2    60   Output ~ 0
Volt2
Text HLabel 10050 2500 2    60   Output ~ 0
I_out
Wire Wire Line
	9650 4000 9650 2400
Wire Wire Line
	9650 2400 10050 2400
Wire Wire Line
	6950 3400 6950 3300
Wire Wire Line
	9750 3400 9750 2500
Wire Wire Line
	9750 2500 10050 2500
Wire Wire Line
	3450 2050 3450 2100
$Comp
L R R43
U 1 1 5318AD77
P 2600 6300
F 0 "R43" V 2680 6300 50  0000 C CNN
F 1 "RV2" V 2600 6300 50  0000 C CNN
F 2 "" H 2600 6300 60  0000 C CNN
F 3 "" H 2600 6300 60  0000 C CNN
	1    2600 6300
	1    0    0    -1  
$EndComp
$Comp
L R R44
U 1 1 536A5843
P 2600 6950
F 0 "R44" V 2680 6950 50  0000 C CNN
F 1 "RV1" V 2600 6950 50  0000 C CNN
F 2 "" H 2600 6950 60  0000 C CNN
F 3 "" H 2600 6950 60  0000 C CNN
	1    2600 6950
	1    0    0    -1  
$EndComp
$Comp
L C C20
U 1 1 536A5847
P 3150 6950
F 0 "C20" H 3200 7050 50  0000 L CNN
F 1 "C" H 3200 6850 50  0000 L CNN
F 2 "" H 3150 6950 60  0000 C CNN
F 3 "" H 3150 6950 60  0000 C CNN
	1    3150 6950
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P23
U 1 1 536A584A
P 1900 6650
F 0 "P23" V 1850 6650 40  0000 C CNN
F 1 "VOLTS2" V 1950 6650 40  0000 C CNN
F 2 "" H 1900 6650 60  0000 C CNN
F 3 "" H 1900 6650 60  0000 C CNN
	1    1900 6650
	-1   0    0    1   
$EndComp
$Comp
L AGND #PWR061
U 1 1 5318AD8F
P 2500 7300
F 0 "#PWR061" H 2500 7300 40  0001 C CNN
F 1 "AGND" H 2500 7230 50  0000 C CNN
F 2 "" H 2500 7300 60  0000 C CNN
F 3 "" H 2500 7300 60  0000 C CNN
	1    2500 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 6750 2250 7250
Wire Wire Line
	2250 7250 3150 7250
Wire Wire Line
	3150 7250 3150 7150
Wire Wire Line
	2900 7150 2900 7250
Connection ~ 2900 7250
Connection ~ 2600 7250
Wire Wire Line
	2600 6700 2600 6550
Connection ~ 2600 6600
Wire Wire Line
	7250 6600 2600 6600
Wire Wire Line
	3150 6750 3150 6600
Connection ~ 3150 6600
Wire Wire Line
	2900 6750 2900 6600
Connection ~ 2900 6600
Wire Wire Line
	2250 6550 2250 5950
Wire Wire Line
	2600 7250 2600 7200
Wire Wire Line
	2500 7250 2500 7300
Connection ~ 2500 7250
$Comp
L ZENER_SOT23 D13
U 1 1 5318ADA6
P 2900 6950
F 0 "D13" H 2900 7050 50  0000 C CNN
F 1 "5V1" H 2900 6850 40  0000 C CNN
F 2 "" H 2900 6950 60  0000 C CNN
F 3 "" H 2900 6950 60  0000 C CNN
	1    2900 6950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2250 5950 2600 5950
Wire Wire Line
	2600 5950 2600 6050
Wire Wire Line
	4400 3000 4400 2900
Wire Wire Line
	4400 2900 4700 2900
Text HLabel 7900 4900 0    60   Input ~ 0
+VREF
Wire Wire Line
	7900 4900 8200 4900
Wire Wire Line
	8200 4900 8200 4650
Wire Wire Line
	8200 3700 8200 4150
$Comp
L CONN_6 P25
U 1 1 536A5852
P 10300 4600
F 0 "P25" V 10250 4600 60  0000 C CNN
F 1 "CONN_6" V 10350 4600 60  0000 C CNN
F 2 "" H 10300 4600 60  0000 C CNN
F 3 "" H 10300 4600 60  0000 C CNN
	1    10300 4600
	1    0    0    -1  
$EndComp
Connection ~ 9750 3400
$Comp
L AGND #PWR062
U 1 1 5318B1CE
P 9900 3900
F 0 "#PWR062" H 9900 3900 40  0001 C CNN
F 1 "AGND" H 9900 3830 50  0000 C CNN
F 2 "" H 9900 3900 60  0000 C CNN
F 3 "" H 9900 3900 60  0000 C CNN
	1    9900 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 3900 9900 3800
Wire Wire Line
	8900 5300 9850 5300
Wire Wire Line
	9850 5300 9850 4850
Wire Wire Line
	9850 4850 9950 4850
Wire Wire Line
	9250 4700 9850 4700
Wire Wire Line
	9700 4700 9700 4800
Wire Wire Line
	9350 5250 9350 5300
Connection ~ 9350 5300
Wire Wire Line
	9350 4750 9350 4700
Connection ~ 9700 4700
Wire Wire Line
	8900 3500 8900 5300
Connection ~ 9350 4700
Wire Wire Line
	9100 4600 9450 4600
Wire Wire Line
	9250 4350 9950 4350
Wire Wire Line
	9450 4650 9950 4650
Wire Wire Line
	9450 4600 9450 4650
Wire Wire Line
	9250 4450 9550 4450
Wire Wire Line
	9550 4450 9550 4550
Wire Wire Line
	9550 4550 9950 4550
Wire Wire Line
	9850 4750 9950 4750
Wire Wire Line
	9850 4450 9850 4750
Wire Wire Line
	9850 4450 9950 4450
Connection ~ 9850 4700
Text Notes 2700 4500 0    60   ~ 0
THRU-HOLE
Text Notes 9100 5450 0    60   ~ 0
THRU-HOLE
Text Notes 2700 6150 0    60   ~ 0
THRU-HOLE
Wire Wire Line
	7350 3650 7350 5550
Wire Wire Line
	7350 5550 9550 5550
Wire Wire Line
	9550 5550 9550 4700
Connection ~ 9550 4700
Connection ~ 6700 3650
$EndSCHEMATC