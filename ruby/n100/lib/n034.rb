require_relative 'n033'

class Tagged
  def continuous_nouns
    nouns = @sentence.map do |s|
      indices = s.map.with_index { |v, i| noun?(v) ? i : nil }.compact
      # https://docs.ruby-lang.org/ja/latest/method/Enumerable/i/chunk_while.html
      is = indices.chunk_while {|i, j| i + 1 == j }.max_by { |v| v.length }
      is.map { |i| s[i] } if is
    end
    nouns.compact
  end
end
