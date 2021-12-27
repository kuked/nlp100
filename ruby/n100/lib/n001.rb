class String
  def pickup(indices)
    indices.map { |i| self[i] }.join
  end
end
