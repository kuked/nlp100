require 'minitest/autorun'
require_relative '../lib/n041'

class N041Test < Minitest::Test
  def setup
    @path = 'lib/ai.ja.txt.parsed'
  end

  def test_initialize_chunk
    dependency = "* 4 5D 1/2 0.000000"
    morphs = []
    morphs << "次\t名詞,一般,*,*,*,*,次,ツギ,ツギ"
    morphs << "郎\t名詞,一般,*,*,*,*,郎,ロウ,ロー"
    morphs << "に\t助詞,格助詞,一般,*,*,*,に,ニ,ニ"

    actual = Chunk.new(dependency, morphs)
    assert_equal 5, actual.dst
    assert_equal 4, actual.srcs
    assert_equal '次', actual.morphs[0].surface
    assert_equal '名詞', actual.morphs[1].pos
    assert_equal 'に', actual.morphs[2].base
  end
end
