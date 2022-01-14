require_relative 'n030'
require_relative 'n035'

class Tagged
  def top_10_words
    hash = surfaces.flatten.tally
    hash.sort_by {|_, v| -v }[0..9]
  end
end

if __FILE__ == $0
  require 'gr/plot'

  path = 'neko.txt.mecab'
  tagged = Tagged.new(path)

  top10 = tagged.top_10_words
  x = top10.map(&:first)
  y = top10.map(&:last)

  GR.barplot(x, y, ylabel: 'frequency of word occurrence')

  # Disappears after 5 seconds
  sleep 5
end
