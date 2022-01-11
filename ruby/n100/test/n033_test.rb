require 'minitest/autorun'
require_relative '../lib/n030'
require_relative '../lib/n033'

class N033Test < Minitest::Test
  def setup
    path = 'lib/neko.txt.mecab'
    @tagged = Tagged.new(path)
  end

  def test_a_no_b
    actual = @tagged.a_no_b.flatten
    refute_nil actual
  end
end
