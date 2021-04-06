# Stompbox 2.0

**[status](../implementation-status.html)**: beta / released for testing (as of 3/8/2021)

**Status details**: 
Current

**Project Type**: Hardware

**Project URL**: <https://cnmat.berkeley.edu/projects/stompbox-20-2019>

**OSC Documentation URL**: <https://github.com/dzluke/stompbox>

## Description

The CNMAT Stompbox 2.0 is a microcontroller-based, WiFi/Ethernet connected OSC I/O device.  It features 12 1/4" TRS jacks for attaching expression and switch pedal inputs or outputting control voltages, Qwiic connections for IIC (I2C) devices and a 20x4 backlit LCD character display which is used for configuration and as a cue display. The device is designed to be PoE powered, but can also be powered via 5V micro-USB supply or external LiPo battery.  Once booted, the device waits for an incoming OSC message and sets the source IP address of that message as its target.  The state of all of its ports are then transmitted to this address as OSC bundles.  The hardware and code are designed to allow configuration of inputs & outputs on the fly.  Once connected, the '/configuration/*/' message can be used to change the state of any port.

## Implementation Details

**Platform(s)**: Platform independent, ESP32: Olimex ESP32-POE-ISO

**Features**: Bounded Latency, Bundle Support, High Speed, Packet Construction, Packet Parsing, Stateless Interface, Timetag Support, Wildcard Matching Support

**Supported OSC types**: b: blob, c: char, d: float64, f: float32, F: false, h: int64, i: int32, I: infinitum, m: MIDI message, N: null, r: RGBA color, s: string, S: symbol, t: timetag, T: true, []: array

**Bundle support**: The device utilizes OSCBundle.h and thus supports creation, reading of bundles including nested bundles.

**Timetag support**: Generates timestamped sequenced data

## Publications 

forthcoming

## Images 

<forthcoming>

---
Submitted to [opensoundcontrol.org](https://opensoundcontrol.org) by [Jeremy Wagner](https://www.jeremywagner.info) at 3/8/2021 12:54:10
