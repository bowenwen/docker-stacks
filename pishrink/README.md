# PiShrink on Docker

A tool from [Drewsif/PiShrink] that shrinks the size of a raspbian image for raspberry pi

## Prerequisites

* Raspbian image only
* Installation of docker

## Usage

### Build pishrink on docker (optional)

``` bash
docker build -t pishrink .
```

### Run pishrink
``` bash
docker run -v ${PWD}:/home/root -it bowenwen/pishrink:latest imagefile.img [newimagefile.img]
  -s: Skip autoexpand
  -d: Debug mode on
  -r: Use advanced repair options
  -z: Gzip compress image after shrinking
  -h: display help text
```

<!-- Links -->
[Drewsif/PiShrink]: https://github.com/Drewsif/PiShrink
