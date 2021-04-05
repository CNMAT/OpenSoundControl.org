# The WiSe Box - Wireless Sensors

**[status](../implementation-status.html)**: Defunct (as of 11-Mar-21)

**Status details**: 
Last archive.org mirror dates to 2011: https://web.archive.org/web/20090607070454/http://recherche.ircam.fr/equipes/temps-reel/movement/flety/static.php?page=static050309-144808

**Project Type**: Hardware

**Project URL**: <http://recherche.ircam.fr/equipes/temps-reel/movement/flety/static.php?page=static050309-144808>

**OSC Documentation URL**: <http://recherche.ircam.fr/equipes/temps-reel/movement/flety/images/Sell-Sheet-WiSeBox.pdf>

## Description

The WiSe Box project was started to solve the question of multiple performers equipped with sensors on stage, sharing the same wireless media. First, RF transmissions are regulated by local FCC and it's pretty difficult to find radio channels available and authorized worldwide. Second, sharing a single radio carrier requires a good and robust protocol to avoid collision of information. [IEEE 802.11](http://grouper.ieee.org/groups/802/11) standard was designed for this purpose with a CSMA/CA (collision avoidance) mechanism and statistic delays before transmitting to autoregulate traffic and probability of being able to transmit when you need to. <p> The challenge was to make a WiFi pocket size digitizer, not base on a tiny linux board, but designed from scratch in order to be as close as possible from the hardware (an of-the-shelf CompactFlash 802.11b card) and an optimised UDP/IP stack. 802.11 is actually "only" a transportation layer for 802.3 (Ethernet) : OSC was then just as close as it can be. <p> The basic implementation of OSC is like the one of the Ethersense Project. **/WBxx [16 int list]**

## Implementation Details

**Features**: Packet Construction

**Supported OSC types**: i: int32

---
Submitted to [opensoundcontrol.org](https://opensoundcontrol.org) by [Legacy](https://web.archive.org) at 2/24/21 12:33
