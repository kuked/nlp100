# -*- coding: utf-8 -*-
import pickle

sts = pickle.load(open('sentences.p', 'rb'))

nouns = []
for st in sts:
    ns = [(i, d['base']) for i, d in enumerate(st) if d['pos'] == '名詞']
    if len(ns) > 1:
        s = []
        n0 = ns.pop(0)
        s.append(n0[1])
        for n1 in ns:
            if n1[0] - n0[0] == 1:
                s.append(n1[1])
            else:
                if len(s) > 1:
                    nouns.append(''.join(s))
                s = []
            n0 = n1
        if len(s) > 1:
            nouns.append(''.join(s))

for noun in nouns:
    print(noun)
