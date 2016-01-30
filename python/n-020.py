# -*- coding: utf-8 -*-
import gzip
import json
import os
import urllib.request


if not os.path.exists('jawiki-country.json'):
    url = 'http://www.cl.ecei.tohoku.ac.jp/nlp100/data/jawiki-country.json.gz'
    res = urllib.request.urlopen(url)
    with open('jawiki-country.json', 'wb') as w:
        w.write(gzip.decompress(res.read()))

with open('jawiki-country.json', 'r') as r:
    for ln in r.readlines():
        d = json.loads(ln)
        if d['title'] == 'イギリス':
            print(d['text'])
