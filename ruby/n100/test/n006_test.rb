require 'minitest/autorun'
require_relative '../lib/n005'
require_relative '../lib/n006'

class N006Test < Minitest::Test
  def setup
    @x = Set.new('paraparaparadise'.chars.extend(NGram).ngram(2))
    @y = Set.new('paragraph'.chars.extend(NGram).ngram(2))
  end

  def test_union
    expected = Set.new([['p', 'a'], ['a', 'r'], ['r', 'a'], ['a', 'p'],
                        ['a', 'd'], ['d', 'i'], ['i', 's'], ['s', 'e'],
                        ['a', 'g'], ['g', 'r'], ['p', 'h']])
    assert_equal expected, (@x + @y)
  end

  def test_intersection
    expected = Set.new([['p', 'a'], ['a', 'r'], ['r', 'a'],  ['a', 'p']])
    assert_equal expected, (@x & @y)
  end

  def test_difference
    expected = Set.new([['a', 'd'], ['d', 'i'], ['i', 's'], ['s', 'e']])
    assert_equal expected, (@x - @y)
  end
end
