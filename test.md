# Every file in the site, even this test, needs to start with an H1 so the index will look nice

NOTE: This issue doesn't appear in GitHub flavored markdown.  Try building this file to see what I mean.

The string \"OSC\" is represented as an OSC-string with these four\
bytes:

  --- --- --- -----
  O   S   C   \\0
  --- --- --- -----


I really want the characters in the table to look more like a system font:\
<span style="font-family:Menlo; color:red"> O S C \\0 \
Note the numbers: 1234567890 look more like numbers</span> \ 


This is not a problem outside of the table context:

 <span style="font-family:Menlo">

      2f (/)  6f (o)  73 (s)  63 (c)

      69 (i)  6c (l)  6c (l)  61 (a)

      74 (t)  6f (o)  72 (r)  2f (/)

      34 (4)  2f (/)  66 (f)  72 (r)

      65 (e)  71 (q)  75 (u)  65 (e)

      6e (n)  63 (c)  79 (y)  0 ()

      2c (,)  66 (f)  0 ()    0 ()

      43 (C)  dc (Ü)  0 ()    0 ()

</span> 

...but if we try to place the table in a \<span style\> it doesn't work:


<span style="font-family:Menlo">

  --- --- --- -----
  O   S   C   \\0
  --- --- --- -----


</span>

...so it appears that the table formatting overrides.  Now I attempt to apply the \<span style\> to the contents of table:

  --- --- --- -----
  <span style="font-family:Menlo">O   S   C   \\0</span>
  --- --- --- -----

  No dice.  Ideas?


