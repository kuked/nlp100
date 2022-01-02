require 'minitest/autorun'
require_relative '../lib/n012'

class N018Test < Minitest::Test
  def setup
    @path = "lib/popular-names.txt"
  end

  def test_sort_in_descending
    orders = cut(@path, 2).split("\n")
    lines = File.new(@path).readlines

    # zip orders with lines
    items = orders.zip(lines)

    # sort in descending order
    items.sort_by {|v| v[0].to_i * -1 }.map(&:last)

    pass
  end
end
