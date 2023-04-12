EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
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
L Regulator_Switching:R-78E5.0-0.5 R-78E3.3
U 1 1 5E596DC0
P 2700 6750
F 0 "R-78E3.3" H 2700 6992 50  0000 C CNN
F 1 "U2" H 2700 6901 50  0000 C CNN
F 2 "Converter_DCDC:Converter_DCDC_RECOM_R-78E-0.5_THT" H 2750 6500 50  0001 L CIN
F 3 "https://www.recom-power.com/pdf/Innoline/R-78Exx-0.5.pdf" H 2700 6750 50  0001 C CNN
	1    2700 6750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5E59EF11
P 9975 3700
F 0 "R1" H 10025 3725 50  0000 L CNN
F 1 "R10K" H 10050 3650 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9905 3700 50  0001 C CNN
F 3 "~" H 9975 3700 50  0001 C CNN
F 4 "C17414" H 9975 3700 50  0001 C CNN "LCSC"
	1    9975 3700
	-1   0    0    1   
$EndComp
Wire Wire Line
	4475 6750 4475 6675
$Comp
L power:+5V #PWR07
U 1 1 5E5C3414
P 11175 3325
F 0 "#PWR07" H 11175 3175 50  0001 C CNN
F 1 "+5V" H 11190 3498 50  0000 C CNN
F 2 "" H 11175 3325 50  0001 C CNN
F 3 "" H 11175 3325 50  0001 C CNN
	1    11175 3325
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR06
U 1 1 5E626D17
P 10175 3325
F 0 "#PWR06" H 10175 3175 50  0001 C CNN
F 1 "+3V3" H 10190 3498 50  0000 C CNN
F 2 "" H 10175 3325 50  0001 C CNN
F 3 "" H 10175 3325 50  0001 C CNN
	1    10175 3325
	1    0    0    -1  
$EndComp
Wire Wire Line
	8875 5425 8875 5225
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J2
U 1 1 5E609161
P 11525 4675
F 0 "J2" H 11575 4992 50  0000 C CNN
F 1 "conn" H 11575 4901 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x04_P2.54mm_Vertical" H 11525 4675 50  0001 C CNN
F 3 "~" H 11525 4675 50  0001 C CNN
	1    11525 4675
	1    0    0    1   
$EndComp
Wire Wire Line
	11325 4475 11175 4475
Wire Wire Line
	11325 4575 11175 4575
Wire Wire Line
	11175 4575 11175 5225
$Comp
L Transistor_FET:BSS138 Q1
U 1 1 5E6CE08C
P 10175 4050
F 0 "Q1" V 10424 4050 50  0000 C CNN
F 1 "BSS138" V 10515 4050 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 10375 3975 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/BS/BSS138.pdf" H 10175 4050 50  0001 L CNN
F 4 "C170166" H 10175 4050 50  0001 C CNN "LCSC"
	1    10175 4050
	0    1    1    0   
$EndComp
$Comp
L Transistor_FET:BSS138 Q2
U 1 1 5E6D9A33
P 10725 3850
F 0 "Q2" V 10974 3850 50  0000 C CNN
F 1 "BSS138" V 11065 3850 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 10925 3775 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/BS/BSS138.pdf" H 10725 3850 50  0001 L CNN
F 4 "C170166" H 10725 3850 50  0001 C CNN "LCSC"
	1    10725 3850
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5E6FB711
P 11175 3675
F 0 "R3" H 11225 3700 50  0000 L CNN
F 1 "R10K" H 11250 3625 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 11105 3675 50  0001 C CNN
F 3 "~" H 11175 3675 50  0001 C CNN
F 4 "C17414" H 11175 3675 50  0001 C CNN "LCSC"
	1    11175 3675
	-1   0    0    1   
$EndComp
$Comp
L Device:R R4
U 1 1 5E6FC65E
P 11600 3675
F 0 "R4" H 11650 3700 50  0000 L CNN
F 1 "R10K" H 11675 3625 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 11530 3675 50  0001 C CNN
F 3 "~" H 11600 3675 50  0001 C CNN
F 4 "C17414" H 11600 3675 50  0001 C CNN "LCSC"
	1    11600 3675
	-1   0    0    1   
$EndComp
Wire Wire Line
	11175 4150 11175 4475
Wire Wire Line
	12050 3950 12050 4475
Wire Wire Line
	11825 4475 12050 4475
