require_relative 'n042'

class Chunk
  def include?(pos)
    @morphs.any? {|m| m.pos == pos }
  end
end

if __FILE__ == $0
  path = 'ai.ja.txt.parsed'

  sentence = read_cabocha(path)
  proc = Proc.new {|v| v.pos != '記号' }

  sentence.each do |chunks|
    chunks.each do |c|
      dst = c.dst
      if dst != -1
        if c.include?('名詞') && chunks[dst].include?('動詞')
          src_text_of_phrase = c.text_of_phrase(&proc)
          dst_text_of_phrase = chunks[dst].text_of_phrase(&proc)
          puts "#{src_text_of_phrase}\t#{dst_text_of_phrase}"
        end
      end
    end
  end
end
