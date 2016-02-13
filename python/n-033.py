# -*- coding: utf-8 -*-
import pickle


sentences = pickle.load(open('sentences.p', 'rb'))

nouns = []
for sentence in sentences:
    nouns.extend(filter(lambda d: d['pos1'] == 'サ変接続', sentence))

for noun in nouns:
    print(noun)
