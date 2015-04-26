#!/bin/bash

export PATH=/data/bin:$PATH

cd /data/jenkins/workspace/ResurrectionRemix
git pull && ./repo sync -j8
