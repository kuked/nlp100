require 'minitest/autorun'
require_relative '../lib/n042'

class N042Test < Minitest::Test
  def test_text_of_phrase
    dependency = "* 4 5D 1/2 0.000000"
    morphs = []
    morphs << "次\t名詞,一般,*,*,*,*,次,ツギ,ツギ"
    morphs << "郎\t名詞,一般,*,*,*,*,郎,ロウ,ロー"
    morphs << "に\t助詞,格助詞,一般,*,*,*,に,ニ,ニ"

    chunk = Chunk.new(dependency, morphs)
    actual = chunk.text_of_phrase

    assert '次郎に', actual
  end

  def test_text_of_phrase_with_block
    dependency = "* 4 5D 1/2 0.000000"
    morphs = []
    morphs << "次\t名詞,一般,*,*,*,*,次,ツギ,ツギ"
    morphs << "郎\t名詞,一般,*,*,*,*,郎,ロウ,ロー"
    morphs << "に\t助詞,格助詞,一般,*,*,*,に,ニ,ニ"
    morphs << "、\t記号,読点,*,*,*,*,、,、,、"

    chunk = Chunk.new(dependency, morphs)
    actual = chunk.text_of_phrase {|m| m.pos != '記号' }

    assert '次郎に', actual
  end
end
