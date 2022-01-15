require_relative 'n030'
require_relative 'n035'


class Array
  def take_after(i, span)
    self[i+1..span-1]
  end

  def take_before(i, span)
    head = i - span
    head = head.negative? ? 0 : head
    self[head...i]
  end
end

class Tagged
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
