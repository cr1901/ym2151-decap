# YM2151 Vectorization
This project attempts to vectorize the die layers of a [Yamaha YM2151](https://en.wikipedia.org/wiki/Yamaha_YM2151) FM Synthesis chip, with Operator Type M.

Although the layers file is standalone, it is best opened in Inkscape with an image of the die.

The die is a .png over 600MB large, and so is not committed in this repo. The die image can be downloaded here: https://og.kervella.org/ym2151/. This will require at least 2GB of memory. The die filename should not be changed from ym2151-metal.png so that the SVG interpreter can find the image when parsing the file.

Current status is:
Vdd (5V) and Vss (GND) completely traced (far as I can tell)!

Colour table:
------------
Active: RGB = 0x0000FF, Alpha=60
Poly:	RGB = 0xFF0000, Alpha=60
Metal:	RGB = 0xFFFF00, Alpha=60
Via:	RGB = 0x00FF00, Alpha=60
Contact RGB = 0xFF00FF, Alpha=60
