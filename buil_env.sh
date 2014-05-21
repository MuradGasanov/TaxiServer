#!/bin/bash
echo $0: Creating virtual environment
virtualenv --prompt="<taxi_env>" ../taxi_env

mkdir ../taxi_pids
mkdir ../taxi_static/static
mkdir ../taxi_static/media

echo $0: Installing dependencies
source ../taxi_env/bin/activate
export PIP_REQUIRE_VIRTUALENV=true
../taxi_env/bin/pip install --requirement=./require.conf

echo $0: Making virtual environment relocatable
virtualenv --relocatable ../taxi_env

echo $0: Creating virtual environment finished.