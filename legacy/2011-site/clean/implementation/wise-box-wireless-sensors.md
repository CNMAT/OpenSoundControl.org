::: {.content}
::: {.field .field-type-text .field-field-project-type}
::: {.field-items}
::: {.field-item}
::: {.field-label-inline-first}
Project Type:
:::

Hardware
:::
:::
:::

::: {.field .field-type-link .field-field-project-url}
::: {.field-items}
::: {.field-item}
::: {.field-label-inline-first}
Project URL:
:::

[http://recherche.ircam.fr/equipes/temps-reel/movement/flety/static.php?page=stat\...](http://recherche.ircam.fr/equipes/temps-reel/movement/flety/static.php?page=static050309-144808)
:::
:::
:::

::: {.field .field-type-link .field-field-osc-documentation-referen}
::: {.field-items}
::: {.field-item}
::: {.field-label-inline-first}
OSC Documentation URL:
:::

[http://recherche.ircam.fr/equipes/temps-reel/movement/flety/images/Sell-Sheet-Wi\...](http://recherche.ircam.fr/equipes/temps-reel/movement/flety/images/Sell-Sheet-WiSeBox.pdf)
:::
:::
:::

::: {.field .field-type-text .field-field-description}
::: {.field-items}
::: {.field-item}
The WiSe Box project was started to solve the question of multiple
performers equipped with sensors on stage, sharing the same wireless
media. First, RF transmissions are regulated by local FCC and it\'s
pretty difficult to find radio channels available and authorized
worldwide. Second, sharing a single radio carrier requires a good and
robust protocol to avoid collision of information. [IEEE
802.11](http://grouper.ieee.org/groups/802/11) standard was designed for
this purpose with a CSMA/CA (collision avoidance) mechanism and
statistic delays before transmitting to autoregulate traffic and
probability of being able to transmit when you need to.

The challenge was to make a WiFi pocket size digitizer, not base on a
tiny linux board, but designed from scratch in order to be as close as
possible from the hardware (an of-the-shelf CompactFlash 802.11b card)
and an optimised UDP/IP stack. 802.11 is actually \"only\" a
transportation layer for 802.3 (Ethernet) : OSC was then just as close
as it can be.

The basic implementation of OSC is like the one of the Ethersense
Project.\
**/WBxx \[16 int list\]**
:::
:::
:::

::: {.field .field-type-number-integer .field-field-transport-type}
::: {.field-label}
Transport Type:
:::

::: {.field-items}
::: {.field-item}
UDP
:::
:::
:::

::: {.field .field-type-number-integer .field-field-features}
::: {.field-label}
Features:
:::

::: {.field-items}
::: {.field-item}
Packet Construction (Server)
:::
:::
:::

::: {.field .field-type-text .field-field-type-support}
::: {.field-label}
Type Support:
:::

::: {.field-items}
::: {.field-item}
i: int32
:::
:::
:::
:::
