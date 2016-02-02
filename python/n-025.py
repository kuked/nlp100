# -*- coding: utf-8 -*-
import re

multi = re.compile(r'{{基礎情報.*?\n(|.*?\n)*}}', re.MULTILINE)
kv = re.compile(r'\|(.*?) = (.*)')

basic_info = {}
with open('uk.txt', 'r') as r:
    m = multi.search(r.read())
    if m:
        lines = m.group(0).split('\n')
        for line in lines:
            if line[0] == '|':
                m = kv.search(line)
                basic_info[m.group(1)] = m.group(2)
print(basic_info)
