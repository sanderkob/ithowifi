EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_01x07 J2
U 1 1 5934E4A6
P 2050 3900
F 0 "J2" H 2050 4250 50  0000 C CNN
F 1 "CONN_01X07" V 2150 3900 50  0000 C CNN
F 2 "ftdi_header:ftdi_header-MA07-1" H 2050 3900 50  0001 C CNN
F 3 "" H 2050 3900 50  0001 C CNN
	1    2050 3900
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5934E63C
P 3725 3600
F 0 "C4" H 3750 3700 50  0000 L CNN
F 1 "0.1uF" H 3750 3500 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 3763 3450 50  0001 C CNN
F 3 "" H 3725 3600 50  0001 C CNN
	1    3725 3600
	0    1    -1   0   
$EndComp
Text GLabel 2800 3700 2    60   Input ~ 0
D1/TX0
Text GLabel 2800 3800 2    60   Input ~ 0
D0/RX0
NoConn ~ 2250 4000
$Comp
L power:GND #PWR04
U 1 1 5934E8F7
P 2350 4250
F 0 "#PWR04" H 2350 4000 50  0001 C CNN
F 1 "GND" H 2350 4100 50  0000 C CNN
F 2 "" H 2350 4250 50  0001 C CNN
F 3 "" H 2350 4250 50  0001 C CNN
	1    2350 4250
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5944C321
P 4150 3300
F 0 "R2" V 4230 3300 50  0000 C CNN
F 1 "10K" V 4150 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 4080 3300 50  0001 C CNN
F 3 "" H 4150 3300 50  0001 C CNN
	1    4150 3300
	1    0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 5944C4AA
P 3975 3300
F 0 "R1" V 4055 3300 50  0000 C CNN
F 1 "10K" V 3975 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 3905 3300 50  0001 C CNN
F 3 "" H 3975 3300 50  0001 C CNN
	1    3975 3300
	1    0    0    1   
$EndComp
Text GLabel 4325 3800 2    60   Input ~ 0
D0
Text GLabel 4150 2900 1    60   Input ~ 0
+3V3
Text GLabel 2350 3375 1    60   Input ~ 0
+3V3
Wire Wire Line
	2350 4250 2350 4100
Wire Wire Line
	2350 4100 2250 4100
Wire Wire Line
	2350 3900 2250 3900
Wire Wire Line
	2250 3800 2800 3800
Wire Wire Line
	2250 3700 2800 3700
Wire Wire Line
	3975 3450 3975 3600
Connection ~ 3975 3600
Wire Wire Line
	3975 3150 3975 3000
Wire Wire Line
	3975 3000 4150 3000
Connection ~ 4150 3000
Wire Wire Line
	4150 2900 4150 3000
Wire Wire Line
	2350 3900 2350 3375
Wire Wire Line
	4150 3000 4150 3150
$Comp
L nrg_watch:ESP32-WROOM U2
U 1 1 5E79D0D5
P 6850 4100
F 0 "U2" H 6825 5487 60  0000 C CNN
F 1 "ESP32-WROOM" H 6825 5381 60  0000 C CNN
F 2 "ESP32-footprints-Lib:ESP32-WROOM" H 7200 5450 60  0001 C CNN
F 3 "" H 6400 4550 60  0001 C CNN
	1    6850 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5E79D0DB
P 5700 5425
AR Path="/5E79D0DB" Ref="#PWR03"  Part="1" 
AR Path="/5BB18378/5E79D0DB" Ref="#PWR?"  Part="1" 
AR Path="/5FAE7423/5E79D0DB" Ref="#PWR03"  Part="1" 
F 0 "#PWR03" H 5700 5175 50  0001 C CNN
F 1 "GND" H 5700 5275 50  0000 C CNN
F 2 "" H 5700 5425 50  0001 C CNN
F 3 "" H 5700 5425 50  0001 C CNN
	1    5700 5425
	1    0    0    -1  
