#!/bin/bash

venv_directory=${1}
shift 1

sudo apt install -y python3-venv

python -m venv "${venv_directory}"
