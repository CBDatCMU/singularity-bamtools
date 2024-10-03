#!/bin/bash

# Copyright © 2024 Ray & Stephanie Lane Computational Biology Department.
# All Rights Reserved.

IMAGE=singularity-bamtools-2.5.2.sif
DEFINITION=Singularity

singularity build --remote $IMAGE $DEFINITION

if [ -f $IMAGE ]; then
	exit 0
else
	exit 1
fi
