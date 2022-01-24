if __FILE__ == $0
  path = 'newsCorpora.csv'

  publishers = [
    'Reuters',
    'Huffington Post',
    'Businessweek',
    'Contactmusic.com',
    'Daily Mail'
  ]

  news = []

  # read valid data
  open(path) do |f|
    f.readlines.each do |line|
      columns = line.split("\t")
      if publishers.include?(columns[3])
        news << "#{columns[4]}\t#{columns[1]}"
      end
    end
  end

  # sort randomly
  news.shuffle!

  # export train.txt
  train, others = news.each_slice((news.count * 0.8).floor).to_a
  open('train.txt', 'wb').puts train

  # export valid.txt and test.txt
  valid, test = others.each_slice((others.count * 0.5).floor).to_a
  open('valid.txt', 'wb').puts valid
  open('test.txt', 'wb').puts test
end