Wire Wire Line
	10375 4150 11175 4150
Wire Wire Line
	10175 3325 10175 3450
Wire Wire Line
	10725 3450 10725 3650
Connection ~ 10175 3450
Wire Wire Line
	10175 3450 10175 3850
Wire Wire Line
	9975 3550 9975 3450
Wire Wire Line
	9975 3450 10175 3450
Wire Wire Line
	9975 3850 9975 4150
Wire Wire Line
	11175 3325 11175 3450
Wire Wire Line
	11175 3450 11600 3450
Wire Wire Line
	11600 3450 11600 3525
Connection ~ 11175 3450
Wire Wire Line
	11175 3450 11175 3525
Wire Wire Line
	11600 3825 11600 3950
Connection ~ 11600 3950
Wire Wire Line
	11600 3950 12050 3950
Wire Wire Line
	11175 3825 11175 4150
Connection ~ 11175 4150
Wire Wire Line
	10925 3950 11600 3950
Wire Wire Line
	10525 3850 10525 3950
Wire Wire Line
	10525 3550 10525 3450
Connection ~ 10525 3450
Wire Wire Line
	10525 3450 10725 3450
Wire Wire Line
	10175 3450 10525 3450
Text GLabel 12050 4175 0    50   Input ~ 0
SCL
Text GLabel 11175 4300 0    50   Input ~ 0
SDA
Connection ~ 10525 3950
Connection ~ 9975 4150
$Comp
L power:+3V3 #PWR03
U 1 1 5E995409
P 5975 6350
F 0 "#PWR03" H 5975 6200 50  0001 C CNN
F 1 "+3V3" H 5990 6523 50  0000 C CNN
F 2 "" H 5975 6350 50  0001 C CNN
F 3 "" H 5975 6350 50  0001 C CNN
	1    5975 6350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5E59F4DA
P 10525 3700
F 0 "R2" H 10200 3725 50  0000 L CNN
F 1 "R10K" H 10250 3650 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10455 3700 50  0001 C CNN
F 3 "~" H 10525 3700 50  0001 C CNN
F 4 "C17414" H 10525 3700 50  0001 C CNN "LCSC"
	1    10525 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5975 6350 5975 6450
Wire Wire Line
	6100 6850 6100 6975
$Comp
L Device:R R5
U 1 1 5E6D60E1
P 6100 6700
F 0 "R5" H 6150 6725 50  0000 L CNN
F 1 "R100" H 6175 6650 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6030 6700 50  0001 C CNN
F 3 "~" H 6100 6700 50  0001 C CNN
F 4 "C17408" H 6100 6700 50  0001 C CNN "LCSC"
	1    6100 6700
	1    0    0    -1  
$EndComp
$Comp
L Device:LED LED2
U 1 1 5E6D3DEE
P 6100 7125
F 0 "LED2" H 6093 6870 50  0000 C CNN
F 1 "itho status" H 6093 6961 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 6100 7125 50  0001 C CNN
F 3 "~" H 6100 7125 50  0001 C CNN
F 4 "C2293" H 6100 7125 50  0001 C CNN "LCSC"
	1    6100 7125
	0    -1   -1   0   
$EndComp
Connection ~ 9675 7825
Wire Wire Line
	11150 7100 11150 7825
Wire Wire Line
	10675 6900 10875 6900
$Comp
L Connector:Conn_Coaxial J3
U 1 1 5F9B6F27
P 11150 6900
F 0 "J3" H 11250 6875 50  0000 L CNN
F 1 "Conn_Coaxial" H 11250 6784 50  0000 L CNN
F 2 "Connector_Coaxial:SMA_Amphenol_132289_EdgeMount" H 11150 6900 50  0001 C CNN
F 3 " ~" H 11150 6900 50  0001 C CNN
	1    11150 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9575 7825 9575 7700
Connection ~ 9575 7825
Wire Wire Line
	9575 7825 9675 7825
Wire Wire Line
	9675 7825 9675 7700
Wire Wire Line
	9575 7825 9575 7925
Wire Wire Line
	9475 7825 9575 7825
Wire Wire Line
	9475 7700 9475 7825
$Comp
L power:GND #PWR0102
U 1 1 5F9B9571
P 9575 7925
F 0 "#PWR0102" H 9575 7675 50  0001 C CNN
F 1 "GND" H 9580 7752 50  0000 C CNN
F 2 "" H 9575 7925 50  0001 C CNN
F 3 "" H 9575 7925 50  0001 C CNN
	1    9575 7925
	1    0    0    -1  
