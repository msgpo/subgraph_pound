FROM        debian:stretch
MAINTAINER  mckinney@subgraph.com

RUN         apt-get update && apt-get install -y apt-cacher-ng

EXPOSE      3142
CMD         chmod 755 /var/cache/apt-cacher-ng && /etc/init.d/apt-cacher-ng start && tail -f /var/log/apt-cacher-ng/*
