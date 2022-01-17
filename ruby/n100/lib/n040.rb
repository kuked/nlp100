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
