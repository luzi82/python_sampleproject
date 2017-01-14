#!/bin/bash

ENV_NAME=tmp-env

set -e

rm -rf dist

rm -rf ${ENV_NAME}
python3 -m venv ${ENV_NAME}

source ${ENV_NAME}/bin/activate

pip install twine wheel

python setup.py sdist
python setup.py bdist_wheel --universal

deactivate

rm -rf ${ENV_NAME}