$EndComp
Wire Wire Line
	9575 5975 9575 6100
$Comp
L power:+3V3 #PWR0101
U 1 1 5F9B0820
P 9575 5975
F 0 "#PWR0101" H 9575 5825 50  0001 C CNN
F 1 "+3V3" H 9590 6148 50  0000 C CNN
F 2 "" H 9575 5975 50  0001 C CNN
F 3 "" H 9575 5975 50  0001 C CNN
	1    9575 5975
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 7200 8475 7200
Wire Wire Line
	8475 6900 8150 6900
Wire Wire Line
	8475 6700 8150 6700
Wire Wire Line
	8150 6600 8475 6600
Text GLabel 8150 7200 0    50   Input ~ 0
D4_IRQ
Text GLabel 8150 6900 0    50   Input ~ 0
D5_SS
Text GLabel 8150 6600 0    50   Input ~ 0
D23_MOSI
Text GLabel 8150 6700 0    50   Input ~ 0
D19_MISO
Text GLabel 8150 6800 0    50   Input ~ 0
D18_SCK
$Comp
L power:GND #PWR05
U 1 1 5E5C19D8
P 8875 5425
F 0 "#PWR05" H 8875 5175 50  0001 C CNN
F 1 "GND" H 8880 5252 50  0000 C CNN
F 2 "" H 8875 5425 50  0001 C CNN
F 3 "" H 8875 5425 50  0001 C CNN
	1    8875 5425
	1    0    0    -1  
$EndComp
$Comp
L nrg_watch:CC1101-868MHz-Module U2
U 1 1 5F961074
P 9575 6900
F 0 "U2" H 10719 6953 60  0000 L CNN
F 1 "CC1101-868MHz-Module" H 10719 6847 60  0000 L CNN
F 2 "nrg_watch:CC1101-868MHz-Module" H 9575 6900 60  0001 C CNN
F 3 "http://wireless-tag.com/Public/upload/file/p19u6lm0jr1dl21ffgtki1oeuen3.pdf" H 9575 6900 60  0001 C CNN
	1    9575 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 7275 6100 7450
$Comp
L Connector_Generic:Conn_01x07 J?
U 1 1 5FBF50CE
P 1925 3400
AR Path="/5FAE7423/5FBF50CE" Ref="J?"  Part="1" 
AR Path="/5FBF50CE" Ref="J1"  Part="1" 
F 0 "J1" H 1925 3750 50  0000 C CNN
F 1 "CONN_01X07" V 2025 3400 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x07_P2.54mm_Vertical" H 1925 3400 50  0001 C CNN
F 3 "" H 1925 3400 50  0001 C CNN
	1    1925 3400
	-1   0    0    -1  
$EndComp
Text GLabel 2675 3200 2    60   Input ~ 0
D1/TX0
NoConn ~ 2125 3500
$Comp
L power:GND #PWR?
U 1 1 5FBF50DD
P 2225 3750
AR Path="/5FAE7423/5FBF50DD" Ref="#PWR?"  Part="1" 
AR Path="/5FBF50DD" Ref="#PWR01"  Part="1" 
F 0 "#PWR01" H 2225 3500 50  0001 C CNN
F 1 "GND" H 2225 3600 50  0000 C CNN
F 2 "" H 2225 3750 50  0001 C CNN
F 3 "" H 2225 3750 50  0001 C CNN
	1    2225 3750
	-1   0    0    -1  
$EndComp
Text GLabel 5200 2025 1    60   Input ~ 0
+3V3
Text GLabel 2225 2875 1    60   Input ~ 0
+3V3
Wire Wire Line
	2225 3750 2225 3600
Wire Wire Line
	2225 3600 2125 3600
Wire Wire Line
	2225 3400 2125 3400
Wire Wire Line
	2125 3300 2675 3300
Wire Wire Line
	2125 3200 2675 3200
Wire Wire Line
	5200 2025 5200 2175
Wire Wire Line
	2225 3400 2225 2875
$Comp
L nrg_watch:ESP32-WROOM U?
U 1 1 5FBF50FF
P 6725 3600
AR Path="/5FAE7423/5FBF50FF" Ref="U?"  Part="1" 
AR Path="/5FBF50FF" Ref="U1"  Part="1" 
F 0 "U1" H 6700 4987 60  0000 C CNN
F 1 "ESP32-WROOM" H 6700 4881 60  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 7075 4950 60  0001 C CNN
F 3 "" H 6275 4050 60  0001 C CNN
F 4 "C473012" H 6725 3600 50  0001 C CNN "LCSC"
	1    6725 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5575 4300 5775 4300
