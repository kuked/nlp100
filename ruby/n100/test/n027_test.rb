require 'minitest/autorun'
require_relative '../lib/n020'
require_relative '../lib/n025'
require_relative '../lib/n026'
require_relative '../lib/n027'

class N027Test < Minitest::Test
  def setup
    path = 'lib/jawiki-country.json.gz'
    wiki = Wiki.new(path)

    @text = wiki.fetch('イギリス').text
  end

  def test_link
    template = @text.template
    values = template.values.map(&:trim_em)
    actual = values.map(&:trim_link)
    refute_nil actual
  end
end
