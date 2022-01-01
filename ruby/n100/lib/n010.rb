def lineno(path)
  f = File.new(path)
  # read all of the lines.
  f.readlines
  # return the current line number.
  f.lineno
end
