EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
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
LIBS:conn
LIBS:PSLab
LIBS:PSLab-cache
EELAYER 25 0
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
L SDCard P1
U 1 1 5C58B8EC
P 6095 3615
F 0 "P1" H 6095 2865 47  0000 C CNN
F 1 "SDCard" H 6095 3865 47  0000 C CNN
F 2 "Custom_Components:microSD_HC_Hirose_DM3AT-SF-PEJM5" H 6095 3615 60  0001 C CNN
F 3 "" H 6095 3615 60  0001 C CNN
	1    6095 3615
	1    0    0    -1  
$EndComp
NoConn ~ 5545 3465
NoConn ~ 5545 4165
NoConn ~ 5545 4265
Text HLabel 6595 3915 2    39   Input ~ 0
GND
Text HLabel 5545 3565 0    39   Output ~ 0
CS
Text HLabel 5545 3665 0    39   Output ~ 0
MOSI
Text HLabel 5545 3765 0    39   Output ~ 0
3.3V
Text HLabel 5545 3865 0    39   Output ~ 0
SCK
Text HLabel 5545 3965 0    39   Output ~ 0
GND
Text HLabel 5545 4065 0    39   Output ~ 0
MISO
NoConn ~ 6595 3815
$EndSCHEMATC
