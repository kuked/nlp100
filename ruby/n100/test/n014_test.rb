require 'minitest/autorun'
require_relative '../lib/n014'

class N014Test < Minitest::Test
  def setup
    @path = "lib/popular-names.txt"
  end

  def test_head
    expect, _ = capture_subprocess_io { system "head -n 10 #{@path}" }
    actual = head(@path, 10)

    assert_equal expect, actual
  end
end
