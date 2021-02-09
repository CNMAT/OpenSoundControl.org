::: {.content}
This is almost the same as the \"Sensor/Gesture-Based Electronic Musical
Instruments\" application area above, except that the intended user
isn\'t necessarily a musician (though the end result may be intended to
be musical). Therefore the focus tends to be more on fun and
experimentation rather than musical expression, and the user often
interacts directly with the computer\'s user interface instead of
special musical controllers\
Examples:

-   [Picker](http://www.ixi-software.net/content/body_software_picker.html)
    is software for converting visual images into OSC messages for
    control of sound synthesis
-   [Sodaconstructor](http://www.soda.co.uk/explore/osc.htm) is software
    for building, simulating, and manipulating mass/spring models with
    gravity, friction, stiffness, etc. Parameters of the real-time state
    of the model (e.g., locations of particular masses) can be mapped to
    OSC messages for control of sound synthesis.
-   [SpinOSC](http://www.ixi-software.net/content/body_software_spinosc.html)
    is software for building models of spinning objects. Properties such
    as size, rotation speed, etc. can be sent as OSC messages.
-   Stanford's [CCRMA](http://ccrma.stanford.edu/) 's Circular Optical
    Object Locator (Hankins et al. 2002) is based on a rotating platter
    upon which users place opaque objects. A digital video camera
    observes the platter and custom image-processing software outputs
    data based on the speed of rotation, the positions of the objects,
    etc. A separate computer running Max/MSP receives this information
    via OSC and synthesizes sound.
-   [GulliBloon](http://gullibloon.org/) is a message-centric
    communication framework for advanced pseudo-realtime sonic and
    visual content generation, built with OSC. Clients register with a
    central multiplexing server to subscribe to particular data streams
    or to broadcast their own data.
-   The [LISTEN](http://listen.imk.fraunhofer.de/) project aims to
    \"augment everyday environments through interactive soundscapes\":
    users wear motion-tracked wireless headphones and receive individual
    spatial sound based on their individual spatial behavior. This
    [interview](http://www.swr.de/swr2/audiohyperspace/engl_version/interview/eckel.html)
    discusses artistic aspects.

::: {.book-navigation}
:::
:::
