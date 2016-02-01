# -*- coding: utf-8 -*-
import re

regexp = re.compile(r'^(=+) ?(.*?)(=+)')
with open('uk.txt', 'r') as r:
    for s in r.readlines():
        m = regexp.search(s)
        if m:
            start = len(m.group(1))
            end = len(m.group(3))
            if start == end:
                print("{0} {1}".format(start, m.group(2)))