Wire Wire Line
	7625 4150 7725 4150
Wire Wire Line
	7725 4150 7725 4250
Wire Wire Line
	7725 4250 7625 4250
Text GLabel 8025 2850 2    60   Input ~ 0
D23_MOSI
Text GLabel 8025 3550 2    60   Input ~ 0
D18_SCK
Wire Wire Line
	7625 3550 8025 3550
Wire Wire Line
	7625 3450 8025 3450
Wire Wire Line
	7625 2850 8025 2850
Text GLabel 8025 3150 2    60   Input ~ 0
D0/RX0
Text GLabel 8025 3050 2    60   Input ~ 0
D1/TX0
Wire Wire Line
	7625 3150 8025 3150
Wire Wire Line
	7625 3050 8025 3050
Text GLabel 8025 4050 2    60   Input ~ 0
D0
Wire Wire Line
	8025 4050 7625 4050
Text GLabel 8025 3450 2    60   Input ~ 0
D19_MISO
$Comp
L Device:C C5
U 1 1 5FBF513F
P 3975 7075
AR Path="/5FBF513F" Ref="C5"  Part="1" 
AR Path="/5BB18378/5FBF513F" Ref="C?"  Part="1" 
AR Path="/5FAE7423/5FBF513F" Ref="C?"  Part="1" 
F 0 "C5" H 4000 7175 50  0000 L CNN
F 1 "0.1uF" H 4000 6975 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4013 6925 50  0001 C CNN
F 3 "" H 3975 7075 50  0001 C CNN
F 4 "C49678" H 3975 7075 50  0001 C CNN "LCSC"
	1    3975 7075
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8025 3950 7625 3950
Text GLabel 8025 3950 2    50   Input ~ 0
D4_IRQ
Wire Wire Line
	2125 3100 2525 3100
Text GLabel 8025 3650 2    60   Input ~ 0
D5_SS
Wire Wire Line
	7625 3650 8025 3650
Wire Wire Line
	8950 3250 8950 3075
Wire Wire Line
	7625 3250 8950 3250
Wire Wire Line
	7725 4250 7725 5225
Connection ~ 7725 4250
Connection ~ 7725 5225
Wire Wire Line
	6275 4650 6275 5225
Connection ~ 6275 5225
Wire Wire Line
	6275 5225 7725 5225
Wire Wire Line
	5575 4300 5575 5225
Connection ~ 5575 5225
Wire Wire Line
	5575 5225 6275 5225
Wire Wire Line
	9675 3950 9675 2950
Wire Wire Line
	9675 3950 10525 3950
Wire Wire Line
	9525 4150 9525 3075
Wire Wire Line
	9525 4150 9975 4150
Wire Wire Line
	8150 6800 8475 6800
$Comp
L Device:C C?
U 1 1 5FE55EC6
P 1975 7075
AR Path="/5FAE7423/5FE55EC6" Ref="C?"  Part="1" 
AR Path="/5FE55EC6" Ref="C6"  Part="1" 
F 0 "C6" H 2000 7175 50  0000 L CNN
F 1 "10uF" H 2000 6975 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2013 6925 50  0001 C CNN
F 3 "" H 1975 7075 50  0001 C CNN
F 4 "C110053" H 1975 7075 50  0001 C CNN "LCSC"
	1    1975 7075
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 6750 1975 6750
Connection ~ 3975 6750
Wire Wire Line
	3400 6925 3400 6750
Wire Wire Line
	3400 7225 3400 7425
Wire Wire Line
	2700 7425 2700 7050
Wire Wire Line
	2700 7425 1975 7425
Wire Wire Line
	1975 7425 1975 7225
Connection ~ 2700 7425
Wire Wire Line
	3975 7425 3975 7225
Wire Wire Line
	1975 6925 1975 6750
Connection ~ 1975 6750
Wire Wire Line
	1975 6750 2400 6750
Wire Wire Line
	2700 7625 2700 7425
