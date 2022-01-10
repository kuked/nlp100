class Tagged
  attr_reader :sentence

  def initialize(path)
    @path = path
    @sentence = []

    setup
  end

  private

  def setup
    read_sentence do |chunk|
      @sentence << chunk.map {|line| parse(line) }
    end
  end

  def read_sentence
    open(@path) do |f|
      chunk = []
      until f.eof?
        line = f.readline
        if line =~ /^EOS/
          yield chunk unless chunk.empty?
          chunk.clear
        else
          chunk << line.chomp
        end
      end
    end
  end

  def parse(line)
    surface, others = line.split("\t")
    tagged = others.split(",")

    {
      surface: surface,
      base:    tagged[-1],
      pos:     tagged[0],
      pos1:    tagged[1],
    }
  end
end
