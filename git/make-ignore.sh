#!/bin/bash
#
# MAINTAINER Stephan Rayner <stephan.rayner@gmail.com>

EDITORS=vim,visualstudiocode,sublimetext
LANGS=python,node

wget "https://www.gitignore.io/api/${EDITORS},${LANGS}"
mv $EDITORS,$LANGS gitignore