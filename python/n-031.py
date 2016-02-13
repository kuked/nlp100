# -*- coding: utf-8 -*-
import os
import requests
import MeCab


if not os.path.exists('neko.txt'):
    rs = requests.get('http://www.cl.ecei.tohoku.ac.jp/nlp100/data/neko.txt')
    rs.encoding = 'utf-8'
    with open('neko.txt', 'w+') as fp:
        print(rs.text, file=fp)

if not os.path.exists('neko.txt.mecab'):
    with open('neko.txt.mecab', 'w') as wf:
        with open('neko.txt') as rf:
            tagger = MeCab.Tagger('')
            for line in rf.readlines():
                print(tagger.parse(line), file=wf, end='')

sentences = []
with open('neko.txt.mecab') as fp:
    lines = [line.rstrip() for line in fp.readlines()]
    tagger = MeCab.Tagger('')
    chunk = []
    for line in lines:
        if line == 'EOS':
            if len(chunk) > 0:
                sentences.append(chunk)
                chunk = []
        else:
            # 表層形\t品詞,品詞細分類1,品詞細分類2,品詞細分類3,活用形,活用型,原形,読み,発音
            surface, rest = line.split('\t')
            tagged = rest.split(',')
            chunk.append({
                'surface': surface,
                'base':    tagged[6],
                'pos':     tagged[0],
                'pos1':    tagged[1],
                })

verbs = []
for sentence in sentences:
    ds = filter(lambda d: d['pos'] == '動詞', sentence)
    for d in ds:
        verbs.append(d['surface'])
print(verbs)
