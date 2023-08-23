(1..9).each do |i|
  (1..9).each do |j|
      result = i * j
      print result
      print " " unless j == 0
  end
  puts
end