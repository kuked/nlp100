# -*- coding: utf-8 -*-
import codecs

w1 = open('col1.txt', 'w')
w2 = open('col2.txt', 'w')

with codecs.open('hightemp.txt', 'r', encoding='utf-8') as f:
    for line in f.readlines():
        cols = line.split('\t')
        w1.write(cols[0] + '\n')
        w2.write(cols[1] + '\n')

w1.close()
w2.close()
