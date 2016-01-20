# -*- coding: utf-8 -*-
import re

s = 'Now I need a drink, alcoholic of course, after the heavy lectures \
        involving quantum mechanics.'
w = re.split('\W+', s)
print([len(p) for p in w if len(p) > 0])
