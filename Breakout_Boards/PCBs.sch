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
LIBS:microchip_pic24mcu
LIBS:microchip_pic18mcu
LIBS:microchip_pic16mcu
LIBS:microchip_dspic33dsc
LIBS:microchip_pic32mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic10mcu
LIBS:proto1
LIBS:PCBs-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
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
L C C10
U 1 1 5A6A806C
P 10370 3085
F 0 "C10" H 10395 3185 50  0000 L CNN
F 1 "0.1u" H 10395 2985 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 10408 2935 50  0001 C CNN
F 3 "" H 10370 3085 50  0001 C CNN
	1    10370 3085
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 5A6A81A7
P 8270 1375
F 0 "C6" H 8295 1475 50  0000 L CNN
F 1 "0.1u" H 8295 1275 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8308 1225 50  0001 C CNN
F 3 "" H 8270 1375 50  0001 C CNN
	1    8270 1375
	0    1    1    0   
$EndComp
$Comp
L C C7
U 1 1 5A6A821E
P 8270 4765
F 0 "C7" H 8295 4865 50  0000 L CNN
F 1 "0.1u" H 8295 4665 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8308 4615 50  0001 C CNN
F 3 "" H 8270 4765 50  0001 C CNN
	1    8270 4765
	0    1    1    0   
$EndComp
$Comp
L L L1
U 1 1 5A6A8872
P 8815 4765
F 0 "L1" V 8765 4765 50  0000 C CNN
F 1 "10uH" V 8890 4765 50  0000 C CNN
F 2 "Inductors_SMD:L_0805_HandSoldering" H 8815 4765 50  0001 C CNN
F 3 "" H 8815 4765 50  0001 C CNN
	1    8815 4765
	0    -1   -1   0   
$EndComp
$Comp
L Crystal Y2
U 1 1 5A6A8CC4
P 10290 830
F 0 "Y2" H 10290 980 50  0000 C CNN
F 1 "Crystal" H 10290 680 50  0000 C CNN
F 2 "Crystals:Crystal_HC49-4H_Vertical" H 10290 830 50  0001 C CNN
F 3 "" H 10290 830 50  0001 C CNN
	1    10290 830 
	1    0    0    -1  
$EndComp
$Comp
L C C8
U 1 1 5A6A8DCF
P 9965 1220
F 0 "C8" H 9990 1320 50  0000 L CNN
F 1 "15p" H 9990 1120 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 10003 1070 50  0001 C CNN
F 3 "" H 9965 1220 50  0001 C CNN
	1    9965 1220
	1    0    0    -1  
$EndComp
$Comp
L C C11
U 1 1 5A6A8ED8
P 10595 1220
F 0 "C11" H 10620 1320 50  0000 L CNN
F 1 "15p" H 10620 1120 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 10633 1070 50  0001 C CNN
F 3 "" H 10595 1220 50  0001 C CNN
	1    10595 1220
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5A6A99AE
P 6775 5250
F 0 "R2" V 6855 5250 50  0000 C CNN
F 1 "9k8" V 6775 5250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6705 5250 50  0001 C CNN
F 3 "" H 6775 5250 50  0001 C CNN
	1    6775 5250
	0    1    1    0   
$EndComp
$Comp
L CONN_01X05 J3
U 1 1 5A6AA8F4
P 5990 1665
F 0 "J3" H 5990 1965 50  0000 C CNN
F 1 "Programmer" V 6090 1665 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05_Pitch2.54mm" H 5990 1665 50  0001 C CNN
F 3 "" H 5990 1665 50  0001 C CNN
	1    5990 1665
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X02 J4
U 1 1 5A6ABB24
P 5990 940
F 0 "J4" H 5990 1090 50  0000 C CNN
F 1 "Power" V 6090 940 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 5990 940 50  0001 C CNN
F 3 "" H 5990 940 50  0001 C CNN
	1    5990 940 
	-1   0    0    1   
