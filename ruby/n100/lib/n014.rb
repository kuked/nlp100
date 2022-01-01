def head(path, count)
  lines = File.new(path).readlines
  lines[0...count].join
end
