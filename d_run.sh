#!/bin/bash

docker run --rm --privileged -ti $(cat tag) /bin/bash
#-v /media/storage-unprotected/armbian-build:/armbian-build 
