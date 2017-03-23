#!/bin/bash

PYTHON="python"
PROMPT_NAME="django-json-sample"
VENV_DIR="./virtualenv"
REQ_FILE="requirements.txt"

echo "(1) Setting virtualenv..."
if [ -d "$VENV_DIR" ]; then
    echo "Directory $VENV_DIR already exists!"
else
    $PYTHON -m virtualenv --prompt="($PROMPT_NAME) " $VENV_DIR
fi
echo "done."
echo

if [[ `uname` == 'Linux' ]]; then
    source $VENV_DIR/bin/activate
else
    source ./$VENV_DIR/Scripts/activate
fi

echo "(2) Installing pip requirements..."
pip install -r $REQ_FILE
echo "done."
echo

# deactivate virtualenv
deactivate
