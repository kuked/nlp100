class Morph
  attr_reader :surface, :base, :pos, :pos1

  def initialize(text)
    parse(text)
  end

  private

  def parse(text)
    @surface, others = text.split("\t")
    morphs = others.split(",")

    @base = morphs[-1]
    @pos = morphs[0]
    @pos1 = morphs[1]
  end
end

def read_parsed_by_cabocha(path)
  open(path) do |f|
    morphs = []
    until f.eof?
      line = f.readline
      if line =~ /^EOS/
        yield morphs unless morphs.empty?
        morphs = []
      elsif line =~ /^\*/
        next
      else
        morphs << Morph.new(line.chomp)
      end
    end
  end
end

if __FILE__ == $0
  path = 'ai.ja.txt.parsed'

  morphs = []
  read_parsed_by_cabocha(path) {|v| morphs << v }
  pp morphs[1]
end
