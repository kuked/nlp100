require 'minitest/autorun'
require_relative '../lib/n001'

class N001Test < Minitest::Test
  def test_pickup
    assert_equal 'パトカー', 'パタトクカシーー'.pickup([0, 2, 4, 6])
  end
end
