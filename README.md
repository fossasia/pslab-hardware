# pslab-hardware

[![Build Status](https://travis-ci.org/fossasia/pslab-hardware.svg?branch=master)](https://travis-ci.org/fossasia/pslab-hardware)
[![Gitter](https://badges.gitter.im/fossasia/pslab.svg)](https://gitter.im/fossasia/pslab?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge)
[![Twitter Follow](https://img.shields.io/twitter/follow/pslabapp.svg?style=social&label=Follow&maxAge=2592000?style=flat-square)](https://twitter.com/pslabapp)

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

## Casing

![](docs/images/pslabdesign.png)

## Platform

* Microcontroller Platform : [PIC24EP256GP204](http://www.microchip.com/wwwproducts/en/PIC24EP256GP204)
* IDE: [MPLABX IDE v3.35](http://www.microchip.com/mplab/mplab-x-ide) (Supported on Linux/Windows/Mac)
* Compiler: [MPLAB® XC16 Compiler](http://www.microchip.com/mplab/compilers)
* Programming Tool: [PICkit™ 3 In-Circuit Debugger](http://www.microchip.com/Developmenttools/ProductDetails.aspx?PartNO=PG164130)

## PCB Layout
Front Side                        | Back Side
 -------------------------------- | ----------------------------------
![](docs/images/PSLab_v5_top.png) | ![](docs/images/PSLab_v5_bottom.png)


## Pin-outs
- Find the pin-out diagram of PSLab v5 [here](docs/pin_layouts/PSLab_Pin_Layout.pdf)!

## Parts list

- [PIC24EP256GP204](http://www.microchip.com/wwwproducts/en/PIC24EP256GP204) - Main uC
- [MCP6S21](http://www.microchip.com/wwwproducts/en/mcp6s21) - Programmable Gain Amplifier
- [MCP4728](http://www.microchip.com/wwwproducts/en/mcp4728) - 4 channel DAC
- [TC7660](http://www.microchip.com/wwwproducts/en/TC7660)  - Charge Pump voltage invertor
- [TC1240A](http://www.microchip.com/wwwproducts/en/TC1240A) - Charge Pump voltage doubler
- [TL082](http://www.ti.com/product/TL082)   - 2 channel Op-Amp
- [LM324](http://www.ti.com/product/LM324)   - 4 channel Op-Amp
- [LM1117](http://www.ti.com/product/LM1117) - 3.3 V regulator
- [MCP2200](http://www.microchip.com/wwwproducts/en/MCP2200) - USB-UART Bridge
- [ESP8266 (ESP-12E)](https://www.adafruit.com/product/2491) - UART-TCP bridge
- 0.5 A Fuse
- 100K Potentiometer
- Assorted resistors, capacitors & diodes

## Hardware Specs

* 4-Channel up to 2MSPS Oscilloscope. Software selectable amplification stages
* 12-bit Voltmeter with programmable gain. Input ranges from +/-10 mV to +/-16 V
* 3x 12-bit Programmable voltage sources +/-3.3 V,+/-5V,0-3 V
* 12-bit Programmable current source. 0-3.3 mA
* Supports Advanced Plugins/Add-on Modules
* 4-Channel, 4 MHz, Logic Analyzer
* 2x Sine/Triangular wave generators. 5 Hz to 5 KHz. Manual amplitude control for SI1
* 4x PWM generators. 15 nS resolution. Up to 8 MHz
* Capacitance Measurement. pF to uF range
* I2C, SPI, UART data buses for Accel/gyros/humidity/temperature modules etc

## Firmware

The firmware is available here: https://github.com/fossasia/pslab-firmware

## Feature list for the acquisition and control

### Oscilloscopes

One of the main features of PSLab is the 4-channel Oscilloscope which can monitor analog inputs at maximum of 2 million samples per second. It includes controls such as triggering, and gain selection. Uses Python-Scipy for curve fitting.

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

* 4MHz, 4-channel Logic analyzer with 15 nS resolution.Voltage and Current Sources
* SPI, I2C, UART outputs
* On-board 2.4 GHz transceiver for wireless data acquisition. (Work in progress..)
* Graphical Interfaces for Oscilloscope, Logic Analyser, streaming data, wireless acquisition and several experiments developed that use a common framework which drastically reduces code required to incorporate control and plotting widgets.
* PSLab also has space for an ESP-12 module for WiFi access with access point/ station mode.

### Advanced Controls
* Advanced Controls with Oscilloscope
* Data Logger
* Logic Analyzer
* Wireless Sensors (Work in progress…)

### Block Diagram
![](docs/images/blockdiag.png)
