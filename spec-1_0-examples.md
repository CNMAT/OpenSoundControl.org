version 1.0, March 29 2002, Matt Wright

This document provides examples to support the [OpenSound\
Control Specification](OSC-spec.html) .

#### []{#OSCstrings} OSC-string examples

The string \"OSC\" is represented as an OSC-string with these four\
bytes:

  --- --- --- -----
  O   S   C   \\0
  --- --- --- -----

The string \"data\" is represented as an OSC-string with these eight\
bytes:

  --- --- --- --- ----- ----- ----- -----
  d   a   t   a   \\0   \\0   \\0   \\0
  --- --- --- --- ----- ----- ----- -----

#### []{#typetagstrings} OSC Type Tag String Examples

  ----------------------------------- -----------------------------------
  **Argument types**                  **OSC Type Tag String**

  One float32 argument                \",f\"

  Two int32 arguments followed by one \",iisfff\"
  OSC-string argument followed by     
  three\                              
  float32 arguments                   

  No arguments                        \",\"

  An int32 argument followed by two   \",ibb\"
  OSC-blob arguments                  
  ----------------------------------- -----------------------------------

  :  Example OSC Type Tag Strings

#### []{#OSCaddress} OSC Address Examples

Suppose a particular OSC Address Space includes an OSC Method with the
name\
\"frequency\". This method is contained in an OSC Container with the\
name \"3\", which is contained in another OSC container named
\"resonators\",\
which is contained in the OSC container that is the root of the address
space\
tree. The method\'s OSC Address is \"/resonators/3/frequency\".

The OSC Address \"/a/b/c/d/e\" means that:

-   The root of the tree contains an OSC Container with the name \"a\",
-   that OSC Container contains an OSC Container with the name \"b\",
-   that OSC Container contains an OSC Container with the name \"c\",
-   that OSC Container contains an OSC Container with the name \"d\",\
    and
-   that OSC Container contains an OSC Method with the name \"e\".

#### []{#addressparts} OSC Address Parts Examples

There are three parts of the OSC Address \"/a/b/cde\": \"a\",\
\"b\", and \"cde\". Note that the last part is the name of the\
OSC Method and the other parts are the names of the OSC Containers that
(recursively)\
contain the method.

There are three parts of the OSC Address pattern \"/?/b/\*c\": \"?\",\
\"b\", and \"\*c\".

#### []{#argument} OSC Message Examples

In each of these examples, each byte of a message is printed first in
hexadecimal,\
followed by the corresponding ASCII character in parentheses.

The OSC Message with the OSC Address Pattern
\"/oscillator/4/frequency\"\
and the floating point number 440.0 as the single argument would be
represented\
by the following 32-byte message:

      2f (/)  6f (o)  73 (s)  63 (c)

      69 (i)  6c (l)  6c (l)  61 (a)

      74 (t)  6f (o)  72 (r)  2f (/)

      34 (4)  2f (/)  66 (f)  72 (r)

      65 (e)  71 (q)  75 (u)  65 (e)

      6e (n)  63 (c)  79 (y)  0 ()

      2c (,)  66 (f)  0 ()    0 ()

      43 (C)  dc (Ü)  0 ()    0 ()

The next example shows the 40 bytes in the representation of the OSC
Message\
with OSC Address Pattern \"/foo\" and 5 arguments:

1.  The int32 1000
2.  The int32 -1
3.  The string \"hello\"
4.  The float32 1.234
5.  The float32 5.678

<!-- -->
      2f (/)  66 (f)  6f (o)  6f (o)

      0 ()    0 ()    0 ()    0 ()

      2c (,)  69 (i)  69 (i)  73 (s)

      66 (f)  66 (f)  0 ()    0 ()

      0 ()    0 ()    3 ()    e8 (è)

      ff (ÿ)  ff (ÿ)  ff (ÿ)  ff (ÿ)

      68 (h)  65 (e)  6c (l)  6c (l)

      6f (o)  0 ()    0 ()    0 ()

      3f (?)  9d ()   f3 (ó)  b6 (¶)

      40 (@)  b5 (µ)  b2 (”)  2d (-)

#### []{#bundledispatchorder} Order of Invocation of OSC Methods matched by OSC Messages in an OSC Bundle

Suppose an OSC Servers\' OSC Address Space includes methods with the
following\
OSC Addresses:

-   /first/this/one
-   /second/1
-   /second/2
-   /third/a
-   /third/b
-   /third/c

Suppose an OSC Bundle is received that contains three OSC Messages, and
that\
the three OSC Messages have these OSC Address Patterns:

1.  /first/this/one
2.  /second/\[1-2\]
3.  /third/\*

Six methods will be invoked in this order:

\(1) First /first/this/one, since that OSC Address Pattern appeared first
in\
the OSC Bundle; then

(2-3) Either /second/1 followed /second/2 or /second/2 followed by
/second/1;\
then

(3-6) /third/a, /third/b, and /third/c, in any order.

There are twelve possible orders in which an OSC server may invoke these
six\
methods:

1.  /first/this/one, /second/1, /second/2, /third/a, /third/b, /third/c
2.  /first/this/one, /second/1, /second/2, /third/a, /third/c, /third/b
3.  /first/this/one, /second/1, /second/2, /third/b, /third/a, /third/c
4.  /first/this/one, /second/1, /second/2, /third/b, /third/c, /third/a
5.  /first/this/one, /second/1, /second/2, /third/c, /third/a, /third/b
6.  /first/this/one, /second/1, /second/2, /third/c, /third/b, /third/a
7.  /first/this/one, /second/2, /second/1, /third/a, /third/b, /third/c
8.  /first/this/one, /second/2, /second/1, /third/a, /third/c, /third/b
9.  /first/this/one, /second/2, /second/1, /third/b, /third/a, /third/c
10. /first/this/one, /second/2, /second/1, /third/b, /third/c, /third/a
11. /first/this/one, /second/2, /second/1, /third/c, /third/a, /third/b
12. /first/this/one, /second/2, /second/1, /third/c, /third/b, /third/a
