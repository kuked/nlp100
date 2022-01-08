require_relative 'n021'

class String
  def trim_link
    self.gsub(LINK) { $1.split('|').last }
  end
end
