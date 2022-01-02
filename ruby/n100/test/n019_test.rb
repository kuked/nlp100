require 'minitest/autorun'
require_relative '../lib/n012'

class N019Test < Minitest::Test
  def setup
    @path = "lib/popular-names.txt"
  end

  def test_frequency_of_appearance
    expect, _ = capture_subprocess_io do
      system "cut -f 1 #{@path} | sort | uniq -c | sort -r | awk '{print $2}'"
    end

    names = cut(@path, 0).split("\n")

    # get frequency.
    tallied = names.tally

    # sort in descending order of frequency.
    sorted = tallied.sort_by {|v| [v[1] * -1, v[0]] }

    # divide by frequency.
    chunked = sorted.chunk {|v| v[1] }.map(&:last)

    # put the names in descending order.
    names = chunked.map {|v| v.sort {|a, b| b[0] <=> a[0] }.map(&:first) }

    actual = names.flatten.join("\n") + "\n"
    assert_equal expect, actual
  end
end
