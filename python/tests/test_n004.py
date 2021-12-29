import unittest
from n100.n003 import words

class N004Test(unittest.TestCase):
    def setUp(self):
        self.sentence = 'Hi He Lied Because Boron Could Not Oxidize Fluorine. \
        New Nations Might Also Sign Peace Security Clause. Arthur King Can.'

    def test_n004(self):
        expected = {'H':0, 'He':1, 'Li':2, 'Be':3, 'B':4, 'C':5, 'N':6, 'O':7,
                    'F':8, 'Ne':9, 'Na':10, 'Mi':11, 'Al':12, 'Si':13, 'P':14,
                    'S':15, 'Cl':16, 'Ar':17, 'K':18, 'Ca':19}

        ws = words(self.sentence)
        elements = {}
        indices = [0, 4, 5, 6, 7, 8, 14, 15, 18]
        for i, w in enumerate(ws):
            if i in indices:
                elements[w[0]] = i
            else:
                elements[w[0:2]] = i

        self.assertEqual(expected, elements)

if __name__ == "__main__":
    unittest.main()
