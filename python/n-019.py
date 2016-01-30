# -*- coding: utf-8 -*-
from operator import itemgetter

with open('hightemp.txt', 'r') as r:
    d = {}
    for s in r.readlines():
        k = s.split()[0]
        d[k] = d.get(k, 0) + 1
    items = sorted(d.items(), key=itemgetter(0), reverse=True)
    items = sorted(items, key=itemgetter(1), reverse=True)
    for item in items:
        print("{0:>4} {1}".format(item[1], item[0]))
