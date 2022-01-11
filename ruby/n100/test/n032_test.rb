require 'minitest/autorun'
require_relative '../lib/n030'
require_relative '../lib/n031'

class N032Test < Minitest::Test
  def setup
    path = 'lib/neko.txt.mecab'
    @tagged = Tagged.new(path)
  end

  def test_verb_bases
    verbs = @tagged.verbs.flatten

    surface = -> (h) { h[:base] }
    actual = verbs.map(&surface).sort.uniq
    refute_nil actual
  end
end
