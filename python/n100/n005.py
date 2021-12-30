def ngram(n):
    def _n_gram(seq):
        return [seq[i:i+n] for i in range(0, len(seq))]
    return _n_gram
