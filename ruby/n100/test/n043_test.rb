require 'minitest/autorun'
require_relative '../lib/n043'

class N043Test < Minitest::Test
  def test_include?
    dependency = "* 4 5D 1/2 0.000000"
    morphs = []
    morphs << "次\t名詞,一般,*,*,*,*,次,ツギ,ツギ"
    morphs << "郎\t名詞,一般,*,*,*,*,郎,ロウ,ロー"
    morphs << "に\t助詞,格助詞,一般,*,*,*,に,ニ,ニ"

    chunk = Chunk.new(dependency, morphs)

    actual = chunk.include?({:pos => '名詞'})
    assert_equal true, actual

    actual = chunk.include?({:pos => '動詞'})
    assert_equal false, actual
  end
end
