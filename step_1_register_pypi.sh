#!/bin/bash

# call me only once

ENV_NAME=tmp-env

set -e

rm -rf ${ENV_NAME}
python3 -m venv ${ENV_NAME}

source ${ENV_NAME}/bin/activate

pip install twine wheel

twine register -r testpypi dist/luzi82_sample-1.2.0-py2.py3-none-any.whl

deactivate

rm -rf ${ENV_NAME}
