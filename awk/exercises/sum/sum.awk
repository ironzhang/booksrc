#!/usr/bin/awk -f

# sum1

{
	sum += $2
}

END {
	print sum
}
