require_relative 'n021'

class String
  def category
    m = self.match(CATEGORY)
    m[:category] if m
  end
end
