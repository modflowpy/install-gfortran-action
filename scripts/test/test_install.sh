#!/bin/bash

path="$1"
if [ -z "$path" ]
then
  echo "Must specify path argument"
  exit 1
fi

# check install location
echo "Checking install location: $path"
if [ ! -L "$path" ]  # install dir is symlinked
then
  echo "Install location does not exist: $path"
  exit 1
fi

# check ifort executable
echo "Checking gfortran command"
if ! command -v gfortran &> /dev/null
then
  echo "gfortran command is not available"
  exit 1
fi