require 'minitest/autorun'
require_relative '../lib/n040'

class N040Test < Minitest::Test
  def setup
    @path = 'lib/ai.ja.txt.parsed'
  end

  def test_initialize_morph
    text = '人工	名詞,一般,*,*,*,*,人工,ジンコウ,ジンコー'
    actual = Morph.new(text)

    assert_equal '人工', actual.surface
    assert_equal '人工', actual.base
    assert_equal '名詞', actual.pos
    assert_equal '一般', actual.pos1
  end
end
