#!/bin/bash

FILE="$1"

sudo cp $1 "${FILE%%.*}"_`date +%Y-%m-%d`."${FILE##*.}"