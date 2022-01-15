require_relative 'n030'
require_relative 'n035'


class Array
  def take_after(i, span)
    self[i+1..span-1]
  end

  def take_before(i, span)
    head = (i - span).clamp(0, i)
    self[head...i]
  end
end

class Tagged
  # word の 前後(span)の語が共起していると仮定する
  def collocate(word, span)
    ls = sentence_include(word)
    ls.map do |ws|
      indice = ws.map.with_index {|w, i| w == word ? i : nil }.compact
      indice.map do |i|
        ws.take_before(i, span) + ws.take_after(i, span)
      end
    end
  end

  private

  def sentence_include(word)
    surfaces.select {|w| w.include? word }
  end
end

if __FILE__ == $0
  require 'gr/plot'

  path = 'neko.txt.mecab'
  tagged = Tagged.new(path)

  collocate = tagged.collocate('猫', 2).flatten
  top10 = collocate.tally.sort_by {|_, v| -v }[0..9]

  x = top10.map(&:first)
  y = top10.map(&:last)

  GR.barplot(x, y, ylabel: "collocate with '猫'")

  # Disappears after 5 seconds
  sleep 5
end
