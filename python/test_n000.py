import unittest
import n000

class ReverseTest(unittest.TestCase):
    def test_reverse(self):
        self.assertEqual("desserts", n000.reverse("stressed"))

if __name__ == "__main__":
    unittest.main()
