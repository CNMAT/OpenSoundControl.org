# Make Controller Kit

**[status](../implementation-status.html)**: legacy/at different link (as of 19-Mar-21)

**Status details**: 
https://makezine.com/2006/05/11/make-controller-kit/ current site-unclear if using OSC

**Project Type**: Hardware

**Project URL**: <http://www.makingthings.com/>

**OSC Documentation URL**: <http://www.makingthings.com/ref/firmware/html/group___o_s_c.html>

## Description

The Make Controller Kit is a high-performance 32-bit sensor interface featuring Ethernet, USB, ADC, high-current outputs, JTAG, many kinds of motor control (DC, servo, stepper), CAN, RS232, and more by MakingThings. It is an open source project - all the firmware, software tools and schematics are freely available. <p> The board by default runs a program that allows it to connect to other devices via OSC over Ethernet and USB. It's also easily reprogrammed via USB to run user-written programs standalone/embedded. It's easy to connect to any of the normal desktop environments that support OSC - Max/MSP, Processing, Flash, SuperCollider, etc. <p> The board currently runs OSC over both USB and UDP - we're hoping to get it up over TCP, and Zigbee as well, among others.

## Implementation Details

**Platform(s)**: Other

**Features**: Packet Parsing, Packet Construction, Bundle Support

**Supported OSC types**: i: int32, s: string

**Bundle support**: Reads Bundles, Creates Bundles

**Transport support**: UDP, Serial-SLIP

---
Submitted to [opensoundcontrol.org](https://opensoundcontrol.org) by [Legacy](legacy-site.html) at 2/24/21 12:32
