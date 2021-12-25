import unittest
from n100.n001 import pickup

class PickupTest(unittest.TestCase):
    def test_pickup(self):
        self.assertEqual("パトカー", pickup("パタトクカシーー", [0, 2, 4, 6]))

if __name__ == "__main__":
    unittest.main()
