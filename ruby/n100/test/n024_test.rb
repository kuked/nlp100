require 'minitest/autorun'
require_relative '../lib/n020'
require_relative '../lib/n024'

class N024Test < Minitest::Test
  def setup
    path = 'lib/jawiki-country.json.gz'
    wiki = Wiki.new(path)

    @text = wiki.fetch('イギリス').text
  end

  def test_media
    actual = @text.split("\n").map(&:media)
               .reject(&:empty?)
               .flatten

    refute_empty actual
  end
end
