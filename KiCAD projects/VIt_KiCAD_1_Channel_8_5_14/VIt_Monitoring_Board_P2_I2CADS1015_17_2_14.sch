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
Sheet 1 6
Title "VIt Monitoring Slave Unit"
Date "11 mar 2014"
Rev "1"
Comp "Product Health"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 3650 3050 850  800 
U 52C8088B
F0 "VIt_Board_ADCI2C" 50
F1 "VItBoardADCI2C.sch" 50
F2 "SDA" I R 4500 3450 60 
F3 "SCLK" I R 4500 3350 60 
F4 "Vin0" I L 3650 3250 60 
F5 "Vin1" I L 3650 3350 60 
F6 "Vin2" I L 3650 3450 60 
F7 "Vin3" I L 3650 3550 60 
F8 "DGND" I R 4500 3600 60 
F9 "AGND" I R 4500 3750 60 
$EndSheet
$Sheet
S 6550 3950 1100 1050
U 52C80240
F0 "PowerSupplyUnit" 50
F1 "VItBoardPSU.sch" 50
F2 "Vin" I R 7650 4300 60 
F3 "GND" I R 7650 4500 60 
F4 "+15V" O L 6550 4250 60 
F5 "AGND" O L 6550 4350 60 
F6 "-15V" O L 6550 4450 60 
F7 "DGND" O L 6550 4900 60 
F8 "+2V5" O L 6550 4750 60 
$EndSheet
$Sheet
S 6550 2450 1200 1000
U 52C8023E
F0 "RS485 Converter" 50
F1 "VItBoardMAX485.sch" 50
F2 "TxENABLE" I L 6550 2700 60 
F3 "Tx" I L 6550 2850 60 
F4 "Rx" O L 6550 3000 60 
F5 "RS485_A" I R 7750 2950 60 
F6 "RS485_B" I R 7750 2850 60 
F7 "RESET" O L 6550 3250 60 
$EndSheet
Wire Wire Line
	7650 4300 8950 4300
$Comp
L CONN_2 P7
U 1 1 52C89F68
P 9300 4400
F 0 "P7" V 9250 4400 40  0000 C CNN
F 1 "P_EXT" V 9350 4400 40  0000 C CNN
F 2 "" H 9300 4400 60  0000 C CNN
F 3 "" H 9300 4400 60  0000 C CNN
	1    9300 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 4500 8950 4500
Wire Wire Line
	1950 4750 6550 4750
Wire Wire Line
	2050 4450 6550 4450
Wire Wire Line
	2100 4350 6550 4350
Wire Wire Line
	2150 4250 6550 4250
$Sheet
S 4950 2600 1050 1200
U 52C8023C
F0 "MicroController" 50
F1 "VItBoardMicroController.sch" 50
F2 "Tx" O R 6000 2950 60 
F3 "Rx" I R 6000 3050 60 
F4 "TxENABLE" O R 6000 2850 60 
F5 "SDA_I2C" O L 4950 3450 60 
F6 "SCLK_I2C" O L 4950 3350 60 
F7 "MOSI" O L 4950 2900 60 
F8 "MISO" I L 4950 3000 60 
F9 "SCLK" O L 4950 3100 60 
F10 "~CS" O L 4950 2800 60 
F11 "RESET" I R 6000 3500 60 
$EndSheet
$Sheet
S 2400 2950 750  900 
U 53075907
F0 "VIt_Board_OPAMP" 50
F1 "VItBoardOPAMP.sch" 50
F2 "-15V" I L 2400 3150 60 
F3 "AGND" I L 2400 3250 60 
F4 "+15V" I L 2400 3350 60 
F5 "Therm" O R 3150 3250 60 
F6 "I_out" O R 3150 3550 60 
F7 "+VREF" I L 2400 3600 60 
F8 "Volt1" O R 3150 3350 60 
F9 "Volt2" O R 3150 3450 60 
$EndSheet
Wire Wire Line
	2150 4250 2150 3350
Wire Wire Line
	2150 3350 2400 3350
Wire Wire Line
	2100 4350 2100 3250
Wire Wire Line
	2100 3250 2400 3250
Wire Wire Line
	2050 4450 2050 3150
