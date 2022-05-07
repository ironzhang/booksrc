#!/usr/bin/awk -f

# sumcomma

{ gsub(/,/, ""); sum += $0 }

END {
	print sum
}
