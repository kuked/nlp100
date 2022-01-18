require_relative 'n040'

class Chunk
  attr_reader :morphs, :dst, :srcs

  def initialize(dependency, morphs)
    dependency.match(/\* (?<srcs>\d+) (?<dst>\d+)D .+/) do |m|
      @dst  = m[:dst].to_i
      @srcs = m[:srcs].to_i
    end
    @morphs = morphs.map {|m| Morph.new(m) }
  end
end


def read_cabocha(path)
  chunks = []
  open(path) do |f|
    dependency = ""
    morphs = []
    until f.eof?
      line = f.readline
      if line =~ /^EOS/
        chunks << Chunk.new(dependency, morphs) unless morphs.empty?
        morphs = []
      elsif line =~ /^\*/
        dependency = line.chomp
      else
        morphs << line.chomp
      end
    end
  end
  chunks
end

if __FILE__ == $0
  path = 'ai.ja.txt.parsed'

  chunks = read_cabocha(path)
  pp chunks[1]
end
