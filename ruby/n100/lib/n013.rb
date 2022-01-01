def paste(column0, column1)
  columns = column0.zip(column1)
  columns.map {|col| col.join("\t") }.join("\n")
end
