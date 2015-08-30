#!/bin/bash

VERSION=$(cat VERSION)

vagrant destroy -f
vagrant up
vagrant package --output opscode-centos-66-v${VERSION}.box
