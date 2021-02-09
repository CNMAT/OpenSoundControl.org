::: {.content}
A human musician interacts with sensor(s) that detect physical activity
such as motion, acceleration, pressure, displacement, flexion,
keypresses, switch closures, etc. The data from the sensor(s) are
processed in real time and mapped to control of electronic sound
synthesis and processing.\
![](https://web.archive.org/web/20201128045615im_/http://www.cnmat.berkeley.edu/OpenSoundControl/img/sensor-inst.jpg){width="400"
height="70"}\
*Diagram of processes (ovals) and data (rectangles) flow in a
sensor-based musical instrument.*\
This kind of application is often realized with Heterogenous Distributed
Multiprocessing on Local Area Networks, e.g., with the synth control
parameters sent over the LAN to a dedicated \"synthesis server,\" or
with the sensor measurements sent over the LAN from a dedicated \"sensor
server\". There have also been many realizations of this paradigm using
OSC within a single machine.\
Examples:

-   Wacom tablet controlled \"scrubbing\" of sinusoidal models
    synthesized on a synthesis server. (Wessel et al. 1997)
-   The MATRIX (\"Multipurpose Array of Tactile Rods for Interactive
    eXpression\") consists of a 12x12 array of spring-mounted rods each
    able to move vertically. An FPGA samples the 144 rod positions at 30
    Hz and transmits them serially to a PC that converts the sensor data
    to OSC messages used to control sound synthesis and processing.
    (Overholt 2001)
-   In a project at the MIT Media Lab (Jehan and Schoner 2001), the
    analyzed pitch, loudness, and timbre of a real-time input signal
    control sinusoids+noise additive synthesis. In one implementation,
    one machine performs the real-time analysis and sends the control
    parameters over OSC to a second machine performing the synthesis.
-   The [Slidepipe](http://www.argobot.com/projects/slidepipe)
-   Three projects at UIUC are based on systems consisting of real-time
    3D spatial tracking of a physical object, processed by one processor
    that sends OSC to a Macintosh running Max/MSP for sound synthesis
    and processing:
    -   In the *eviolin* project (Goudeseune et al. 2001), a Linux
        machine tracks the spatial position of an electric violin and
        maps the spatial parameters in real-time to control processing
        of the violin\'s sound output with a resonance model.
    -   In the *Interactive Virtual Ensemble* project (Garnett et al.
        2001), a conductor wears wireless magnetic sensors that send 3D
        position and orientation data at 100 Hz to a wireless receiver
        connected to an SGI Onyx. This machine processes the sensor data
        to determine tempo, loudness, and other paramaters from the
        conductor; these parameters are sent via OSC to Max/MSP sound
        synthesis software.
    -   *VirtualScore* is an immersive audiovisual environment for
        creating 3D graphical representations of musical material over
        time (Garnett et al. 2002). It uses a CAVE to render 3D graphics
        and to receive orientation and location information from a wand
        and a head tracker. Both real-time gestures from the wand and
        stored gestures from the "score" go via OSC to the synthesis
        server.
-   In Stanford's [CCRMA](http://ccrma.stanford.edu/) 's Human/Computer
    Interaction seminar ( [Music
    250a](http://ccrma.stanford.edu/courses/250a) ), students connect
    sensors to a special development board containing an Atmel AVR
    microcontroller which sends OSC messages over a serial connection to
    Pd (Wilson et al. 2003).
-   Projects using [La Kitchen](http://www.la-kitchen.fr/) \'s
    [Kroonde](http://www.la-kitchen.fr/kitchenlab/kroonde-en.html)
    (wireless) and
    [Toaster](http://www.la-kitchen.fr/kitchenlab/toaster.html) (wired)
    general-purpose multichannel sensor-to-OSC interfaces.
-   Projects using [IRCAM](http://www.ircam.fr/) \'s
    [EtherSense](http://www.ircam.fr/equipes/temps-reel/movement/hardware)
    sensors-to-OSC digitizing interface
-   The [BuckyMedia](http://web.fm/cgi-bin/twiki/view/Fmext/BuckyMedia)
    project uses 3d accelerometers employing OSC over WLAN (box
    developed by [f0am](http://f0.am/) ) to transmit the movements of
    several geodesic, tensile or synetic structures for audiovisual
    interpretation.

::: {.book-navigation}
:::
:::
