#!/usr/bin/awk -f

BEGIN {
	OFS = "\t"
}

NR >= 2 {
	if ($4 < 95) {
		$4 = "<font color=\"red\">" $4 "</font>"
	}

	if ($7 < 85) {
		$7 = "<font color=\"red\">" $7 "</font>"
	}
}
{
	print
}
