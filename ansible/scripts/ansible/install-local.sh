#!/bin/bash

venv_directory=${1}
shift 1

sudo apt install -y python3-venv

if [ ! -d "${venv_directory}" ]
then
  python3 -m venv "${venv_directory}"
fi

source "${venv_directory}/bin/activate"

pip3 install wheel

pip3 install ansible

deactivate
