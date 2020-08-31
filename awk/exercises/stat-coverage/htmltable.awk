#!/usr/bin/awk -f

BEGIN {
	FS = "\t"
	printf("<Table border=\"1\" cellspacing=\"0\" cellpadding=\"8\">\n")
}
{
	if (NR % 2 == 0) {
		printf("<TR>")
	} else {
		printf("<TR bgcolor=\"AntiqueWhite\">")
	}

	for (i = 1; i <= NF; i++) {
		printf("<TD>%s</TD>", $i)
	}
	printf("</TR>\n")
}
END {
	printf("<Table>\n")
}
