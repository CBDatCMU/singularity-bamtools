#!/bin/bash

# Copyright © 2026 Ray & Stephanie Lane Computational Biology Department.
# All Rights Reserved.

IMAGE=singularity-bamtools-2.5.1.sif
DEFINITION=Singularity

sudo singularity build $IMAGE $DEFINITION

if [ -f $IMAGE ]; then
	exit 0
else
	exit 1
fi

