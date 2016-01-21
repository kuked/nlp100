# -*- coding: utf-8 -*-
import codecs

with codecs.open('hightemp.txt', 'r', encoding='utf-8') as f:
    for line in f.readlines():
        print(line.replace('\t', ' '), end='')
