# -*- coding: utf-8 -*-
import codecs


def lines(path):
    n = 0
    with codecs.open(path, 'r', encoding='utf-8') as f:
        while f.readline():
            n += 1
    return n

if __name__ == '__main__':
    import sys
    print(lines(sys.argv[1]))
