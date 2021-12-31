require 'minitest/autorun'
require_relative '../lib/n003'

class N004Test < Minitest::Test
  def setup
    @sentence = 'Hi He Lied Because Boron Could Not Oxidize Fluorine. \
                 New Nations Might Also Sign Peace Security Clause. Arthur King Can.'
  end

  def test_n004
    expected = {'H':0, 'He':1, 'Li':2, 'Be':3, 'B':4, 'C':5, 'N':6, 'O':7,
                'F':8, 'Ne':9, 'Na':10, 'Mi':11, 'Al':12, 'Si':13, 'P':14,
                'S':15, 'Cl':16, 'Ar':17, 'K':18, 'Ca':19}
    indices = [0, 4, 5, 6, 7, 8, 14, 15, 18]

    actual = {}
    @sentence.words.each_with_index do |w, i|
      key = indices.include?(i) ? w[0] : w[0..1]
      actual[key.to_sym] = i
    end

    assert_equal expected, actual
  end
end
