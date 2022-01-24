require_relative 'n045'

if __FILE__ == $0
  path = 'ai.ja.txt.parsed'

  sentence = read_cabocha(path)
  proc = Proc.new {|v| v.pos != '記号' }

  sentence.each do |chunks|
    verbs = chunks.find_all {|c| c.include?({:pos => '動詞'}) }

    verbs.each do |verb|
      relations = chunks.select {|c| verb.srcs == c.dst }

      relations.each_with_index do |chunk, i|
        if chunk.include?({:pos => '助詞', :surface => 'を'}) &&
           chunk.include?({:pos => '名詞', :pos1 => 'サ変接続'})

          noun_wo = chunk.text_of_phrase
          predicate = verb.find_pos('動詞').base

          relations = relations.filter.with_index do |c, j|
            c.include?({:pos => '助詞'}) && i != j
          end

          cs = relations.map {|c| c.find_pos('助詞') }.map {|c| c.base }
          text = relations.map {|c| c.text_of_phrase(&proc) }

          puts "#{noun_wo}#{predicate}\t#{cs.join(' ')}\t#{text.join(' ')}"
        end
      end
    end
  end
end
