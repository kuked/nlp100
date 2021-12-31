require 'minitest/autorun'
require_relative '../lib/n008'

class N008Test < Minitest::Test
  def setup
    @sentence = '99 Bottles of Beer.'
  end

  def test_cipher
    expect = '99 Blggovh lu Bvvi.'
    assert_equal expect, @sentence.cipher
    assert_equal @sentence, @sentence.cipher.cipher
  end
end