$Comp
L power:GND #PWR0104
U 1 1 5FEB3F67
P 2700 7625
F 0 "#PWR0104" H 2700 7375 50  0001 C CNN
F 1 "GND" H 2705 7452 50  0000 C CNN
F 2 "" H 2700 7625 50  0001 C CNN
F 3 "" H 2700 7625 50  0001 C CNN
	1    2700 7625
	1    0    0    -1  
$EndComp
$Comp
L Device:LED LED1
U 1 1 5FECC45C
P 5850 7125
F 0 "LED1" H 5843 6870 50  0000 C CNN
F 1 "WIFI status" H 5843 6961 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 5850 7125 50  0001 C CNN
F 3 "~" H 5850 7125 50  0001 C CNN
F 4 "C2293" H 5850 7125 50  0001 C CNN "LCSC"
	1    5850 7125
	0    1    -1   0   
$EndComp
Wire Wire Line
	3975 6750 3975 6925
$Comp
L Device:R R?
U 1 1 5FB2CF38
P 5200 4400
AR Path="/5FAE7423/5FB2CF38" Ref="R?"  Part="1" 
AR Path="/5FB2CF38" Ref="R10"  Part="1" 
F 0 "R10" V 5280 4400 50  0000 C CNN
F 1 "R10K" V 5200 4400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5130 4400 50  0001 C CNN
F 3 "" H 5200 4400 50  0001 C CNN
F 4 "C17414" H 5200 4400 50  0001 C CNN "LCSC"
	1    5200 4400
	1    0    0    1   
$EndComp
Wire Wire Line
	5200 4550 5200 5225
Wire Wire Line
	5200 5225 5575 5225
Wire Wire Line
	5775 4100 5200 4100
Wire Wire Line
	5200 4100 5200 4250
Connection ~ 5200 4100
Wire Wire Line
	5200 3000 5775 3000
Wire Wire Line
	7725 5225 8875 5225
Wire Wire Line
	2775 4850 3050 4850
Text GLabel 1700 4850 0    60   Input ~ 0
D1/TX0
Wire Wire Line
	1700 4950 1975 4950
Wire Wire Line
	1700 4850 1975 4850
Wire Wire Line
	1700 5050 1975 5050
Text GLabel 1700 4950 0    60   Input ~ 0
D0/RX0
$Comp
L power:GND #PWR?
U 1 1 60096075
P 2900 5225
AR Path="/5FAE7423/60096075" Ref="#PWR?"  Part="1" 
AR Path="/60096075" Ref="#PWR0105"  Part="1" 
F 0 "#PWR0105" H 2900 4975 50  0001 C CNN
F 1 "GND" H 2900 5075 50  0000 C CNN
F 2 "" H 2900 5225 50  0001 C CNN
F 3 "" H 2900 5225 50  0001 C CNN
	1    2900 5225
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2775 4950 2900 4950
Wire Wire Line
	2900 4950 2900 5225
Text GLabel 2525 2875 1    50   Input ~ 0
DTR
Wire Wire Line
	2525 2875 2525 3100
Connection ~ 2525 3100
Text GLabel 3050 4850 2    50   Input ~ 0
DTR
Text GLabel 1700 5050 0    60   Input ~ 0
+3V3
$Comp
L nrg_watch:TC2030-MCP-NL J4
U 1 1 60167DAA
P 2375 4950
F 0 "J4" H 2375 5315 50  0000 C CNN
F 1 "TC2030-MCP-NL" H 2375 5224 50  0000 C CNN
F 2 "nrg_watch:TC2020-MCP-NL" H 2375 5200 50  0001 C CNN
F 3 "" H 2375 5200 50  0001 C CNN
	1    2375 4950
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 60133A20
P 10300 10275
F 0 "H2" H 10400 10321 50  0000 L CNN
F 1 "MountingHole" H 10400 10230 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.5mm" H 10300 10275 50  0001 C CNN
F 3 "~" H 10300 10275 50  0001 C CNN
	1    10300 10275
	1    0    0    -1  
$EndComp
Text GLabel 9200 2950 1    50   Input ~ 0
SCL_L
Text GLabel 9200 3075 3    50   Input ~ 0
SDA_L
Text GLabel 5750 3600 0    50   Input ~ 0
SCL_L
Text GLabel 5750 3900 0    50   Input ~ 0
SDA_L
Wire Wire Line
	5775 3700 5775 3600
Wire Wire Line
	5750 3600 5775 3600
Connection ~ 5775 3600
Wire Wire Line
	5775 3800 5775 3900
