# -*- coding: utf-8 -*-

col1 = []
with open('col1.txt', 'r') as f:
    col1 = [s.rstrip() for s in f.readlines()]

col2 = []
with open('col2.txt', 'r') as f:
    col2 = [s.rstrip() for s in f.readlines()]

with open('merged.txt', 'w') as f:
    for z in zip(col1, col2):
        f.write('\t'.join(z) + '\n')
