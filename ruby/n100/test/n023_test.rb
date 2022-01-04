require 'minitest/autorun'
require_relative '../lib/n020'
require_relative '../lib/n023'

class N023Test < Minitest::Test
  def setup
    @path = 'lib/jawiki-country.json.gz'
  end

  def test_section
    wiki = Wiki.new(@path)
    text = wiki.fetch('イギリス').text

    actual = text.split("\n").filter_map(&:section)
    refute_empty actual
  end
end
