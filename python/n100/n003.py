import re

def words(s):
    ws = re.split('\W+', s)
    return [w for w in ws if w != '']

def word_counts(words):
    return [len(w) for w in words]
