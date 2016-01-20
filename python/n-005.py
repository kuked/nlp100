# -*- coding: utf-8 -*-
def ngram(n):
    def _n_gram(seq):
        return [seq[i:i+n] for i in range(0, len(seq))]
    return _n_gram

if __name__ == '__main__':
    import re

    bi_gram = ngram(2)
    s = 'I am an NLPer'
    print(bi_gram(s))
    print(bi_gram(re.split(r'\W+', s)))
