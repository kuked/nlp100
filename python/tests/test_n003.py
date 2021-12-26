import unittest
from n100.n003 import words, word_counts

class WordsTest(unittest.TestCase):
    def setUp(self):
        self.sentence = 'Now I need a drink, alcoholic of course, after the \
        heavy lectures involving quantum mechanics.'

    def test_words(self):
        expect = ['Now', 'I', 'need', 'a', 'drink', 'alcoholic', 'of', 'course',
                  'after', 'the', 'heavy', 'lectures', 'involving', 'quantum', 'mechanics']
        self.assertEqual(expect, words(self.sentence))

    def test_word_counts(self):
        expect = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5, 8, 9, 7, 9]
        self.assertEqual(expect, word_counts(words(self.sentence)))

if __name__ == '__main__':
    unittest.main()
