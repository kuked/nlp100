require 'minitest/autorun'
require_relative '../lib/n012'
require_relative '../lib/n013'

class N013Test < Minitest::Test
  def setup
    @path = "lib/popular-names.txt"
  end

  def test_paste
    expect, _ = capture_subprocess_io { system "cut -f 1,2 #{@path}" }

    column1 = cut(@path, 0).split("\n")
    column2 = cut(@path, 1).split("\n")

    actual = paste(column1, column2) + "\n"
    assert_equal expect, actual
  end
end
