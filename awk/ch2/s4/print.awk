#!/usr/bin/awk -f

BEGIN {
	OFS = ":"; ORS = "\n\n"
}
{
	print $1, $2
	print $1 $2
}
