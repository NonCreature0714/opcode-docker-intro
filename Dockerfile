# A simple Ubuntu Dockerfile for building an Ubuntu image.

# The ':18:04' makes this a stable image, just 'ubuntu' would make it a rolling version.
FROM ubuntu:18:04

# Adding metadata is a Good practice.
LABEL   maintainer.name="Bill Brubaker"\
        maintainer.handle="noncreature0714"\
        maintainer.email="noncreature0714@gmail.com"\
        container.purpose="instructional"

