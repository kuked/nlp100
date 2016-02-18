# -*- coding: utf-8 -*-
from collections import defaultdict
from operator import itemgetter
import pickle

sentences = pickle.load(open('sentences.p', 'rb'))

words = defaultdict(lambda: 0)
for sentence in sentences:
    for d in sentence:
        words[d['base']] += 1

words = sorted(words.items(), key=itemgetter(1), reverse=True)
for word in words:
    print(word)
