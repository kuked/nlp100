import random

def shuffle(s):
    if len(s) <= 4:
        return s
    else:
        h, t = (s[0], s[-1])
        body = list(s[1:-1])
        random.shuffle(body)
        return h + ''.join(body) + t

def typoglycemia(s):
    words = s.split()
    return [shuffle(w) for w in words]

if __name__ == '__main__':
    src = "I couldn't believe that I could actually understand what I was reading : the phenomenal power of the human mind ."
    print(' '.join(typoglycemia(src)))
