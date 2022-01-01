require 'minitest/autorun'
require_relative "../lib/n012"

class N012Test < Minitest::Test
  def setup
    @path = "lib/popular-names.txt"
  end

  def test_cut_column_1
    expect, _ = capture_subprocess_io { system "cut -f 1 #{@path}" }

    # Need a line break at the end.
    actual = cut(@path, 0) + "\n"

    assert_equal expect, actual
  end

  def test_cut_column_2
    expect, _ = capture_subprocess_io { system "cut -f 2 #{@path}" }

    # Need a line break at the end.
    actual = cut(@path, 1) + "\n"

    assert_equal expect, actual
  end
end
