def tail(path, count)
  lines = File.new(path).readlines
  lines[-count..-1].join
end
