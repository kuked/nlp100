class Tagged
  def surfaces
    @sentence.map do |s|
      s.map {|v| v[:surface] }
    end
  end
end