$EndComp
Text GLabel 5650 4200 0    60   Input ~ 0
D33
Text GLabel 5650 4300 0    60   Input ~ 0
D25
Wire Wire Line
	5900 4300 5650 4300
Wire Wire Line
	5650 4200 5900 4200
Text GLabel 5650 4400 0    60   Input ~ 0
D26
Text GLabel 5650 4600 0    60   Input ~ 0
D14
Text GLabel 5650 4500 0    60   Input ~ 0
D27
Wire Wire Line
	5900 4600 5650 4600
Wire Wire Line
	5900 4500 5650 4500
Wire Wire Line
	5650 4400 5900 4400
Wire Wire Line
	5700 5425 5700 5250
Wire Wire Line
	5700 4800 5900 4800
Wire Wire Line
	6400 5150 6400 5250
Wire Wire Line
	6400 5250 5700 5250
Connection ~ 5700 5250
Wire Wire Line
	5700 5250 5700 4800
$Comp
L power:GND #PWR05
U 1 1 5E79D0F8
P 7925 4750
AR Path="/5E79D0F8" Ref="#PWR05"  Part="1" 
AR Path="/5BB18378/5E79D0F8" Ref="#PWR?"  Part="1" 
AR Path="/5FAE7423/5E79D0F8" Ref="#PWR05"  Part="1" 
F 0 "#PWR05" H 7925 4500 50  0001 C CNN
F 1 "GND" H 7925 4600 50  0000 C CNN
F 2 "" H 7925 4750 50  0001 C CNN
F 3 "" H 7925 4750 50  0001 C CNN
	1    7925 4750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7925 4750 7850 4750
Wire Wire Line
	7750 4650 7850 4650
Wire Wire Line
	7850 4650 7850 4750
Connection ~ 7850 4750
Wire Wire Line
	7850 4750 7750 4750
Text GLabel 8150 3350 2    60   Input ~ 0
D23_MOSI
Text GLabel 8150 4050 2    60   Input ~ 0
D18_SCK
Wire Wire Line
	7750 4050 8150 4050
Wire Wire Line
	7750 3950 8150 3950
Wire Wire Line
	7750 3350 8150 3350
Text GLabel 8150 3650 2    60   Input ~ 0
D0/RX0
Text GLabel 8150 3550 2    60   Input ~ 0
D1/TX0
Wire Wire Line
	7750 3650 8150 3650
Wire Wire Line
	7750 3550 8150 3550
Text GLabel 8150 3450 2    60   Input ~ 0
D22_SCL
Text GLabel 8150 3750 2    60   Input ~ 0
D21_SDA
Text GLabel 8150 4350 2    60   Input ~ 0
D16_TX1
Wire Wire Line
	7750 3450 8150 3450
Wire Wire Line
	7750 3750 8150 3750
Wire Wire Line
	8150 4350 7750 4350
Text GLabel 8150 4550 2    60   Input ~ 0
D0
Wire Wire Line
	8150 4550 7750 4550
$Comp
L Device:C C3
U 1 1 5E79D11F
P 4925 4500
AR Path="/5E79D11F" Ref="C3"  Part="1" 
AR Path="/5BB18378/5E79D11F" Ref="C?"  Part="1" 
AR Path="/5FAE7423/5E79D11F" Ref="C3"  Part="1" 
F 0 "C3" H 4950 4600 50  0000 L CNN
F 1 "0.1uF" H 4950 4400 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 4963 4350 50  0001 C CNN
F 3 "" H 4925 4500 50  0001 C CNN
	1    4925 4500
	-1   0    0    -1  
$EndComp
Text GLabel 8150 3950 2    60   Input ~ 0
D19_MISO
Wire Wire Line
	7750 4250 8150 4250
