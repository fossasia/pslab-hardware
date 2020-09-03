# pslab-hardware

[![Build Status](https://travis-ci.org/fossasia/pslab-hardware.svg?branch=master)](https://travis-ci.org/fossasia/pslab-hardware)
[![Gitter](https://badges.gitter.im/fossasia/pslab.svg)](https://gitter.im/fossasia/pslab?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge)
[![Twitter Follow](https://img.shields.io/twitter/follow/pslabio.svg?style=social&label=Follow&maxAge=2592000?style=flat-square)](https://twitter.com/pslabio)

This repository contains the [PSLab](https://pslab.io) hardware design files. PSLab is a tiny pocket science lab that provides an array of test and measurement instruments for doing science and engineering experiments. It can function like an oscilloscope, waveform generator, frequency counter, programmable voltage and current source and also as a data logger. The first version of hardware (v1) was developed by [Jithin B P](https://github.com/jithinbp). Later versions were developed by [Padmal](https://github.com/CloudyPadmal).

## Communication

* Our chat channel is on Gitter here at [PSLab](https://gitter.im/fossasia/pslab)
* Mailing List https://groups.google.com/forum/#!forum/pslab-fossasia

## Content of Repository

- **archives**: Contains previous versions of PSLab schematics
- **docs**: Supplement materials, schematics as PDFs, images of PSLab
- **schematics**: PCB layout of PSLab device

## Version Information

| Version | Content | Preview |
| -------------- | ------- | ------- |
| PSLab KiCAD v1   | Original version with `SEELABLET` schematics and layout files | ![](docs/images/pslab_version_previews/PSLab_v1.png) |
| PSLab KiCAD v2 | Developed version with new additions (Voltage regulator, Oscillator) | ![](docs/images/pslab_version_previews/PSLab_v2.png) |
| PSLab KiCAD v3 | Device layout changed to Arduino Uno form factor | ![](docs/images/pslab_version_previews/PSLab_v3.png) |
| PSLab KiCAD v4 | Assembly optimized version with Arduino Mega form factor having components mounted only on top side | ![](docs/images/pslab_version_previews/PSLab_v4.png) |
| PSLab KiCAD v5 | Added socket for external bluetooth module and bottom silk screen with pin description | ![](docs/images/pslab_version_previews/PSLab_v5.png) |
| PSLab KiCAD v6 | Added external power input, RTC module, SD Card slot, USB type C, ESP 01 and upgraded UART and power ICs | ![](docs/images/pslab_version_previews/PSLab_v6.png) |

## Platform

* Microcontroller Platform : [PIC24EP256GP204](http://www.microchip.com/wwwproducts/en/PIC24EP256GP204)
* IDE: [MPLABX IDE v3.35](http://www.microchip.com/mplab/mplab-x-ide) (Supported on Linux/Windows/Mac)
* Compiler: [MPLAB® XC16 Compiler](http://www.microchip.com/mplab/compilers)
* Programming Tool: [PICkit™ 3 In-Circuit Debugger](http://www.microchip.com/Developmenttools/ProductDetails.aspx?PartNO=PG164130)

## PCB Layout
Front Side                        | Back Side
 -------------------------------- | ----------------------------------
![](docs/images/PSLab_v6_top.png) | ![](docs/images/PSLab_v6_bottom.png)


## Pin-outs
- Find the pin-out diagram of PSLab v6 [here](docs/pin_layouts/PSLab_Pin_Layout.pdf)!

## Parts list

- [PIC24EP256GP204](http://www.microchip.com/wwwproducts/en/PIC24EP256GP204) - Microcontroller
- [MCP6S21](http://www.microchip.com/wwwproducts/en/mcp6s21) - Programmable gain amplifier
- [MCP4728](http://www.microchip.com/wwwproducts/en/mcp4728) - 4 Channel DAC
- [TC7660](http://www.microchip.com/wwwproducts/en/TC7660) - Charge Pump voltage invertor
- [TC1240A](http://www.microchip.com/wwwproducts/en/TC1240A) - Charge Pump voltage doubler
- [TL082](http://www.ti.com/product/TL082) - 2 channel Op-Amp
- [LM324](http://www.ti.com/product/LM324) - 4 channel Op-Amp
- [DS1307Z+](https://datasheets.maximintegrated.com/en/ds/DS1307.pdf) - RTC module
- [LDFM33PUR](https://www.st.com/resource/en/datasheet/ldfm.pdf) - 3.3 V regulator
- [LDL212PU50R](https://www.st.com/resource/en/datasheet/ldl212.pdf) - 5.0 V regulator
- [CP2102N-A02-GQFN24](https://www.silabs.com/documents/public/data-sheets/cp2102n-datasheet.pdf) - USB-UART bridge
- [74HC126](http://www.ti.com/product/SN74HC126) - 4 channel buffer
- [SP0503BAHTG](https://m.littelfuse.com/~/media/electronics/datasheets/tvs_diode_arrays/littelfuse_tvs_diode_array_sp05_datasheet.pdf.pdf) - ESD protector

- 0.5 A Fuse
- 1.5 A Fuse
- Assorted resistors, capacitors & diodes

Find the complete bill of materials from [this link](docs/components/PSLab_Bill_Of_Materials.csv).

### Optional Parts

Extension slots for ESP and Bluetooth are available.
- [ESP8266 (ESP-01)](http://www.microchip.ua/wireless/esp01.pdf) - UART-TCP bridge
- HC05 Bluetooth module

## Hardware Specs

* 3-Channel up to 2MSPS Oscilloscope. Software selectable amplification stages
* 12-bit Voltmeter with programmable gain. Input ranges from +/-10 mV to +/-16 V
* 3x 12-bit Programmable voltage sources +/-3.3 V,+/-5V,0-3 V
* 12-bit Programmable current source. 0-3.3 mA
* Supports Advanced plugins/Add-on Modules
* 4-Channel, 4 MHz, Logic Analyzer
* 2x Sine/Triangular wave generators. 5 Hz to 5 KHz. Manual amplitude control for SI1
* 4x PWM generators. 15 nS resolution. Up to 8 MHz
* Capacitance Measurement. pF to uF range
* I2C, SPI and UART data buses for Accelerometer gyroscope humidity and temperature sensor modules etc

## Firmware

The firmware is available here: https://github.com/fossasia/pslab-firmware

## Feature list for the acquisition and control

### Oscilloscopes

One of the main features of PSLab is the 3-channel Oscilloscope which can monitor analog inputs at maximum of 2 million samples per second. It includes controls such as triggering, and gain selection. Uses Python-Scipy for curve fitting.

### Waveform Generators

* SI1 : 5 Hz – 5 KHz arbitrary waveform generator. Manual amplitude control up to +/-3 Volts
* SI2 : 5 Hz – 5 KHz arbitrary waveform generator. Amplitude of +/-3 Volts. Attenuable via software
* SQx : There are four phase correlated PWM outputs with maximum frequency 32 MHz, 15 nano second duty cycle, and phase difference control.

### Measurement Functions

* Frequency counter tested up to 16 MHz.
* Capacitance Measurement. pF to uF range
* PSLab has several 12-bit analog inputs (function as voltmeters) with programmable gains, and maximum ranges varying from +/-5 mV to +/-16 V.

### Voltage and Current Sources

* 12-bit Constant Current source. Maximum current 3.3 mA (subject to load resistance).
* PSLab has three 12-bit Programmable voltage sources +/-3.3 V,+/-5 V,0-3 V. (PV1, PV2, PV3) controls

### Other useful tools

* 4MHz, 4-channel Logic analyzer with 15 nS resolution. Voltage and current sources
* SPI, I2C and UART outputs
* Graphical Interfaces for Oscilloscope, Logic Analyser, streaming data and several experiments developed that use a common framework which drastically reduces code required to incorporate control and plotting widgets.
* PSLab also has space for an ESP-01 module for WiFi access with access point/station mode.