$EndComp
$Comp
L MCP2200 U1
U 1 1 5A6AC1BD
P 2815 3340
F 0 "U1" H 2815 3240 50  0000 C CNN
F 1 "MCP2200" H 2815 3490 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-20W_7.5x12.8mm_Pitch1.27mm" H 2815 3340 50  0001 C CNN
F 3 "DOCUMENTATION" H 2815 3340 50  0001 C CNN
	1    2815 3340
	1    0    0    -1  
$EndComp
$Comp
L Crystal Y1
U 1 1 5A6AC312
P 1825 4670
F 0 "Y1" H 1825 4820 50  0000 C CNN
F 1 "Crystal" H 1825 4520 50  0000 C CNN
F 2 "Crystals:Crystal_HC49-4H_Vertical" H 1825 4670 50  0001 C CNN
F 3 "" H 1825 4670 50  0001 C CNN
	1    1825 4670
	-1   0    0    1   
$EndComp
$Comp
L C C1
U 1 1 5A6AC48F
P 2110 5090
F 0 "C1" H 2135 5190 50  0000 L CNN
F 1 "15p" H 2135 4990 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2148 4940 50  0001 C CNN
F 3 "" H 2110 5090 50  0001 C CNN
	1    2110 5090
	-1   0    0    1   
$EndComp
$Comp
L C C2
U 1 1 5A6AC583
P 1500 5090
F 0 "C2" H 1525 5190 50  0000 L CNN
F 1 "15p" H 1525 4990 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1538 4940 50  0001 C CNN
F 3 "" H 1500 5090 50  0001 C CNN
	1    1500 5090
	-1   0    0    1   
$EndComp
$Comp
L USB J1
U 1 1 5A6AD09C
P 1685 1260
F 0 "J1" H 1635 1660 60  0000 C CNN
F 1 "USB" V 1435 1410 60  0000 C CNN
F 2 "Connectors:USB_B" H 1685 1260 60  0001 C CNN
F 3 "" H 1685 1260 60  0000 C CNN
	1    1685 1260
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 5A6ADCFB
P 2820 2330
F 0 "C5" H 2845 2430 50  0000 L CNN
F 1 "0.1u" H 2845 2230 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2858 2180 50  0001 C CNN
F 3 "" H 2820 2330 50  0001 C CNN
	1    2820 2330
	0    1    1    0   
$EndComp
$Comp
L R R1
U 1 1 5A6AE1C4
P 1575 3190
F 0 "R1" V 1655 3190 50  0000 C CNN
F 1 "4.7k" V 1575 3190 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1505 3190 50  0001 C CNN
F 3 "" H 1575 3190 50  0001 C CNN
	1    1575 3190
	0    1    1    0   
$EndComp
$Comp
L C C3
U 1 1 5A6AE5F9
P 4005 3390
F 0 "C3" H 4030 3490 50  0000 L CNN
F 1 "0.1u" H 4030 3290 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4043 3240 50  0001 C CNN
F 3 "" H 4005 3390 50  0001 C CNN
	1    4005 3390
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X02 J2
U 1 1 5A6AECE9
P 3900 5150
F 0 "J2" H 3900 5300 50  0000 C CNN
F 1 "Tx_Rx" V 4000 5150 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 3900 5150 50  0001 C CNN
F 3 "" H 3900 5150 50  0001 C CNN
	1    3900 5150
	0    1    1    0   
$EndComp
$Comp
L C C4
U 1 1 5A6B187A
P 6670 3485
F 0 "C4" H 6695 3585 50  0000 L CNN
F 1 "10u" H 6695 3385 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6708 3335 50  0001 C CNN
F 3 "" H 6670 3485 50  0001 C CNN
	1    6670 3485
	1    0    0    -1  
