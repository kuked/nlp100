class Tagged
  def verbs
    @sentence.map do |s|
      s.select {|v| v[:pos] == '動詞' }
    end
  end
end
