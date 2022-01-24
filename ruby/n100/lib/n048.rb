require_relative 'n045'

if __FILE__ == $0
  path = 'ai.ja.txt.parsed'

  sentence = read_cabocha(path)
  proc = Proc.new {|v| v.pos != '記号' }

  sentence.each do |s|
    chunks = s.find_all {|chunk| chunk.include?({:pos => '名詞'}) }

    chunks.each do |chunk|
      text = []

      until chunk.dst == -1
        text << chunk.text_of_phrase(&proc)
        chunk = s[chunk.dst]
      end
      text << chunk.text_of_phrase(&proc)

      puts text.join(' -> ')
    end
  end
end
