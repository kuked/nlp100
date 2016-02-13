# -*- coding: utf-8 -*-
import pickle


sentences = pickle.load(open('sentences.p', 'rb'))

pairs = []
for sentence in sentences:
    for i, d in enumerate(sentence):
        if d['pos1'] == '連体化':
            s = ''
            s += sentence[i-1]['base']
            s += sentence[i]['base']
            if len(sentence)-1 != i:
                s += sentence[i+1]['base']
                pairs.append(s)

for p in pairs:
    print(p)
