#!/bin/bash

ENV_NAME=tmp-env

set -e

rm -rf ${ENV_NAME}
python3 -m venv ${ENV_NAME}

source ${ENV_NAME}/bin/activate

pip install twine wheel

twine upload -r testpypi dist/*

deactivate

rm -rf ${ENV_NAME}
