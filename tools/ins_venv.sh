#!/usr/bin/env bash
TOOLS=`dirname $0`
VENV=$TOOLS/../.venv
virtualenv --no-site-packages --setuptools $VENV
source $VENV/bin/activate
pip install -r $TOOLS/pip-requires
cd $TOOLS/..
python setup.py develop
