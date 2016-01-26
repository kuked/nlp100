# -*- coding: utf-8 -*-
import fileinput
import sys

with fileinput.input(files=(sys.argv[1],)) as f:
    limit = int(sys.argv[2])
    for (i, s) in enumerate(f):
        if limit <= i:
            break
        print(s, end='')
