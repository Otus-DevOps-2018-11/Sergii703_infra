#!/bin/bash
set -e
#refresh apt
apt update
#install ruby and bundler
apt install -y ruby-full ruby-bundler build-essential