$EndComp
$Comp
L PIC24EP64GP204 U2
U 1 1 5A6A7FC6
P 8320 3135
F 0 "U2" H 8320 3035 50  0000 C CNN
F 1 "PIC24EP64GP204" H 8320 3235 50  0000 C CNN
F 2 "Housings_QFP:TQFP-44_10x10mm_Pitch0.8mm" H 8320 3135 50  0001 C CNN
F 3 "DOCUMENTATION" H 8320 3135 50  0001 C CNN
	1    8320 3135
	1    0    0    -1  
$EndComp
Wire Wire Line
	9965 1070 9965 830 
Wire Wire Line
	9905 830  10140 830 
Wire Wire Line
	9965 1370 9965 1635
Wire Wire Line
	9965 1635 10595 1635
Wire Wire Line
	10595 1635 10595 1370
Text GLabel 10300 1685 3    60   Input ~ 0
GND
Connection ~ 10300 1635
Text GLabel 9905 830  0    60   Input ~ 0
OSC1
Text GLabel 10665 830  2    60   Input ~ 0
OSC2
Connection ~ 9965 830 
Wire Wire Line
	10440 830  10665 830 
Wire Wire Line
	10595 1070 10595 830 
Connection ~ 10595 830 
Wire Wire Line
	9620 3035 10150 3035
Wire Wire Line
	10150 3035 10150 2850
Wire Wire Line
	10150 2850 10580 2850
Wire Wire Line
	10370 2850 10370 2935
Wire Wire Line
	9620 3135 10150 3135
Wire Wire Line
	10150 3330 10585 3330
Wire Wire Line
	10370 3330 10370 3235
Wire Wire Line
	10150 3135 10150 3330
Text GLabel 10580 2850 2    60   Input ~ 0
GND
Text GLabel 10585 3330 2    60   Input ~ 0
VDD
Connection ~ 10370 2850
Connection ~ 10370 3330
Wire Wire Line
	7870 1375 8120 1375
Wire Wire Line
	8065 1375 8065 1555
Wire Wire Line
	8065 1555 8220 1555
Wire Wire Line
	8220 1555 8220 1835
Wire Wire Line
	8320 1835 8320 1555
Wire Wire Line
	8320 1555 8485 1555
Wire Wire Line
	8485 1555 8485 1375
Wire Wire Line
	8420 1375 8645 1375
Wire Wire Line
	7945 4765 8120 4765
Wire Wire Line
	8065 4765 8065 4605
Wire Wire Line
	8065 4605 8220 4605
Wire Wire Line
	8220 4605 8220 4435
Wire Wire Line
	8320 4435 8320 4600
Wire Wire Line
	8320 4600 8485 4600
Wire Wire Line
	8485 4600 8485 4765
Wire Wire Line
	8420 4765 8665 4765
Wire Wire Line
	7020 3235 6670 3235
Wire Wire Line
	6670 3235 6670 3335
Text GLabel 8645 1375 2    60   Input ~ 0
GND
Connection ~ 8485 1375
Text GLabel 7870 1375 0    60   Input ~ 0
VDD
Connection ~ 8065 1375
Text GLabel 7945 4765 0    60   Input ~ 0
GND
Connection ~ 8065 4765
Connection ~ 8485 4765
Text GLabel 9050 4765 2    60   Input ~ 0
VDD
Wire Wire Line
	9050 4765 8965 4765
Text GLabel 9045 4520 2    60   Input ~ 0
MCLR
Wire Wire Line
	9045 4520 8420 4520
Wire Wire Line
	8420 4520 8420 4435
Text GLabel 10120 2535 2    60   Input ~ 0
OSC1
Text GLabel 10120 2370 2    60   Input ~ 0
OSC2
Wire Wire Line
	10120 2535 10050 2535
Wire Wire Line
	10050 2535 10050 2935
Wire Wire Line
	10050 2935 9620 2935
Wire Wire Line
	9620 2835 9945 2835
Wire Wire Line
	9945 2835 9945 2370
