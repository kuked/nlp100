from operator import itemgetter

def pickup(s, indices):
    chars = itemgetter(*indices)(list(s))
    return ''.join(chars)
