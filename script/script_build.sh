#!/bin/bash

export PATH=/data/bin:$PATH
export USE_CCACHE=1
export CCACHE_DIR=/data/ccache/jenkins/RR
export KBUILD_BUILD_USER=Gothdroid
export KBUILD_BUILD_HOST=Gothdroid.com

cd /data/jenkins/workspace/ResurrectionRemix

prebuilts/misc/linux-x86/ccache/ccache -M 60G

make clean

. build/envsetup.sh
lunch cm_$device-userdebug
make bacon -j8
