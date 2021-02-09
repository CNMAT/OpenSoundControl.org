::: {.content}
::: {#biblio-node}
[ ]{.Z3988
title="ctx_ver=Z39.88-2004&rft_val_fmt=info%3Aofi%2Ffmt%3Akev%3Amtx%3Adc&rfr_id=info%3Asid%2Fopensoundcontrol.org&rft.title=EtherSense%2C+an+OSC-based+sensor+platform&rft.date=2004&rft.aulast=Fl%C3%A9ty&rft.aufirst=Emmanuel&rft.au=Leroy%2C+Nicolas"}

  ---------------------------------------------- -- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
         [ Publication Type ]{.biblio-row-title}    Conference Paper
      [ Year of Publication ]{.biblio-row-title}    2004
                  [ Authors ]{.biblio-row-title}    [FlÃ©ty, Emmanuel](publications/author/Fl%C3%A9ty) ; [Leroy, Nicolas](publications/author/Leroy)
          [ Conference Name ]{.biblio-row-title}    OSC Conference 2004
    [ Conference Start Date ]{.biblio-row-title}    30/07/2004
                 [ Abstract ]{.biblio-row-title}    This paper reports our recent developments on sensor acquisition systems, using computer network technology. We present a versatile hardware system that can be connected to wireless modules, Analog to Digital Converters, and enables Ethernet communication. We are planning to make freely available the design of this architecture. We describe also several approaches we tested for wireless communication. Such technology developments are currently used in our newly formed Performance Arts Technology Group.
                          [ ]{.biblio-row-title}    
                   [ Export ]{.biblio-row-title}    [EndNote Tagged](publications/export/tagged/179) \| [XML](publications/export/xml/179) \| [BibTex](publications/export/bib/179)
  ---------------------------------------------- -- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::

Full-Text

<div>

1\. INTRODUCTION\
Gesture sensing (controllers, augmented instruments, body gestures)
requires accurate sampling and low latency, especially for the direct
control of sound parameters with high-resolution control. Our design
strategy is to develop an acquisition platform with high-quality
digitization that can be used in several distinct configurations: from
sensing the gesture of musicians to tracking the movements of several
dancers. A particular implementation of this design, the EtherSense will
be commercially available shortly.

As discussed in \[1\] we found that most commercial acquisition systems
were unsatisfactory for the increasingly complex sensing technology
needed for performance arts. However Network Technology offers nowadays
interesting opportunities while OSC rises as a standard. At the same
time, network technolgy has key features in the context of live
performance, such as long cable support, fast data-rate and robustness

2\. SYSTEM ARCHITECTURE\
Our goal was to build a versatile system suitable for gesture research,
allowing us to experiment and to prototype with various sensors systems.
The main requirement was to use a hardware base comparable to a fully
manufactured and ready-to-use product. Therefore, we decided to separate
the Ethernet and OSC functions from a set of various application
modules, including for example wireless receptors, digitizers,
digital-to-analog converters and relays. We thus opted for a Mother
Board (Ethernet & OSC) / Daughter Board (DB) architecture as described
by figure 1.

A simple Q&A protocol layer allows for the communication between the
mother and the daughter boards. These latter ones can be for example
multiple channel digitizers, DACs, PWM servo controllers or a custom mix
of several functions (up to 16 boards can be connected on the same bus).

A DB transmits its contents on the motherâ€™s request, with custom
sampling period, which can be defined for each DB (a 1400 Hz sample rate
can be achieved with a single card ON).

![Ethersense System
Architecture](/web/20200706221629im_/http://opensoundcontrol.org/files/ethersense-diagram.gif)\
Figure 1 : System architecture

Digitized data is then inserted as a integer list into the OSC buffer
with an OSC address related to the concerned MB and DB like
/Ethersense04/DB02 \[16 int. list\].

Data routing and unpacking can be therefore easily achieved on the host
computer. The Ethersense is composed of two 16 channel 16 bit digitizing
daughter boards. External 15 pin DSub connectors allow direct sensor
connection and export power supply while a D-Sub to Â¼â€� jack pig tail
connector make sensor experiments easy.

3\. WIRELESS PROTOTYPES\
Dance performances need wireless portable equipment. The main challenge
is to allow several performers to be equiped with sensors while FCC
regulations make large spectrum radio frequency broadcast difficult.

WiFi was the next logical step for experimenting high-speed wireless
network solutions. WiFi adapters are now embedded in most laptops or can
be added to a computer. Note that 802.11 is not Ethernet per se, it is a
wireless hardware and protocol standard. However, it has been designed
to transport Ethernet: sending OSC through WiFi is straightforward. WiFi
has also features 13 channels with 5 non-overlapping ones. Current
experiments showed that 5 digitizing terminal could share the same
channel at a 5ms transmission rate. Still at experimental stage, we have
successfully tested the unit with dancers equipped with accelerometers
and flexion sensors.

5\. CONCLUSIONS AND FUTURE WORK\
The general performance of the acquisition system architecture is
excellent. Overall these developments are very promising.

We have designed custom DBs that can be connected to our OSC board, such
as two measurement cards for an augmented violin with accelerometers.

The WiFi prototype now has an embedded LCD and an autonomy of 1h35 with
alkaline AAA batteries. Rechargeable ones can be also used and an
external AA battery pack might extend the autonomy to 3 or 4 hours.

6\. REFERENCES\
\[1\] FlÃ©ty, E. & al. â€œVersatile sensor acquisition system\
utilizing Network Technologyâ€� Proceedings of NIME, NIME 2004 â€"
Hamamatsu â€" SUAC â€" Japan.

</div>

  Attachment                                               Size
  -------------------------------------------------------- ----------
  [ethersense-diagram.gif](files/ethersense-diagram.gif)   24.19 KB
:::