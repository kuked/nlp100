require_relative 'n043'

class Chunk
  def find_pos(pos)
    @morphs.find {|m| m.pos == pos }
  end

  def find_all_pos(pos)
    @morphs.find_all {|m| m.pos == pos }
  end
end

if __FILE__ == $0
  path = 'ai.ja.txt.parsed'

  sentence = read_cabocha(path)

  sentence.each do |chunks|
    verbs = chunks.find_all {|c| c.include?('動詞') }

    verbs.each do |verb|
      relations = chunks.select {|c| verb.srcs == c.dst }

      if relations.any? {|c| c.include?('助詞') }
        predicate = verb.find_pos('動詞').base
        cs = relations.map {|c| c.find_all_pos('助詞') }.flatten
        cs = cs.map {|c| c.base }.uniq.sort

        puts "#{predicate}\t#{cs.join(' ') }"
      end
    end
  end
end