Wire Wire Line
	2050 3150 2400 3150
Wire Wire Line
	1950 4750 1950 3600
Wire Wire Line
	1950 3600 2400 3600
Wire Wire Line
	4500 3750 4650 3750
Wire Wire Line
	4650 3750 4650 4350
Connection ~ 4650 4350
Wire Wire Line
	4500 3600 4700 3600
Wire Wire Line
	4700 3600 4700 4900
Wire Wire Line
	4700 4900 6550 4900
Wire Wire Line
	4500 3350 4950 3350
Wire Wire Line
	4500 3450 4950 3450
Wire Wire Line
	3150 3250 3650 3250
Wire Wire Line
	3150 3350 3650 3350
Wire Wire Line
	3150 3450 3650 3450
Wire Wire Line
	3150 3550 3650 3550
Wire Wire Line
	6000 2850 6250 2850
Wire Wire Line
	6250 2850 6250 2700
Wire Wire Line
	6250 2700 6550 2700
Wire Wire Line
	6000 2950 6300 2950
Wire Wire Line
	6300 2950 6300 2850
Wire Wire Line
	6300 2850 6550 2850
Wire Wire Line
	6000 3050 6350 3050
Wire Wire Line
	6350 3050 6350 3000
Wire Wire Line
	6350 3000 6550 3000
$Comp
L CONN_4 P8
U 1 1 53075E85
P 9750 2800
F 0 "P8" V 9700 2800 50  0000 C CNN
F 1 "RS485_IN" V 9800 2800 50  0000 C CNN
F 2 "" H 9750 2800 60  0000 C CNN
F 3 "" H 9750 2800 60  0000 C CNN
	1    9750 2800
	1    0    0    -1  
$EndComp
$Comp
L CONN_4 P9
U 1 1 53075E94
P 9750 3650
F 0 "P9" V 9700 3650 50  0000 C CNN
F 1 "RS485_OUT" V 9800 3650 50  0000 C CNN
F 2 "" H 9750 3650 60  0000 C CNN
F 3 "" H 9750 3650 60  0000 C CNN
	1    9750 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 2650 8800 4300
Wire Wire Line
	8800 3500 9400 3500
Connection ~ 8800 4300
Wire Wire Line
	8800 2650 9400 2650
Connection ~ 8800 3500
Wire Wire Line
	6000 3500 6350 3500
Wire Wire Line
	6350 3500 6350 3250
Wire Wire Line
	6350 3250 6550 3250
$Comp
L CONN_1 P5
U 1 1 531DF2B9
P 9150 5650
F 0 "P5" H 9230 5650 40  0000 L CNN
F 1 "CONN_1" H 9150 5705 30  0001 C CNN
F 2 "" H 9150 5650 60  0000 C CNN
F 3 "" H 9150 5650 60  0000 C CNN
	1    9150 5650
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 P6
U 1 1 531DF2C8
P 9150 5750
F 0 "P6" H 9230 5750 40  0000 L CNN
F 1 "CONN_1" H 9150 5805 30  0001 C CNN
F 2 "" H 9150 5750 60  0000 C CNN
F 3 "" H 9150 5750 60  0000 C CNN
	1    9150 5750
	1    0    0    -1  
$EndComp
NoConn ~ 9000 5650
NoConn ~ 9000 5750
Wire Wire Line
	7750 2850 7950 2850
Wire Wire Line
	7950 2850 7950 2750
Wire Wire Line
	7950 2750 9400 2750
Wire Wire Line
	7750 2950 8000 2950
Wire Wire Line
	8000 2950 8000 2850
Wire Wire Line
	8000 2850 9400 2850
Wire Wire Line
	9400 2950 8900 2950
Wire Wire Line
	8900 2950 8900 4500
Wire Wire Line
	8900 3800 9400 3800
Wire Wire Line
	9400 3600 9200 3600
Wire Wire Line
	9200 3600 9200 2750
Connection ~ 9200 2750
Wire Wire Line
	9400 3700 9100 3700
Wire Wire Line
	9100 3700 9100 2850
Connection ~ 9100 2850
Connection ~ 8900 4500
Connection ~ 8900 3800
$EndSCHEMATC