Wire Wire Line
	5775 3900 5750 3900
Connection ~ 5775 3900
Wire Wire Line
	9525 4150 9525 4975
Connection ~ 9525 4150
Wire Wire Line
	9675 3950 9675 4875
Wire Wire Line
	9675 4875 9750 4875
Connection ~ 9675 3950
$Comp
L power:+3V3 #PWR0106
U 1 1 605DB0AB
P 10475 4650
F 0 "#PWR0106" H 10475 4500 50  0001 C CNN
F 1 "+3V3" H 10490 4823 50  0000 C CNN
F 2 "" H 10475 4650 50  0001 C CNN
F 3 "" H 10475 4650 50  0001 C CNN
	1    10475 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 4875 10475 4875
Wire Wire Line
	10475 4650 10475 4875
Wire Wire Line
	10250 4975 10475 4975
Wire Wire Line
	10475 4975 10475 5225
Wire Wire Line
	10475 5225 11175 5225
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J5
U 1 1 605C151F
P 9950 4875
F 0 "J5" H 10000 5092 50  0000 C CNN
F 1 "Conn_02x02_Odd_Even" H 10000 5001 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x02_P2.54mm_Vertical" H 9950 4875 50  0001 C CNN
F 3 "~" H 9950 4875 50  0001 C CNN
	1    9950 4875
	1    0    0    -1  
$EndComp
Wire Wire Line
	9525 4975 9750 4975
$Comp
L Device:CP C?
U 1 1 5FBF514B
P 3400 7075
AR Path="/5FAE7423/5FBF514B" Ref="C?"  Part="1" 
AR Path="/5FBF514B" Ref="C4"  Part="1" 
F 0 "C4" H 3425 7175 50  0000 L CNN
F 1 "470uF" H 3425 6975 50  0000 L CNN
F 2 "Capacitor_SMD:C_Elec_6.3x7.7" H 3438 6925 50  0001 C CNN
F 3 "" H 3400 7075 50  0001 C CNN
F 4 "C134738" H 3400 7075 50  0001 C CNN "LCSC"
	1    3400 7075
	1    0    0    -1  
$EndComp
Connection ~ 3400 6750
Connection ~ 3400 7425
$Comp
L Switch:SW_Push SW1
U 1 1 607A6198
P 5200 3650
F 0 "SW1" V 5246 3602 50  0000 R CNN
F 1 "Fail safe" V 5155 3602 50  0000 R CNN
F 2 "nrg_watch:TS-1187" H 5200 3850 50  0001 C CNN
F 3 "~" H 5200 3850 50  0001 C CNN
F 4 "C92589" V 5200 3650 50  0001 C CNN "LCSC"
	1    5200 3650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5200 3000 5200 3450
Wire Wire Line
	5200 3850 5200 4100
$Comp
L power:+3V3 #PWR0103
U 1 1 60774921
P 4475 6675
F 0 "#PWR0103" H 4475 6525 50  0001 C CNN
F 1 "+3V3" H 4490 6848 50  0000 C CNN
F 2 "" H 4475 6675 50  0001 C CNN
F 3 "" H 4475 6675 50  0001 C CNN
	1    4475 6675
	1    0    0    -1  
$EndComp
Wire Wire Line
	3975 6750 4475 6750
Wire Wire Line
	3400 6750 3975 6750
Wire Wire Line
	3400 7425 3975 7425
Wire Wire Line
	3000 6750 3400 6750
Wire Wire Line
	2700 7425 3400 7425
$Comp
L power:+15V #PWR0107
U 1 1 6080542E
P 12525 4650
F 0 "#PWR0107" H 12525 4500 50  0001 C CNN
F 1 "+15V" H 12540 4823 50  0000 C CNN
F 2 "" H 12525 4650 50  0001 C CNN
F 3 "" H 12525 4650 50  0001 C CNN
	1    12525 4650
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR0108
U 1 1 60824E8F
P 1500 6650
F 0 "#PWR0108" H 1500 6500 50  0001 C CNN
F 1 "+15V" H 1515 6823 50  0000 C CNN
F 2 "" H 1500 6650 50  0001 C CNN
F 3 "" H 1500 6650 50  0001 C CNN
	1    1500 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 6750 1500 6650
