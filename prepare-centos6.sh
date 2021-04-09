#!/bin/bash
# Copyright lowRISC contributors.
# Licensed under the Apache License, Version 2.0, see LICENSE for details.
# SPDX-License-Identifier: Apache-2.0

set -x

# Install prerequisite packages.
yum install centos-release-scl

yum install -y \
  git \
  shadow-utils \
  bison \
  flex \
  texinfo \
  help2man \
  gawk \
  gettext \
  wget \
  curl xz \
  ncurses-devel \
  ncurses-static \
  glib2-devel \
  glib2-static \
  libfdt-devel \
  pixman-devel \
  rh-python35 \
  devtoolset-9

# Enable SCLs for all shell sessions.
# See https://access.redhat.com/solutions/527703
cat << EOF > /etc/profile.d/scl_enable.sh
#!/bin/bash
source scl_source enable python35
source scl_source enable devtoolset-9
EOF
