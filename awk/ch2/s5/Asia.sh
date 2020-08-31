#!/bin/bash

egrep 'Asia' ../countries.data | awk '{ print $1, $2, $3 }'
