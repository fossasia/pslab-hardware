EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 6
Title "CPN2102N UART Bridge"
Date "2019-03-03"
Rev "1"
Comp ""
Comment1 "CPN2102N Datasheet"
Comment2 "Typical connection when internal regulator is not used"
Comment3 "Ref: Datasheet for CPN2102N 4th page"
Comment4 ""
$EndDescr
$Comp
L PSLab:CP2102 U14
U 1 1 5C4FE1DE
P 5920 4035
F 0 "U14" H 6365 3350 60  0000 C CNN
F 1 "CP2102" H 5920 4035 60  0000 C CNB
F 2 "Housings_DFN_QFN:QFN-24-1EP_4x4mm_Pitch0.5mm" H 5920 4035 60  0001 C CNN
F 3 "" H 5920 4035 60  0001 C CNN
	1    5920 4035
	1    0    0    -1  
$EndComp
NoConn ~ 5170 3785
NoConn ~ 5670 3285
NoConn ~ 5770 3285
NoConn ~ 5870 3285
NoConn ~ 6170 3285
NoConn ~ 6670 3785
NoConn ~ 6670 3885
NoConn ~ 6670 3985
NoConn ~ 6670 4085
NoConn ~ 6170 4785
NoConn ~ 6070 4785
NoConn ~ 5970 4785
$Comp
L PSLab:SP0503BAHT U17
U 1 1 5C4FEC85
P 5925 2335
F 0 "U17" H 5925 2085 60  0000 C CNN
F 1 "SP0503BAHT" H 5925 2585 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-143" H 5925 2335 60  0001 C CNN
F 3 "" H 5925 2335 60  0001 C CNN
	1    5925 2335
	1    0    0    -1  
$EndComp
Text HLabel 2370 2630 0    60   Input ~ 0
GND
Text GLabel 2435 2630 2    39   Input ~ 0
GND
Wire Wire Line
	2435 2630 2370 2630
Text GLabel 5475 2235 0    39   Input ~ 0
GND
Text GLabel 5470 3285 1    39   Input ~ 0
GND
Text GLabel 5170 3885 0    39   Input ~ 0
GND
Text HLabel 2370 2775 0    60   Input ~ 0
D+
Text HLabel 2370 2915 0    60   Input ~ 0
D-
Text HLabel 2370 3055 0    60   Input ~ 0
VBus
Text GLabel 2440 2775 2    39   Input ~ 0
D+
Text GLabel 2440 2915 2    39   Input ~ 0
D-
Wire Wire Line
	2440 2915 2370 2915
Wire Wire Line
	2370 2775 2440 2775
Text GLabel 2440 3055 2    39   Input ~ 0
VBus
Wire Wire Line
	2440 3055 2370 3055
Text GLabel 5170 3985 0    39   Input ~ 0
D+
Text GLabel 5170 4085 0    39   Input ~ 0
D-
$Comp
L PSLab-rescue:R R51
U 1 1 5C5002F8
P 5470 5050
AR Path="/5C5002F8" Ref="R51"  Part="1" 
AR Path="/5C4FD460/5C5002F8" Ref="R51"  Part="1" 
F 0 "R51" V 5550 5050 50  0000 C CNN
F 1 "1K" V 5470 5050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5400 5050 50  0001 C CNN
F 3 "" H 5470 5050 50  0001 C CNN
	1    5470 5050
	0    1    1    0   
$EndComp
Wire Wire Line
	5620 5050 5870 5050
Wire Wire Line
	5870 5050 5870 4785
Wire Wire Line
	5170 4185 4970 4185
Wire Wire Line
	4970 4185 4970 5050
Wire Wire Line
	4970 5050 5075 5050
$Comp
L PSLab-rescue:C_Small C46
U 1 1 5C5008BB
P 4615 5535
AR Path="/5C5008BB" Ref="C46"  Part="1" 
AR Path="/5C4FD460/5C5008BB" Ref="C46"  Part="1" 
F 0 "C46" H 4625 5605 50  0000 L CNN
F 1 "4.7u" H 4625 5455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4615 5535 50  0001 C CNN
F 3 "" H 4615 5535 50  0001 C CNN
	1    4615 5535
	1    0    0    -1  
$EndComp
$Comp
L PSLab-rescue:C_Small C44
U 1 1 5C500F1A
P 4195 4535
AR Path="/5C500F1A" Ref="C44"  Part="1" 
AR Path="/5C4FD460/5C500F1A" Ref="C44"  Part="1" 
F 0 "C44" H 4205 4605 50  0000 L CNN
F 1 "4.7u" H 4205 4455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4195 4535 50  0001 C CNN
F 3 "" H 4195 4535 50  0001 C CNN
	1    4195 4535
	1    0    0    -1  
$EndComp
Wire Wire Line
	4615 5635 4615 5735
Wire Wire Line
	4615 5435 4615 5345
Wire Wire Line
	4525 5345 4615 5345
Wire Wire Line
	4195 4435 4195 4285
Wire Wire Line
	4095 4285 4195 4285
Wire Wire Line
	4195 4635 4195 4795
Text GLabel 4525 5345 0    39   Input ~ 0
VBus
Connection ~ 4615 5345
Wire Wire Line
	5770 5345 5770 4785
Text GLabel 2440 3200 2    39   Input ~ 0
3.3V
Text HLabel 2370 3200 0    60   Input ~ 0
3.3V
Wire Wire Line
	2370 3200 2440 3200
Text GLabel 4530 5735 0    39   Input ~ 0
GND
Text GLabel 4085 4795 0    39   Input ~ 0
GND
Wire Wire Line
	5670 4785 5670 4865
Wire Wire Line
	5670 4865 5075 4865
Wire Wire Line
	5075 4285 5075 4865
Connection ~ 5075 4285
NoConn ~ 6670 4185
NoConn ~ 6670 4285
Text HLabel 5970 3285 1    60   Input ~ 0
TX
Text HLabel 6070 3285 1    60   Input ~ 0
RX
Text GLabel 6375 2435 2    39   Input ~ 0
D+
Text GLabel 5475 2435 0    39   Input ~ 0
D-
Text GLabel 6375 2235 2    39   Input ~ 0
VBus
Text GLabel 4095 4285 0    39   Input ~ 0
3.3V
Connection ~ 4195 4285
Connection ~ 5075 5050
Connection ~ 5075 4865
Wire Wire Line
	4195 4795 4085 4795
Wire Wire Line
	4615 5735 4530 5735
Wire Wire Line
	4615 5345 5770 5345
Wire Wire Line
	5075 4285 5170 4285
Wire Wire Line
	4195 4285 5075 4285
Wire Wire Line
	5075 5050 5320 5050
Wire Wire Line
	5075 4865 5075 5050
Text GLabel 6070 5255 3    39   Input ~ 0
GND
$Comp
L Connector_Generic:Conn_01x02 J12
U 1 1 5EF5F041
P 5970 5055
F 0 "J12" V 5926 4867 50  0000 R CNN
F 1 "UART Reset" V 5843 4867 39  0000 R CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_1x02_P2.00mm_Vertical" H 5970 5055 50  0001 C CNN
F 3 "~" H 5970 5055 50  0001 C CNN
	1    5970 5055
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5870 5050 5870 5345
Wire Wire Line
	5870 5345 5970 5345
Wire Wire Line
	5970 5345 5970 5255
Connection ~ 5870 5050
$EndSCHEMATC