$Comp
L power:+5V #PWR0109
U 1 1 6083073A
P 12350 4475
F 0 "#PWR0109" H 12350 4325 50  0001 C CNN
F 1 "+5V" H 12365 4648 50  0000 C CNN
F 2 "" H 12350 4475 50  0001 C CNN
F 3 "" H 12350 4475 50  0001 C CNN
	1    12350 4475
	-1   0    0    -1  
$EndComp
Wire Wire Line
	12350 4475 12350 4575
Wire Wire Line
	11825 4575 12350 4575
Wire Wire Line
	12525 4650 12525 4775
Wire Wire Line
	11825 4775 12525 4775
$Comp
L Device:C C?
U 1 1 5FBF50D4
P 4400 3100
AR Path="/5FAE7423/5FBF50D4" Ref="C?"  Part="1" 
AR Path="/5FBF50D4" Ref="C2"  Part="1" 
F 0 "C2" H 4425 3200 50  0000 L CNN
F 1 "1uF" H 4425 3000 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4438 2950 50  0001 C CNN
F 3 "" H 4400 3100 50  0001 C CNN
F 4 "C28323" H 4400 3100 50  0001 C CNN "LCSC"
	1    4400 3100
	0    1    -1   0   
$EndComp
Connection ~ 5200 2175
$Comp
L Device:R R?
U 1 1 5FBF50E3
P 4025 2500
AR Path="/5FAE7423/5FBF50E3" Ref="R?"  Part="1" 
AR Path="/5FBF50E3" Ref="R8"  Part="1" 
F 0 "R8" V 4105 2500 50  0000 C CNN
F 1 "R10K" V 4025 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3955 2500 50  0001 C CNN
F 3 "" H 4025 2500 50  0001 C CNN
F 4 "C17414" H 4025 2500 50  0001 C CNN "LCSC"
	1    4025 2500
	1    0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 612C4FB5
P 4950 3400
AR Path="/5FAE7423/612C4FB5" Ref="C?"  Part="1" 
AR Path="/612C4FB5" Ref="C3"  Part="1" 
F 0 "C3" H 4975 3500 50  0000 L CNN
F 1 "10uF" H 4975 3300 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4988 3250 50  0001 C CNN
F 3 "" H 4950 3400 50  0001 C CNN
F 4 "C28323" H 4950 3400 50  0001 C CNN "LCSC"
	1    4950 3400
	1    0    0    1   
$EndComp
Wire Wire Line
	4950 3250 4950 3100
Connection ~ 4950 3100
Wire Wire Line
	4950 3100 5775 3100
Wire Wire Line
	4950 3550 4950 4250
Wire Wire Line
	4950 5225 5200 5225
Connection ~ 5200 5225
$Comp
L Device:R R?
U 1 1 613B5125
P 4950 4400
AR Path="/5FAE7423/613B5125" Ref="R?"  Part="1" 
AR Path="/613B5125" Ref="R11"  Part="1" 
F 0 "R11" V 5030 4400 50  0000 C CNN
F 1 "R1K" V 4950 4400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4880 4400 50  0001 C CNN
F 3 "" H 4950 4400 50  0001 C CNN
F 4 "C17414" H 4950 4400 50  0001 C CNN "LCSC"
	1    4950 4400
	1    0    0    1   
$EndComp
Wire Wire Line
	4950 4550 4950 5225
$Comp
L Device:R R?
U 1 1 5FBF50E9
P 4725 2500
AR Path="/5FAE7423/5FBF50E9" Ref="R?"  Part="1" 
AR Path="/5FBF50E9" Ref="R7"  Part="1" 
F 0 "R7" V 4805 2500 50  0000 C CNN
F 1 "R10K" V 4725 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4655 2500 50  0001 C CNN
F 3 "" H 4725 2500 50  0001 C CNN
F 4 "C17414" H 4725 2500 50  0001 C CNN "LCSC"
	1    4725 2500
	1    0    0    1   
$EndComp
Wire Wire Line
	4950 2625 4950 3100
Connection ~ 4950 2175
Wire Wire Line
	4950 2175 5200 2175
Text GLabel 3825 2825 0    60   Input ~ 0
D0
Text GLabel 2675 3300 2    60   Input ~ 0
D0/RX0
Wire Wire Line
	5200 2175 5200 3000
Connection ~ 5200 3000
Wire Wire Line
	4950 2175 4950 2325
Wire Wire Line
	4025 2650 4025 2825
Wire Wire Line
	4025 2825 3825 2825
Wire Wire Line
	4025 2350 4025 2175
Wire Wire Line
	4025 2175 4725 2175
