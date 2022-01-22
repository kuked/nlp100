require 'minitest/autorun'
require_relative '../lib/n045'

class N045Test < Minitest::Test
  def test_find_pos
    dependency = "* 4 5D 1/2 0.000000"
    morphs = []
    morphs << "次\t名詞,一般,*,*,*,*,次,ツギ,ツギ"
    morphs << "郎\t名詞,一般,*,*,*,*,郎,ロウ,ロー"
    morphs << "に\t助詞,格助詞,一般,*,*,*,に,ニ,ニ"

    chunk = Chunk.new(dependency, morphs)

    actual = chunk.find_pos('名詞')
    assert_equal '次', actual.surface

    actual = chunk.find_pos('動詞')
    assert_nil actual
  end

  def test_find_all_pos
    dependency = "* 4 5D 1/2 0.000000"
    morphs = []
    morphs << "次\t名詞,一般,*,*,*,*,次,ツギ,ツギ"
    morphs << "郎\t名詞,一般,*,*,*,*,郎,ロウ,ロー"
    morphs << "に\t助詞,格助詞,一般,*,*,*,に,ニ,ニ"

    chunk = Chunk.new(dependency, morphs)

    actual = chunk.find_all_pos('名詞')
    assert_equal '次', actual[0].surface
    assert_equal '郎', actual[1].surface

    actual = chunk.find_all_pos('動詞')
    assert_empty actual
  end
end
