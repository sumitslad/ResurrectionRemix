#!/bin/bash

#different export
export PATH=/data/bin:$PATH

#go on directory
cd /data/jenkins/workspace/ResurrectionRemix


git pull && repo sync -j4

#TEST
