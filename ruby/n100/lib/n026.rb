require_relative 'n021'

class String
  def trim_em
    self.gsub(EM) { $1 }
  end
end
