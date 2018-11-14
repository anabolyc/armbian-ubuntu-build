#!/bin/bash

docker run --rm --privileged -v ./output:/armbian-build/build -ti $(cat tag) /bin/bash