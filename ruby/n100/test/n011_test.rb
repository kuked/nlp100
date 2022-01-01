require 'minitest/autorun'
require_relative '../lib/n011'

class N011Test < Minitest::Test
  def setup
    @path = "lib/popular-names.txt"
  end

  def test_tr
    expect, _ = capture_subprocess_io do
      system "sed -e 's/\t/ /g' #{@path}"
    end

    actual = tab2space(@path)
    assert_equal expect, actual
  end
end