Wire Wire Line
	9945 2370 10120 2370
Text GLabel 6655 3135 0    60   Input ~ 0
GND
Wire Wire Line
	6655 3135 7020 3135
Text GLabel 6670 3835 3    60   Input ~ 0
GND
Wire Wire Line
	6670 3835 6670 3635
Text GLabel 6255 1865 2    60   Input ~ 0
MCLR
Text GLabel 6565 1765 2    60   Input ~ 0
VDD
Text GLabel 6255 1665 2    60   Input ~ 0
GND
Wire Wire Line
	6255 1665 6190 1665
Wire Wire Line
	6190 1765 6565 1765
Wire Wire Line
	6255 1865 6190 1865
Text GLabel 6245 990  2    60   Input ~ 0
VDD
Text GLabel 6490 890  2    60   Input ~ 0
GND
Wire Wire Line
	6490 890  6190 890 
Wire Wire Line
	6245 990  6190 990 
Wire Wire Line
	10300 1685 10300 1635
Text GLabel 6560 1565 2    60   Input ~ 0
PGD
Text GLabel 6255 1465 2    60   Input ~ 0
PGC
Wire Wire Line
	6255 1465 6190 1465
Wire Wire Line
	6190 1565 6560 1565
Text GLabel 6510 5250 0    60   Input ~ 0
VDD
Wire Wire Line
	6510 5250 6625 5250
Text GLabel 7660 5250 2    60   Input ~ 0
MCLR
Wire Notes Line
	5335 475  5335 7795
Text GLabel 2145 1460 2    60   Input ~ 0
D+
Text GLabel 2145 1610 2    60   Input ~ 0
D-
Text GLabel 1120 1460 0    60   Input ~ 0
VBus
Wire Wire Line
	1120 1460 1285 1460
Wire Wire Line
	2035 1460 2145 1460
Wire Wire Line
	2035 1610 2145 1610
Text GLabel 1120 1610 0    60   Input ~ 0
V-
Wire Wire Line
	1120 1610 1285 1610
Wire Wire Line
	1500 4940 1500 4670
Wire Wire Line
	1285 4670 1675 4670
Wire Wire Line
	1975 4670 2245 4670
Wire Wire Line
	2110 4670 2110 4940
Wire Wire Line
	1500 5240 1500 5400
Wire Wire Line
	1500 5400 2110 5400
Wire Wire Line
	2110 5400 2110 5240
Wire Wire Line
	1725 3190 2065 3190
Wire Wire Line
	3565 3190 4005 3190
Wire Wire Line
	4005 3190 4005 3240
Text GLabel 1280 3190 0    60   Input ~ 0
V+
Wire Wire Line
	1280 3190 1425 3190
Text GLabel 4005 3595 3    60   Input ~ 0
V-
Wire Wire Line
	4005 3595 4005 3540
Text GLabel 1895 2890 0    60   Input ~ 0
V+
Wire Wire Line
	1895 2890 2065 2890
$Comp
L LM1117-3.3 U3
U 1 1 5A6C42A3
P 3875 1130
F 0 "U3" H 3975 880 50  0000 C CNN
F 1 "LM1117-3.3" H 3875 1380 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 3875 1130 50  0001 C CNN
F 3 "" H 3875 1130 50  0001 C CNN
	1    3875 1130
	1    0    0    -1  
$EndComp
Text GLabel 4600 1130 2    60   Input ~ 0
V+
Wire Wire Line
	4175 1130 4600 1130
Text GLabel 3075 1130 0    60   Input ~ 0
VBus
Wire Wire Line
	3075 1130 3575 1130
Text GLabel 3875 1595 3    60   Input ~ 0
V-
Wire Wire Line
	3875 1595 3875 1430
$Comp
L C C9
U 1 1 5A6C55F2
P 3330 1390
F 0 "C9" H 3355 1490 50  0000 L CNN
F 1 "1u" H 3355 1290 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3368 1240 50  0001 C CNN
F 3 "" H 3330 1390 50  0001 C CNN
	1    3330 1390
	1    0    0    -1  
