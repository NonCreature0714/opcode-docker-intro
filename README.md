# OpCode Docker Intro

Hello and welcome to [Operation Code](https://operationcode.org/)'s Phoenix Chapter.

This is an introduction to [Docker](https://www.docker.com/) for a range of skill sets, and will follow [Docker's official documents](https://docs.docker.com/get-started/), in addition to providing some expanded use cases for beginners and experience developer who are unfamiliar with it.

***Some of this intro may seem tedious, but there is a reason for the "extra" steps.*** And that is to get new or interested developers up-and-running on common industry skills, like working in a terminal, and Git and branching.

## Why teach Docker to newbies? 

In short, Docker makes learning how to code happen more quickly.

Why? Because, as a beginner, you can dive right into using Linux, Apache, MySQL, MongoDB, Node.js, Python, and so forth but **without having to worry about installing all of this directly on your laptop**. AND you can begin to familiarize yourself with cloud-based technology, a rapidly growing and high-salaried field.

Docker will also allow an experienced web developer to run live web pages on a laptop, complete with network requests, as the site is on the web... FOR FREE. And, once the site is ready to go live, all a developer needs to do is install Docker on a web server, do some minor configuration, and ship and run a container on the server.

## Setup the environment

Once [Docker Community Edition (CE)](https://runnable.com/docker/getting-started/) (*Hyperlink to runnable.com, which includes extra easy-to-read materials, and quickly links to official Docker installer for your OS.*) is installed, open a terminal (or PowerShell) and follow these steps:

 1. Sign up for Github
 2. Make a `~/development` directory
    
    ```bash
    mkdir ~/development
    ```

 3. Navigate to your development directory

    ```bash
    cd ~/development
    ```

 4. Clone this repo ([follow these instructions to install Git](https://git-scm.com/downloads))
    
    ```bash
    git clone https://github.com/NonCreature0714/opcode-docker-intro.git
    ```

 5. Navigate to the project

    ```bash
    cd opcode-docker-intro/
    ```
 
 6. Checkout your own branch

    ```bash
    git checkout -b my-branch
    ```

Now on to Docker!

## Getting Started with Docker

Following along with the official Getting Started, let's make sure Docker is installed correctly.

    ```bash

    docker run hello-world
    ```

This will:

 1. Connect to Docker Hub
 2. Pull the hello-world image
 3. Run hello-world in your terminal

If you have not setup a Docker account or logged in, you may be prompted to [create a Docker account](https://hub.docker.com/signup/). 

Next, as hello-world suggests, we'll run an Ubuntu container.

    ```bash
    
    docker run --it ubuntu
    
    ```

This will download and run an Ubuntu container on your machine! Incredible!

Now, if you will navigate to the `start_here` directory in this tutorial, you will see a `Dockerfile`. If you open it, you will see something like this.

    ```Dockerfile
    
    FROM ubuntu:18.04
    RUN apt-get update && apt-get install vim
    ENTRYPOINT ["/bin/bash"]
    
    ```