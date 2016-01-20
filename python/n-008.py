# -*- coding: utf-8 -*-


def cipher(s):
    def _cipher(c):
        o = ord(c)
        if o >= 97 and o <= 122:
            return chr(219-o)
        else:
            return c
    return ''.join([_cipher(c) for c in s])

if __name__ == '__main__':
    song = '99 Bottles of Beer.'
    if not song == cipher(cipher(song)):
        print('ng')
