require_relative 'n021'

class String
  def section
    self.match(SECTION) do |m|
      [
        m[:level].length,
        m[:section]
      ]
    end
  end
end
