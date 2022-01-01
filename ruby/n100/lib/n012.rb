def cut(path, index)
  lines = File.new(path).readlines
  lines.map { |l| l.split("\t")[index] }.join("\n")
end
