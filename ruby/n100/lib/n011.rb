def tab2space(path)
  File.new(path).read.tr("\t", " ")
end
