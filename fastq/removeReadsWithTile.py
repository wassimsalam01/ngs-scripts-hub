#!/usr/bin/python
# In this example, the tile 1105 scored poorly and needed to be removed. Replace 1105 with your tile number
import re
f=open("/path/to/pre-clean.fastq","r")
n=open("/path/to/clean.fastq","a+")
for i in f:
	if re.match(".*:\d+:.*:\d:1105:.*:.*[01]:.:\d:.*",i) is not None:
		i=f.next()
		i=f.next()
		i=f.next()
	else:
		n.write(i)

f.close()
n.close()
