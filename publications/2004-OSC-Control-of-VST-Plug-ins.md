# OSC Control of VST Plug-ins

Michael Zbyszynski, Adrian Freed. *OSC Control of VST Plug-ins*. 2004.  OSC Conference 2004. 

**Abstract**: While audio plug-ins are extremely useful, the limitations of the control structure can make that use unwieldy. Specifically, the name space of each VST plug-in is flat and populated by parameter names that have been carefully chosen by the designers of the plug-in, but do not necessarily represent the terminology or language preferred by the user. Parameter names are mapped through a generic range (0. to 1.) without informing the user about the mapping that occurs inside the plug-in, and each message controls only one parameter. Through the use of OSC, a flexible name space can be developed that employs multiple, intuitive parameter names (and aliases), higher level controls, and range mapping, simplifying control for the user. We will demonstrate these ideas with Max/MSP patches that repackage VST plug-ins in a more usable way and also introduce the idea that plug-in interfaces themselves can be improved by building in a well-formed OSC name space. We will also suggest ways (e.g., atomicity and queries) that control could be further improved if the plug-in could be controlled directly with OSC.

**Context**: This was a featured publication on the legacy (pre-2011) opensoundcontrol.org website, ported to the new site by Matt Wright in early 2021

---
Submitted to [opensoundcontrol.org](https://opensoundcontrol.org) by [Legacy](https://web.archive.org) at 03/26/2021 17:03:31
