require 'minitest/autorun'
require_relative '../lib/n001'

class N001Test < Minitest::Test
  def test_at
    assert_equal 'パトカー', 'パタトクカシーー'.at([0, 2, 4, 6])
  end
end
