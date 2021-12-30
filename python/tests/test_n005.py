import unittest
from n100.n003 import words
from n100.n005 import ngram

class NGramTest(unittest.TestCase):
    def setUp(self):
        self.sentence = "I am an NLPer"

    def test_word_bi_gram(self):
        expected = [['I', 'am'], ['am', 'an'], ['an', 'NLPer'], ['NLPer']]

        word_bi_gram = ngram(2)
        self.assertEqual(expected, word_bi_gram(words(self.sentence)))

    def test_char_bi_gram(self):
        expected = ['I ', ' a', 'am', 'm ', ' a', 'an', 'n ', ' N', 'NL', 'LP',
                    'Pe', 'er', 'r']

        char_bi_gram = ngram(2)
        self.assertEqual(expected, char_bi_gram(self.sentence))


if __name__ == "__main__":
    unittest.main()
