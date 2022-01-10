require 'minitest/autorun'
require_relative '../lib/n030'
require_relative '../lib/n031'

class N031Test < Minitest::Test
  def setup
    path = 'lib/neko.txt.mecab'
    @tagged = Tagged.new(path)
  end

  def test_verbs
    verbs = @tagged.verbs.flatten

    surface = -> (h) { h[:surface] }
    actual = verbs.map(&surface).sort.uniq

    refute_nil actual
  end
end
