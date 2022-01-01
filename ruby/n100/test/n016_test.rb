require 'minitest/autorun'
require_relative '../lib/n016'

class N016Test < Minitest::Test
  def setup
    @path = "lib/popular-names.txt"
  end

  def test_split
    actual = split(@path).to_a
    assert_equal 1000, actual[0].length
    assert_equal 1000, actual[1].length
    assert_equal  780, actual[2].length
  end
end
