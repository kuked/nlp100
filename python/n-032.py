# -*- coding: utf-8 -*-
import pickle


sentences = pickle.load(open('sentences.p', 'rb'))

verbs_base = []
for sentence in sentences:
    ds = filter(lambda d: d['pos'] == '動詞', sentence)
    for d in ds:
        verbs_base.append(d['base'])

print(verbs_base)
