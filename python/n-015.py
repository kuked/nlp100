# -*- coding: utf-8 -*-
import sys

with open(sys.argv[1], 'r') as f:
    i = -1 * int(sys.argv[2])
    for s in f.readlines()[i:]:
        print(s, end='')
