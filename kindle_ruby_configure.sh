#!/bin/bash -e

# arigatou:
# - https://gist.github.com/kost/1494305
# - http://zenmachine.wordpress.com/cross-compiling-ruby-to-arm-processors-the-not-so-zen-way/
# - http://k0st.wordpress.com/2011/12/18/ruby-on-amazon-kindle/

TOOL=arm-kindle_k5-linux-gnueabi-

export CC=$XT-gcc
export LD=$XT-ld
export AR=$XT-ar
export RANLIB=$XT-ranlib
export ac_cv_func_getpgrp_void=yes
export ac_cv_func_setpgrp_void=yes
export CROSS_COMPILING=1

./configure --host=arm-linux "$@"

