#!/usr/bin/awk -f

# include - replace #include "f" by contents of file f

$1 == "#include" {
	gsub(/"/, "", $2)
	system("cat " $2)
	next
}
{ print }
