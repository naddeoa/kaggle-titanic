#!/bin/bash

sudo apt-get install virtualenv

# Make the files and dirs that we'll be using
mkdir notebooks
mkdir src
mkdir data
touch src/model.py
touch src/data.py
touch src/util.py
touch src/config.py
touch src/train.py

# Create the virtual environment to manage pythong versions/dependencies
virtualenv env
source env/bin/activate

pip install -U pylint jupyter matplotlib scikit-learn numpy scipy ipython pandas sympy nose freeze

pip freeze > requirements.txt
