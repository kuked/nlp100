require_relative 'n045'

if __FILE__ == $0
  path = 'ai.ja.txt.parsed'

  sentence = read_cabocha(path)
  proc = Proc.new {|v| v.pos != '記号' }

  sentence.each do |chunks|
    verbs = chunks.find_all {|c| c.include?('動詞') }

    verbs.each do |verb|
      relations = chunks.select {|c| verb.srcs == c.dst }

      if relations.any? {|c| c.include?('助詞') }
        predicate = verb.find_pos('動詞').base
        relations = relations.filter {|c| c.include?('助詞') }
        cs = relations.map {|c| c.find_pos('助詞') }.map {|c| c.base }
        text = relations.map {|c| c.text_of_phrase(&proc) }

        puts "#{predicate}\t#{cs.join(' ')}\t#{text.join(' ')}"
      end
    end
  end
end
