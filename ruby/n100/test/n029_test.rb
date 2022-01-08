require 'minitest/autorun'
require_relative '../lib/n020'
require_relative '../lib/n025'
require_relative '../lib/n029'

class N029Test < Minitest::Test
  def setup
    path = 'lib/jawiki-country.json.gz'
    wiki = Wiki.new(path)

    @text = wiki.fetch('イギリス').text
  end

  def test_national_flag_image_url
    template = @text.template
    actual = national_flag_image_url(template['国旗画像'])
    refute_nil actual
  end
end