$Comp
L Device:C C6
U 1 1 5EA3F596
P 5250 4500
AR Path="/5EA3F596" Ref="C6"  Part="1" 
AR Path="/5BB18378/5EA3F596" Ref="C?"  Part="1" 
AR Path="/5FAE7423/5EA3F596" Ref="C6"  Part="1" 
F 0 "C6" H 5275 4600 50  0000 L CNN
F 1 "0.1uF" H 5275 4400 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 5288 4350 50  0001 C CNN
F 3 "" H 5250 4500 50  0001 C CNN
	1    5250 4500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5250 4350 5250 3500
Connection ~ 5250 3500
Wire Wire Line
	5250 3500 5900 3500
Wire Wire Line
	5250 4650 5250 5250
Connection ~ 5250 5250
Wire Wire Line
	5250 5250 5700 5250
$Comp
L Device:CP C5
U 1 1 5EA99574
P 5075 4050
F 0 "C5" H 5100 4150 50  0000 L CNN
F 1 "10uF" H 5100 3950 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 5113 3900 50  0001 C CNN
F 3 "" H 5075 4050 50  0001 C CNN
	1    5075 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5075 3900 5075 3500
Connection ~ 5075 3500
Wire Wire Line
	5075 3500 5250 3500
Wire Wire Line
	5075 4200 5075 5250
Connection ~ 5075 5250
Wire Wire Line
	5075 5250 5250 5250
Wire Wire Line
	4925 4350 4925 3600
Connection ~ 4925 3600
Wire Wire Line
	4925 3600 5900 3600
Wire Wire Line
	4925 4650 4925 5250
Wire Wire Line
	4925 5250 5075 5250
Text GLabel 5650 4000 0    50   Input ~ 0
A35
Text GLabel 5650 3900 0    50   Input ~ 0
A34
Text GLabel 5650 3800 0    50   Input ~ 0
A39
Wire Wire Line
	5900 3800 5650 3800
Wire Wire Line
	5650 3900 5900 3900
Wire Wire Line
	5900 4000 5650 4000
Wire Wire Line
	8150 4450 7750 4450
Wire Wire Line
	5650 4100 5900 4100
Text GLabel 5650 4100 0    50   Input ~ 0
D32
Text GLabel 8150 4250 2    50   Input ~ 0
D17
Text GLabel 8150 4450 2    50   Input ~ 0
D4
$Comp
L rgb-led:TEST VREF1
U 1 1 5F799209
P 7500 5550
F 0 "VREF1" H 7578 5688 50  0000 L CNN
F 1 "TEST" H 7578 5597 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_2.0x2.0mm_Drill1.0mm" H 7500 5550 50  0001 C CNN
F 3 "" H 7500 5550 50  0001 C CNN
	1    7500 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 5150 7200 5725
Wire Wire Line
	7200 5725 7500 5725
Wire Wire Line
	7500 5725 7500 5550
Wire Wire Line
	3875 3600 3975 3600
Wire Wire Line
	4175 3000 5075 3000
Wire Wire Line
	5075 3000 5075 3500
Wire Wire Line
	4325 3800 4150 3800
$Comp
L Device:D_Zener D?
U 1 1 5FB25DAC
P 3725 3800
F 0 "D?" H 3725 4016 50  0000 C CNN
F 1 "D_Zener" H 3725 3925 50  0000 C CNN
F 2 "" H 3725 3800 50  0001 C CNN
F 3 "~" H 3725 3800 50  0001 C CNN
	1    3725 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3875 3800 4150 3800
Connection ~ 4150 3800
Wire Wire Line
	2250 3600 3375 3600
Wire Wire Line
	3575 3800 3375 3800
Wire Wire Line
	3375 3800 3375 3600
Connection ~ 3375 3600
Wire Wire Line
	3375 3600 3575 3600
Wire Wire Line
	3975 3600 4925 3600
Wire Wire Line
	4150 3450 4150 3800
Text GLabel 2525 4200 2    60   Input ~ 0
UPDI
Wire Wire Line
	2250 4200 2525 4200
Text GLabel 8150 4150 2    60   Input ~ 0
D5_SS
Wire Wire Line
	7750 4150 8150 4150
$EndSCHEMATC
