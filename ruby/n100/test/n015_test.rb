require 'minitest/autorun'
require_relative '../lib/n015'

class N015Test < Minitest::Test
  def setup
    @path = "lib/popular-names.txt"
  end

  def test_tail
    expect, _ = capture_subprocess_io { system "tail -n 10 #{@path}" }
    actual = tail(@path, 10)

    assert_equal expect, actual
  end
end
