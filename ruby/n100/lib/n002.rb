class String
  def merge(s)
    zipped = self.chars.zip(s.chars)
    zipped.join
  end
end
