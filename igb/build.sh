#!/bin/bash

make clean
make -C /lib/modules/$(uname -r)/build M=$PWD modules

