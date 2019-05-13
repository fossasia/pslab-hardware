EESchema Schematic File Version 4
LIBS:PSLab-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
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
L PSLab:SDCard P1
U 1 1 5C58B8EC
P 4855 3555
F 0 "P1" H 4855 2805 47  0000 C CNN
F 1 "SDCard" H 4855 3805 47  0000 C CNN
F 2 "Custom_Components:microSD_HC_Hirose_DM3AT-SF-PEJM5" H 4855 3555 60  0001 C CNN
F 3 "" H 4855 3555 60  0001 C CNN
	1    4855 3555
	1    0    0    -1  
$EndComp
NoConn ~ 4305 3405
NoConn ~ 4305 4105
NoConn ~ 4305 4205
Text HLabel 5355 3855 2    39   Input ~ 0
GND
Text HLabel 4305 3505 0    39   Input ~ 0
CS
Text HLabel 4305 3605 0    39   Output ~ 0
MOSI
Text HLabel 4305 3705 0    39   Input ~ 0
3.3V
Text HLabel 4305 3805 0    39   Input ~ 0
SCK
Text HLabel 4305 4005 0    39   Input ~ 0
MISO
NoConn ~ 5355 3755
$Comp
L PSLab-rescue:Conn_01x02 J?
U 1 1 5C94297A
P 7025 3320
AR Path="/5C94297A" Ref="J?"  Part="1" 
AR Path="/5C58AFEF/5C94297A" Ref="J12"  Part="1" 
F 0 "J12" H 7025 3420 50  0000 C CNN
F 1 "SD_Switch" V 7130 3265 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_B3U-1000P" H 7025 3320 50  0001 C CNN
F 3 "" H 7025 3320 50  0001 C CNN
	1    7025 3320
	0    -1   -1   0   
$EndComp
$Comp
L PSLab-rescue:R R?
U 1 1 5C942981
P 6995 4110
AR Path="/5C942981" Ref="R?"  Part="1" 
AR Path="/5C58AFEF/5C942981" Ref="R48"  Part="1" 
F 0 "R48" V 7075 4110 50  0000 C CNN
F 1 "5K1" V 6995 4110 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6925 4110 50  0001 C CNN
F 3 "" H 6995 4110 50  0001 C CNN
	1    6995 4110
	-1   0    0    1   
$EndComp
Wire Wire Line
	6830 3885 6995 3885
Wire Wire Line
	6995 3885 6995 3960
Connection ~ 6995 3885
Wire Wire Line
	6995 4270 6995 4260
Wire Wire Line
	6995 3885 7085 3885
$Comp
L PSLab-rescue:R R?
U 1 1 5C942995
P 7235 3885
AR Path="/5C942995" Ref="R?"  Part="1" 
AR Path="/5C58AFEF/5C942995" Ref="R58"  Part="1" 
F 0 "R58" V 7315 3885 50  0000 C CNN
F 1 "200" V 7235 3885 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 7165 3885 50  0001 C CNN
F 3 "" H 7235 3885 50  0001 C CNN
	1    7235 3885
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7480 3885 7385 3885
$Comp
L Device:C_Small C?
U 1 1 5C94299D
P 7075 3650
AR Path="/5C94299D" Ref="C?"  Part="1" 
AR Path="/5C58AFEF/5C94299D" Ref="C1"  Part="1" 
F 0 "C1" V 7125 3575 50  0000 C CNN
F 1 "1nF" V 7125 3775 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603" H 7075 3650 50  0001 C CNN
F 3 "~" H 7075 3650 50  0001 C CNN
	1    7075 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	6975 3650 6910 3650
Wire Wire Line
	7025 3520 7025 3555
Wire Wire Line
	7025 3555 6910 3555
Wire Wire Line
	6910 3555 6910 3650
Connection ~ 6910 3650
Wire Wire Line
	6910 3650 6830 3650
Wire Wire Line
	7175 3650 7480 3650
Wire Wire Line
	7480 3650 7480 3885
Wire Wire Line
	7125 3520 7125 3555
Wire Wire Line
	7125 3555 7480 3555
Wire Wire Line
	7480 3555 7480 3650
Connection ~ 7480 3650
Wire Wire Line
	7495 4270 6995 4270
Text HLabel 7495 4270 2    39   Output ~ 0
3.3V
Text HLabel 6830 3885 0    39   Output ~ 0
SW
Text HLabel 6830 3650 0    39   Input ~ 0
GND
Text HLabel 4305 3905 0    39   Input ~ 0
GND
$EndSCHEMATC
