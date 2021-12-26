import unittest
from n100.n002 import merge

class MergeTest(unittest.TestCase):
    def test_merge(self):
        self.assertEqual("パタトクカシーー", merge("パトカー", "タクシー"))

if __name__ == "__main__":
    unittest.main()
