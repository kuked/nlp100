require 'minitest/autorun'
require_relative '../lib/n010'

class N010Test < Minitest::Test
  def setup
    @path = "lib/popular-names.txt"
  end

  def test_wcl
    expect, _ = capture_subprocess_io do
      system "wc -l #{@path} | awk '{print $1}'"
    end

    # Need a line break at the end.
    actual = "#{lineno(@path)}\n"

    assert_equal expect, actual
  end
end
