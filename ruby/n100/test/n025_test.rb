require 'minitest/autorun'
require_relative '../lib/n020'
require_relative '../lib/n025'

class N025Test < Minitest::Test
  def setup
    path = 'lib/jawiki-country.json.gz'
    wiki = Wiki.new(path)

    @text = wiki.fetch('イギリス').text
  end

  def test_template
    actual = @text.template
    refute_nil actual
  end
end
