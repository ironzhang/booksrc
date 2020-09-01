#!/usr/bin/awk -f

# sum1

{
	for (i = 1; i <= NF; i++)
		sum[i] += $i
	if (NF > maxfd)
		maxfd = NF
}

END {
	for (i = 1; i <= maxfd; i++) {
		printf("%g", sum[i])
		if (i < maxfd)
			printf("\t")
		else
			printf("\n")
	}
}
