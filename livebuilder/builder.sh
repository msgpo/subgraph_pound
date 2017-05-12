#!/bin/bash
set -e

# Clone repository
git clone https://github.com/subgraph/subgraph_desktop_stretch /root/subgraph_desktop
# Staging commands
if stat --printf='' /root/config/packages.chroot/*.deb 2>/dev/null ;then
    mkdir -p /root/subgraph_desktop/config/packages.chroot 
    cp /root/config/packages.chroot/*.deb /root/subgraph_desktop/config/packages.chroot/
fi
if stat --printf='' /root/config/hooks/*.hooks.* 2>/dev/null ;then
    cp /root/config/hooks/*.hook.* /root/subgraph_desktop/config/hooks/normal/
fi
# Build commands
lb clean --purge
lb config --apt-http-proxy http://apt-cacher-ng:3142 --apt-options "--yes -o Dpkg::Options::=--force-confdef -o Dpkg::Options::=--force-confnew"
lb build 
