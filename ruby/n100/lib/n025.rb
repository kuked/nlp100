require_relative 'n021'

class String
  def template
    fields = self.match(TEMPLATE, Regexp::MULTILINE) do |m|
      m[0].scan(FIELD).map do |fs|
        fs.map(&:strip)
      end
    end
    Hash[*fields.flatten(1)] if fields
  end
end
