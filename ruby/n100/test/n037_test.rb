require 'minitest/autorun'
require_relative '../lib/n030'
require_relative '../lib/n037'

class N037Test < Minitest::Test
  def setup
    path = 'lib/neko.txt.mecab'
    @tagged = Tagged.new(path)
  end

  def test_collocate
    actual = @tagged.collocate('猫', 2).flatten
    refute_nil actual
  end
end
