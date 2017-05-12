
FROM	subgraphos/livebuilder_testing

MAINTAINER mckinney@subgraph.com
ENV DEBIAN_FRONTEND noninteractive

COPY builder.sh /root/builder.sh
COPY staging_packages   /root/config/packages.chroot/
COPY staging_hooks      /root/config/hooks/     

WORKDIR /root/subgraph_desktop/

CMD /root/builder.sh

