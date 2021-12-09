# devosc: a unix device for reading OSC messages

**[status](../implementation-status.html)**: active (as of 19-Mar-21)

**Status details**: 
appears still active-references new release in 2020

**Project Type**: Software Application

**Project URL**: <http://www.cnmat.berkeley.edu/downloads>

**OSC Documentation URL**: <http://www.cnmat.berkeley.edu/downloads>

## Description

This experimental implementation of OSC was developed to solve a common problem in current operating systems: TCP/IP runs at below real-time priority making it impossible to reliably deliver OSC from UDP or TCP packets to high priority audio threads. The first implementation for CNMAT's connectivity processor has been field tested in several concerts. Under OS/X UDP packets containing OSC payloads are transferred in the ethernet hardware interrupt to the /dev/osc driver where they can be directly read or polled by applications.

---
Submitted to [opensoundcontrol.org](https://opensoundcontrol.org) by [Legacy](legacy-site.html) at 2/24/21 12:32
