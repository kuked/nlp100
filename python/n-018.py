# -*- coding: utf-8 -*-
from operator import itemgetter

ls = []
with open('hightemp.txt', 'r') as r:
    for (i, s) in enumerate(r.readlines()):
        ls.append((s, s.split()[2]))
    ls = sorted(ls, key=itemgetter(1))

for l in ls:
    print(l[0], end='')
