::: {.content}
WOscLib is written in C++ and relased under the GNU LGPL.

(from http://wosclib.sourceforge.net/doc):

This work is a re-implementation and (hopefully) modernization of the
the classic OSC-Kit, which was originally provided by Matt-Wright and
was written in pure C (see
http://www.cnmat.berkeley.edu/OpenSoundControl).\
Matt\'s kit uses lots of global variables, a fast but user-unfriendly
memory-allocation (and de-allocation)-scheme, makes use of non type-save
osc-callback-functions, has no real exception handling and its
modularity is heavily restricted due to the C-design. There is also no
documentation based on a modern auto-doc-system (e.g. doxygen) what
makes it harder for newbies to get an OSC-system running in 10 minutes
since they have to read all (or at least some) source-files first.

Summary of the reasons of the re-implementation are:

Higher level programming language (C++) and therefor a higher
productivity.\
Enhanced modularity.\
Enhanced code-reusage.\
Elimination of global variables and functions to facilitate usage of
multiple OSC-servers in the same process.\
Good exception handling.\
Type-save interfaces for OSC arguments in OSC-methods.\
Better (and dynamic) management of OSC-methods.\
Good documentation.\
Less complex OSC-system implementation.

::: {.book-navigation}
:::
:::
