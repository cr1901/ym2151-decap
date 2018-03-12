# YM2151 Vectorization
This project attempts to vectorize the die layers of a [Yamaha YM2151](https://en.wikipedia.org/wiki/Yamaha_YM2151)
FM Synthesis chip, with Operator Type M.

Although the layers file is standalone, it is best opened in Inkscape with an image of the die.

The die is a .png over 600MB large, and so is not committed in this repo.
The die image can be downloaded [here](https://og.kervella.org/ym2151/).
This will require at least 2GB of memory. The die filename should not be changed
from ym2151-metal.png so that the SVG interpreter can find the image when parsing the file.

## Building
To actually obtain a schematic, the vectorized file needs to be run
through various stages of [dietools](https://github.com/galibert/dietools).
This has been automated using the [Meson Build System](http://mesonbuild.com).
To get started, simply run:

```
meson.py build
cd build && ninja
```

The output will be available in two files:
* `ym2151-schem.txt`- Text file that can be used as the lone input argument to `sview` schematic viewer.
* `ym2151-schem.svg`- SVG file of the schematic viewable in any SVG viewer.

`dietools` uses configuration files to determine input and output files,
and is sensitive to changes in paths. Meson does not specify where output files
will actually be placed other than a build root. Any files with `*.in` extension will
have variables enclosed in `@@` substituted based on where `meson` decides
to run commands.

## Progress
Current status is:
* Vdd (5V) and Vss (GND) completely traced (far as I can tell)!

## Colour table
|Layer|RGB Value|Interior Alpha|Exterior Alpha|
|-----|---------|--------------|--------------|
|Active|0x0000FF|60|255|
|Poly|0xFF0000|60|255|
|Metal|0xFFFF00|60|255|
|Via|0x00FF00|60|255|
|Buried Contact|0xFF00FF|60|255|
