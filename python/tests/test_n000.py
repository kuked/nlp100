import unittest
from n100.n000 import reverse

class ReverseTest(unittest.TestCase):
    def test_reverse(self):
        self.assertEqual("desserts", reverse("stressed"))

if __name__ == "__main__":
    unittest.main()
