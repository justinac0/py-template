#!/bin/bash

echo "Setting up python virtual environment..."

py -m venv venv

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    source venv/bin/activate
elif [[ "$OSTYPE" == "win32" ]]; then
    source venv/Scripts/activate
fi

py -m pip install -r requirements.txt

echo "Setup finished..."