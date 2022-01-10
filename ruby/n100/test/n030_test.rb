require 'minitest/autorun'
require_relative '../lib/n030'

class N030Test < Minitest::Test
  def setup
    @path = 'lib/neko.txt.mecab'
  end

  def test_sentence
    tagged = Tagged.new(@path)
    actual = tagged.sentence
    refute_nil actual
  end
end
