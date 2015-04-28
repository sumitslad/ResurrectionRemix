#!/bin/bash

export PATH=/data/bin:$PATH

cd /data/jenkins/workspace/ResurrectionRemix

repo forall -vc "git reset --hard" && repo forall -vc "git clean -df"
