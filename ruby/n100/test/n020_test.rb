require 'minitest/autorun'
require_relative '../lib/n020'

class N020Test < Minitest::Test
  def setup
    @path = 'lib/jawiki-country.json.gz'
  end

  def test_fetch
    wiki = Wiki.new(@path)
    refute_nil wiki.fetch('イギリス')
  end
end
