#!/usr/bin/awk -f

#$3 > 100 { print $1, $3 > "bigpop" }
#$3 <= 100 { print $1, $3 > "smallpop" }

{ print($1, $3) > ($3 > 100 ? "bigpop": "smallpop") }
