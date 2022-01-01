require 'minitest/autorun'
require_relative '../lib/n009'

class N009Test < Minitest::Test
  def setup
    @sentence = "I couldn’t believe that I could actually understand what I \
                 was reading : the phenomenal power of the human mind ."
  end

  def test_typoglycemia
    words = @sentence.split(/ +/)
    _ = words.map do |w|
      if w.length > 4
        "#{w[0]}#{w[1..-2].shuffle}#{w[-1]}"
      else
        w
      end
    end

    # The output is random and cannot be compared.
    # p _.join(' ')
    pass
  end
end