$EndComp
$Comp
L C C12
U 1 1 5A6C5731
P 4365 1380
F 0 "C12" H 4390 1480 50  0000 L CNN
F 1 "10u" H 4390 1280 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4403 1230 50  0001 C CNN
F 3 "" H 4365 1380 50  0001 C CNN
	1    4365 1380
	1    0    0    -1  
$EndComp
Wire Wire Line
	3330 1240 3330 1130
Connection ~ 3330 1130
Wire Wire Line
	4365 1230 4365 1130
Connection ~ 4365 1130
Wire Wire Line
	3330 1540 3330 1600
Wire Wire Line
	3330 1600 3665 1600
Wire Wire Line
	3665 1600 3665 1505
Wire Wire Line
	3665 1505 4100 1505
Connection ~ 3875 1505
Wire Wire Line
	4100 1505 4100 1600
Wire Wire Line
	4100 1600 4365 1600
Wire Wire Line
	4365 1600 4365 1530
Text GLabel 3705 2990 2    60   Input ~ 0
D+
Wire Wire Line
	3705 2990 3565 2990
Text GLabel 3920 3090 2    60   Input ~ 0
D-
Wire Wire Line
	3920 3090 3565 3090
Text GLabel 3925 2890 2    60   Input ~ 0
V-
Wire Wire Line
	3925 2890 3565 2890
Text GLabel 2245 4670 2    60   Input ~ 0
OS1
Text GLabel 1285 4670 0    60   Input ~ 0
OS2
Connection ~ 1500 4670
Connection ~ 2110 4670
Text GLabel 1685 2990 0    60   Input ~ 0
OS1
Wire Wire Line
	1685 2990 2065 2990
Text GLabel 1965 3090 0    60   Input ~ 0
OS2
Wire Wire Line
	1965 3090 2065 3090
Text GLabel 1945 3790 0    60   Input ~ 0
Tx
Wire Wire Line
	1945 3790 2065 3790
Text GLabel 3710 3690 2    60   Input ~ 0
Rx
Wire Wire Line
	3710 3690 3565 3690
Text GLabel 3100 2330 2    60   Input ~ 0
V-
Text GLabel 2525 2330 0    60   Input ~ 0
V+
Wire Wire Line
	2525 2330 2670 2330
Wire Wire Line
	2970 2330 3100 2330
Text GLabel 3770 4815 0    60   Input ~ 0
Tx
Text GLabel 4010 4815 2    60   Input ~ 0
Rx
Wire Wire Line
	4010 4815 3950 4815
Wire Wire Line
	3950 4815 3950 4950
Wire Wire Line
	3850 4950 3850 4815
Wire Wire Line
	3850 4815 3770 4815
Text GLabel 1815 5625 3    60   Input ~ 0
V-
Wire Wire Line
	1815 5625 1815 5400
Connection ~ 1815 5400
NoConn ~ 7820 1835
NoConn ~ 7920 1835
NoConn ~ 8420 1835
NoConn ~ 8520 1835
NoConn ~ 8620 1835
NoConn ~ 8720 1835
NoConn ~ 8820 1835
NoConn ~ 9620 2635
NoConn ~ 9620 2735
NoConn ~ 9620 3235
NoConn ~ 9620 3335
NoConn ~ 9620 3435
NoConn ~ 9620 3535
NoConn ~ 9620 3635
NoConn ~ 8820 4435
NoConn ~ 8720 4435
NoConn ~ 8620 4435
NoConn ~ 8520 4435
NoConn ~ 8120 4435
NoConn ~ 8020 4435
NoConn ~ 7920 4435
NoConn ~ 7820 4435
NoConn ~ 7020 3335
NoConn ~ 7020 3435
NoConn ~ 7020 3535
NoConn ~ 7020 3635
NoConn ~ 7020 3035
NoConn ~ 7020 2935
NoConn ~ 7020 2835
NoConn ~ 7020 2735
NoConn ~ 7020 2635
NoConn ~ 3565 3290
NoConn ~ 3565 3390
NoConn ~ 3565 3490
NoConn ~ 3565 3590
NoConn ~ 3565 3790
NoConn ~ 2065 3690
NoConn ~ 2065 3590
NoConn ~ 2065 3490
NoConn ~ 2065 3390
NoConn ~ 2065 3290
NoConn ~ 2035 1710
NoConn ~ 1285 1710
Text GLabel 7720 1745 0    60   Input ~ 0
PGC
Text GLabel 7720 1605 0    60   Input ~ 0
PGD
Wire Wire Line
	7720 1605 8120 1605
