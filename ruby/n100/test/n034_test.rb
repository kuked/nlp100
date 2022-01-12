require 'minitest/autorun'
require_relative '../lib/n030'
require_relative '../lib/n034'

class N034Test < Minitest::Test
  def setup
    path = 'lib/neko.txt.mecab'
    @tagged = Tagged.new(path)
  end

  def test_continuous_nouns
    nouns = @tagged.continuous_nouns
    actual = nouns.max_by {|v| v.length }
    refute_nil actual
  end
end
