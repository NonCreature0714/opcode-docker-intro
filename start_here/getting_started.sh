#! /bin/bash

# Make sure Docker works.
docker run hello-world

# Pull the Ubuntu image
docker pull ubuntu

# Run an Ubuntu container, and remove it afterwards to save host system space.
docker run --rm -it ubuntu 