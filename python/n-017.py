# -*- coding: utf-8 -*-

ws = set()
with open('hightemp.txt', 'r') as r:
    for l in r.readlines():
        ws.add(l.split()[0])

for w in sorted(ws):
    print(w)