Wire Wire Line
	8120 1605 8120 1835
Wire Wire Line
	8020 1835 8020 1745
Wire Wire Line
	8020 1745 7720 1745
$Comp
L C C13
U 1 1 5A6B4403
P 7025 5725
F 0 "C13" H 7050 5825 50  0000 L CNN
F 1 "0.1u" H 7050 5625 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7063 5575 50  0001 C CNN
F 3 "" H 7025 5725 50  0001 C CNN
	1    7025 5725
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5A6B4686
P 7280 5250
F 0 "R3" V 7360 5250 50  0000 C CNN
F 1 "330" V 7280 5250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7210 5250 50  0001 C CNN
F 3 "" H 7280 5250 50  0001 C CNN
	1    7280 5250
	0    1    1    0   
$EndComp
Wire Wire Line
	6925 5250 7130 5250
Wire Wire Line
	7025 5250 7025 5445
Connection ~ 7025 5250
Wire Wire Line
	7430 5250 7660 5250
$Comp
L CONN_01X02 J5
U 1 1 5A6B4C44
P 10375 5565
F 0 "J5" H 10375 5715 50  0000 C CNN
F 1 "MCLR_J" V 10475 5565 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 10375 5565 50  0001 C CNN
F 3 "" H 10375 5565 50  0001 C CNN
	1    10375 5565
	1    0    0    -1  
$EndComp
Text GLabel 10120 5515 0    60   Input ~ 0
MCL_A
Text GLabel 9765 5615 0    60   Input ~ 0
MCL_B
Wire Wire Line
	9765 5615 10175 5615
Wire Wire Line
	10175 5515 10120 5515
Text GLabel 6970 5445 0    60   Input ~ 0
MCL_A
Wire Wire Line
	7025 5445 6970 5445
Text GLabel 7115 5505 2    60   Input ~ 0
MCL_B
Wire Wire Line
	7115 5505 7025 5505
Wire Wire Line
	7025 5505 7025 5575
Text GLabel 6955 5965 0    60   Input ~ 0
GND
Wire Wire Line
	6955 5965 7025 5965
Wire Wire Line
	7025 5965 7025 5875
$Comp
L CONN_01X03 J6
U 1 1 5A6B70EB
P 3095 6275
F 0 "J6" H 3095 6475 50  0000 C CNN
F 1 "Power" V 3195 6275 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 3095 6275 50  0001 C CNN
F 3 "" H 3095 6275 50  0001 C CNN
	1    3095 6275
	0    1    1    0   
$EndComp
Text GLabel 3320 5985 2    60   Input ~ 0
V-
Wire Wire Line
	3095 5950 3095 6075
Text GLabel 3095 5950 1    60   Input ~ 0
V+
Wire Wire Line
	3320 5985 3195 5985
Wire Wire Line
	3195 5985 3195 6075
Text GLabel 2910 5985 0    60   Input ~ 0
VBus
Wire Wire Line
	2910 5985 2995 5985
Wire Wire Line
	2995 5985 2995 6075
$EndSCHEMATC
