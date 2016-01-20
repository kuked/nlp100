# -*- coding: utf-8 -*-
import re

s = "Hi He Lied Because Boron Could Not Oxidize Fluorine. New Nations Might \
        Also Sign Peace Security Clause. Arthur King Can."
ws = [w for w in re.split(r'\W+', s) if len(w) > 0]

elements = {}
indexs = [0, 4, 5, 6, 7, 8, 14, 15, 18]
for i, w in enumerate(ws):
    if i in indexs:
        elements[w[0]] = i
    else:
        elements[w[0:2]] = i

print(elements)
