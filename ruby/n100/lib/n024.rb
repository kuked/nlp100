require_relative 'n021'

class String
  def media
    # I have to match all occurrences.
    self.scan(PRE_MEDIA).map do |ms|
      ms.match(MEDIA) do |m|
        m[:media]
      end
    end
  end
end
