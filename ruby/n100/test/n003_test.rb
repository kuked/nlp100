require 'minitest/autorun'
require_relative '../lib/n003'

class N003Test < Minitest::Test
  def setup
    @sentence = 'Now I need a drink, alcoholic of course, after the \
    heavy lectures involving quantum mechanics.'
  end

  def test_words
    expect = ['Now', 'I', 'need', 'a', 'drink', 'alcoholic', 'of', 'course',
              'after', 'the', 'heavy', 'lectures', 'involving', 'quantum', 'mechanics']
    assert_equal expect, @sentence.words
  end

  def test_word_counts
    expect = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5, 8, 9, 7, 9]
    assert_equal expect, (@sentence.words.map {|w| w.length })
  end
end
