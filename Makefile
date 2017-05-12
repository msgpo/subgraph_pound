
STARTED=`date +%m%d%Y_%H-%M-%S`
USERDIR=$(USER)
VOLUME_NAME=/var/builds/isos/$(USERDIR)/${STARTED}:/root/subgraph_desktop
.PHONY: build run clean

build:
	sudo docker-compose build

run:
	sudo VOLUME=$(VOLUME_NAME) docker-compose up

clean:
	sudo docker-compose rm

