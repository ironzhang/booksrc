#!/bin/bash

./stat-coverage.awk coverage.data | ./red-color.awk | ./markdown.awk > coverage.md
./stat-coverage.awk coverage.data | ./red-color.awk | ./htmltable.awk > coverage.html

