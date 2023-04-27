#!/bin/bash
scp ./application/docker/target/edemokracia-application-*_docker_image_x86_64.tar robert.csakany@edemokracia.judo.technology:/tmp/edemokracia_image.tar

scp ./update-image.sh robert.csakany@edemokracia.judo.technology:/tmp/update-image.sh

#ssh robert.cskaany@edemokracia.judo.technology /tmp/update-image.sh
