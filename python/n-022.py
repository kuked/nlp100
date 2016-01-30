# -*- coding: utf-8 -*-
import re

regexp = re.compile(r'\[\[Category:([\w・]*)')
with open('uk.txt', 'r') as r:
    for s in r.readlines():
        m = regexp.search(s)
        if m:
            print(m.group(1))
