require 'minitest/autorun'
require_relative '../lib/n030'
require_relative '../lib/n037'

class N037Test < Minitest::Test
  def setup
    path = 'lib/neko.txt.mecab'
    @tagged = Tagged.new(path)
  end

  def test_cooccurrence_top_10_words
    actual = @tagged.cooccurrence_top_10_words
    p actual
    refute_nil actual
  end
end
