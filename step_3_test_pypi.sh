#!/bin/bash

ENV_NAME=tmp-env

set -e

rm -rf ${ENV_NAME}
python3 -m venv ${ENV_NAME}

source ${ENV_NAME}/bin/activate

pip install peppercorn # cannot download from testpypi
pip install -i https://testpypi.python.org/pypi luzi82_sample

luzi82_sample

deactivate

rm -rf ${ENV_NAME}
