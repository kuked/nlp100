require_relative 'n030'
require_relative 'n035'

class Tagged
  def cooccurrence_top_10_words
    sentence_include? '猫'
  end

  private

  def sentence_include?(val)
    surfaces.select { |w| w.include? val }
  end
end
