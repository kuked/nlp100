def split(path, line_count=1000)
  lines = File.new(path).readlines
  lines.each_slice(line_count)
end
