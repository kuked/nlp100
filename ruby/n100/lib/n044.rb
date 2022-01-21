require_relative 'n043'

if __FILE__ == $0
  require 'ruby-graphviz'

  g = GraphViz.new( :G, :type => :digraph )

  path = 'ai.ja.txt.parsed'

  sentence = read_cabocha(path)
  proc = Proc.new {|v| v.pos != '記号' }

  # Select only one sentence because the graph will be too large.
  chunks = sentence[1]

  chunks.each do |c|
    dst = c.dst
    if dst != -1
      src = g.add_node(c.text_of_phrase(&proc))
      dst = g.add_node(chunks[dst].text_of_phrase(&proc))
      g.add_edges(src, dst)
    end
  end

  g.output(png: 'ai.png')
end
