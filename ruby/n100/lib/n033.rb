class Tagged
  def a_no_b
    @sentence.map do |s|
      index = s.map.with_index {|v, i| ppp?(v) && v[:surface] == 'の' ? i : nil }.compact
      index.map do |i|
        unless s.length == i + 1
          if noun?(s[i - 1]) && noun?(s[i + 1])
            "#{s[i-1][:surface]}#{s[i][:surface]}#{s[i+1][:surface]}"
          end
        end
      end.compact
    end
  end

  private

  def noun?(morpheme)
    morpheme[:pos] == '名詞'
  end

  # wow! postpositional_particle => ppp?
  def ppp?(morpheme)
    morpheme[:pos] == '助詞'
  end
end
