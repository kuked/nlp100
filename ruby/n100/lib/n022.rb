require_relative 'n021'

class String
  def category
    self.match(CATEGORY) {|m| m[:category] }
  end
end
