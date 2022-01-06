require 'minitest/autorun'
require_relative '../lib/n020'
require_relative '../lib/n025'
require_relative '../lib/n026'

class N026Test < Minitest::Test
  def setup
    path = 'lib/jawiki-country.json.gz'
    wiki = Wiki.new(path)

    @text = wiki.fetch('イギリス').text
  end

  def test_em
    template = @text.template
    actual = template.values.map(&:trim_em)
    refute_nil actual
  end
end
