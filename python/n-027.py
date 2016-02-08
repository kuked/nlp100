# -*- coding: utf-8 -*-
import re

multi = re.compile(r'{{基礎情報.*?\n(|.*?\n)*}}', re.MULTILINE)
kv = re.compile(r'\|(.*?) = (.*)')
highlight = re.compile(r'\'+(.*?)\'+')
inner_link = re.compile(r'\[\[(.*?)\]\]')


def normalize(s):
    r = highlight.sub(lambda x: x.group(1), s)
    m = inner_link.search(r)
    if m:
        return m.group(1)
    else:
        return r

basic_info = {}
with open('uk.txt', 'r') as r:
    m = multi.search(r.read())
    if m:
        lines = m.group(0).split('\n')
        for line in lines:
            if line[0] == '|':
                m = kv.search(line)
                basic_info[m.group(1)] = normalize(m.group(2))
print(basic_info)
