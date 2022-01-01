require 'minitest/autorun'
require 'set'
require_relative '../lib/n012'

class N017Test < Minitest::Test
  def setup
    @path = "lib/popular-names.txt"
  end

  def test_cut_sort_uniq
    expect, _ = capture_subprocess_io { system "cut -f 1 #{@path} | sort | uniq" }

    actual = Set.new(cut(@path, 0).split("\n").sort).join("\n") + "\n"

    assert_equal expect, actual
  end
end
