#!/bin/bash
scp ./application/docker/target/edemokracia-application-*_docker_image.tar edemokracia.judo.technology:/tmp/edemokracia_image.tar
scp ./update-image.sh edemokracia.judo.technology:/tmp/update-image.sh

ssh edemokracia.judo.technology /tmp/update-image.sh
