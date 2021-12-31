require 'minitest/autorun'
require_relative '../lib/n003'
require_relative '../lib/n005'

class N005Test < Minitest::Test
  def setup
    @sentence = 'I am an NLPer'
  end

  def test_word_bi_gram
    expected = [['I', 'am'], ['am', 'an'], ['an', 'NLPer']]
    ws = @sentence.words
    ws.extend(NGram)
    assert_equal expected, ws.ngram(2).to_a
  end

  def test_char_bi_gram
    expected = [['I', ' '], [' ', 'a'], ['a', 'm'], ['m', ' '], [' ', 'a'],
                ['a', 'n'], ['n', ' '], [' ', 'N'], ['N', 'L'], ['L', 'P'],
                ['P', 'e'], ['e', 'r']]
    chars = @sentence.split('')
    chars.extend(NGram)
    assert_equal expected, chars.ngram(2).to_a
  end
end
