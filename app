#!/bin/bash

BASE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [[ ! -e $BASE_DIR/venv ]]; then
    echo "ERROR: no virtualenv at venv"
fi

cd $BASE_DIR/venv
. bin/activate

cd $BASE_DIR
python -m ci.flask_server

