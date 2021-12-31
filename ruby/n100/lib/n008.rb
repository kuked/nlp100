class String
  def cipher
    ordinals = self.chars.map(&:ord)
    cs = ordinals.map do |o|
      if o >= 97 && o <= 122
        (219 - o).chr
      else
        o.chr
      end
    end
    cs.join
  end
end
