require 'minitest/autorun'
require_relative '../lib/n030'
require_relative '../lib/n036'

class N036Test < Minitest::Test
  def setup
    path = 'lib/neko.txt.mecab'
    @tagged = Tagged.new(path)
  end

  def test_top_10_words
    actual = @tagged.top_10_words
    refute_nil actual
  end
end
