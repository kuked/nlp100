require 'minitest/autorun'
require_relative '../lib/n000'

class N000Test < Minitest::Test
  def test_reverse
    assert_equal 'desserts', 'stressed'.reverse
  end
end
