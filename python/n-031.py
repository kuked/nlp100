# -*- coding: utf-8 -*-
import pickle


sentences = pickle.load(open('sentences.p', 'rb'))

verbs = []
for sentence in sentences:
    ds = filter(lambda d: d['pos'] == '動詞', sentence)
    for d in ds:
        verbs.append(d['surface'])

print(verbs)
