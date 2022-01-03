require 'minitest/autorun'
require_relative '../lib/n020'
require_relative '../lib/n021'

class N021Test < Minitest::Test
  def setup
    @path = 'lib/jawiki-country.json.gz'
  end

  def test_fetch
    wiki = Wiki.new(@path)
    text = wiki.fetch('イギリス').text

    actual = text.split("\n").grep(CATEGORY)
    refute_empty actual
  end
end
