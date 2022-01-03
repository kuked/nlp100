require 'json'
require 'zlib'

class Article
  attr_reader :title, :text

  def initialize(title, text)
    @title = title
    @text = text
  end
end

class Wiki
  def initialize(path)
    @articles = {}
    setup(path)
  end

  def fetch(title)
    @articles[title]
  end

  private

  def setup(path)
    Zlib::GzipReader.open(path) do |f|
      f.readlines.each do |line|
        json = JSON.parse(line)
        title, text = json['title'], json['text']
        @articles[title] = Article.new(title, text)
      end
    end
  end
end
