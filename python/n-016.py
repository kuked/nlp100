# -*- coding: utf-8 -*-
import sys


def write_xa(ls, x):
    with open('py_xa' + x, 'w') as w:
        for l in ls:
            w.write(l)

r = open(sys.argv[1], 'r')
rs = r.readlines()

n = len(rs) // int(sys.argv[2])
ns = list(range(0, len(rs), n))

for i in range(0, len(ns)):
    if i == len(ns)-1:
        write_xa(rs[ns[i]:], chr(97+i))
    else:
        write_xa(rs[ns[i]:ns[i+1]], chr(97+i))
