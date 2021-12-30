require 'minitest/autorun'
require_relative '../lib/n002'

class N002Test< Minitest::Test
  def test_merge
    assert_equal 'パタトクカシーー', 'パトカー'.merge('タクシー')
  end
end
