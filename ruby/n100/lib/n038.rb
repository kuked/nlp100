require_relative 'n030'
require_relative 'n035'

if __FILE__ == $0
  require 'gr/plot'

  path = 'neko.txt.mecab'
  tagged = Tagged.new(path)

  hash = tagged.surfaces.flatten.tally
  vals = hash.values.select {|v| v <= 10 }

  GR.histogram(vals, nbins: 10)

  # Disappears after 5 seconds
  sleep 5
end