Wire Wire Line
	4550 3100 4725 3100
$Comp
L Device:D_Schottky D2
U 1 1 6164833C
P 4950 2475
F 0 "D2" V 4904 2555 50  0000 L CNN
F 1 "D_Schottky" H 4995 2555 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 4950 2475 50  0001 C CNN
F 3 "~" H 4950 2475 50  0001 C CNN
	1    4950 2475
	0    1    1    0   
$EndComp
Wire Wire Line
	4725 2175 4725 2350
Connection ~ 4725 2175
Wire Wire Line
	4725 2175 4950 2175
Wire Wire Line
	4725 2650 4725 3100
Connection ~ 4725 3100
Wire Wire Line
	4725 3100 4950 3100
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 61465D2F
P 10875 6475
F 0 "H1" H 10975 6524 50  0000 L CNN
F 1 "MountingHole_Pad" H 10975 6433 50  0000 L CNN
F 2 "Connector_Pin:Pin_D1.0mm_L10.0mm" H 10875 6475 50  0001 C CNN
F 3 "~" H 10875 6475 50  0001 C CNN
	1    10875 6475
	1    0    0    -1  
$EndComp
Wire Wire Line
	11150 7825 9675 7825
Text GLabel 2675 3700 2    60   Input ~ 0
D15
Wire Wire Line
	2125 3700 2675 3700
Text GLabel 7075 4825 3    60   Input ~ 0
D15
Wire Wire Line
	7075 4825 7075 4650
Text GLabel 6375 4825 3    60   Input ~ 0
D13
Wire Wire Line
	6375 4650 6375 4825
Text GLabel 6100 7450 3    60   Input ~ 0
D13
Wire Wire Line
	2525 3100 4025 3100
Wire Wire Line
	4025 2825 4025 3100
Connection ~ 4025 2825
Connection ~ 4025 3100
Wire Wire Line
	4025 3100 4250 3100
Wire Wire Line
	5850 6850 5850 6975
Wire Wire Line
	5850 6550 5850 6450
$Comp
L Device:R R9
U 1 1 5FECC456
P 5850 6700
F 0 "R9" H 5900 6725 50  0000 L CNN
F 1 "R100" H 5925 6650 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5780 6700 50  0001 C CNN
F 3 "~" H 5850 6700 50  0001 C CNN
F 4 "C17408" H 5850 6700 50  0001 C CNN "LCSC"
	1    5850 6700
	-1   0    0    -1  
$EndComp
Text GLabel 8025 3750 2    60   Input ~ 0
D17
Wire Wire Line
	7625 3750 8025 3750
Wire Wire Line
	5850 6450 5975 6450
Wire Wire Line
	6100 6450 6100 6550
Connection ~ 5975 6450
Wire Wire Line
	5975 6450 6100 6450
Text GLabel 5850 7450 3    60   Input ~ 0
D17
Wire Wire Line
	5850 7275 5850 7450
Wire Wire Line
	8875 5225 10475 5225
Connection ~ 8875 5225
Connection ~ 10475 5225
Wire Wire Line
	9525 3075 8950 3075
Wire Wire Line
	9675 2950 7625 2950
$Comp
L Switch:SW_Push SW2
U 1 1 617A31D8
P 4725 3625
F 0 "SW2" V 4771 3577 50  0000 R CNN
F 1 "Reset" V 4675 4075 50  0000 R CNN
F 2 "nrg_watch:TS-1187" H 4725 3825 50  0001 C CNN
F 3 "~" H 4725 3825 50  0001 C CNN
F 4 "C92589" V 4725 3625 50  0001 C CNN "LCSC"
	1    4725 3625
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4725 3100 4725 3425
Wire Wire Line
	4725 3825 4725 5225
Wire Wire Line
	4725 5225 4950 5225
Connection ~ 4950 5225
Wire Wire Line
	10875 6575 10875 6900
Connection ~ 10875 6900
Wire Wire Line
	10875 6900 10950 6900
$Comp
L Mechanical:MountingHole H3
U 1 1 61941A13
P 10300 10575
F 0 "H3" H 10400 10621 50  0000 L CNN
F 1 "MountingHole" H 10400 10530 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.5mm" H 10300 10575 50  0001 C CNN
F 3 "~" H 10300 10575 50  0001 C CNN
	1    10300 10575
	1    0    0    -1  
$EndComp
$EndSCHEMATC
