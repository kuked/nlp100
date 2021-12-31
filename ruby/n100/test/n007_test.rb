require 'minitest/autorun'
require_relative '../lib/n007'

class N007Test < Minitest::Test
  def test_y_at_x_is_z
    assert_equal '12時の気温は22.4', y_at_x_is_z(12, '気温', 22.4)
  end
end
