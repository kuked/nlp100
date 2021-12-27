class String
  def at(indices)
    indices.map { |i| self[i] }.join
  end
end
