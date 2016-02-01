# -*- coding: utf-8 -*-
import re
import string

regexp = re.compile(r'\[\[File:(.*?)\|')
with open('uk.txt', 'r') as r:
    for s in r.readlines():
        m = regexp.search(s)
        if m:
            name = m.group(1)
            print(name.replace(' ', '_'))
