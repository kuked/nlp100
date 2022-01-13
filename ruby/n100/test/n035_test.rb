require 'minitest/autorun'
require_relative '../lib/n030'
require_relative '../lib/n035'

class N035Test < Minitest::Test
  def setup
    path = 'lib/neko.txt.mecab'
    @tagged = Tagged.new(path)
  end

  def test_surfaces
    surfaces = @tagged.surfaces.flatten
    hash = surfaces.tally
    actual = hash.sort_by {|_, v| -v }[0..9]
    refute_nil actual
  end
end
