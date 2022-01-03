require 'minitest/autorun'
require_relative '../lib/n020'
require_relative '../lib/n022'

class N022Test < Minitest::Test
  def setup
    @path = 'lib/jawiki-country.json.gz'
  end

  def test_category
    wiki = Wiki.new(@path)
    text = wiki.fetch('イギリス').text

    actual = text.split("\n").filter_map(&:category)

    refute_empty actual
  end
end
