num = gets.chomp.to_i

(1..num).each do |i|
    (1..num).each do |j|
        result = i * j
        print result
        print " " unless j == num
    end
    puts
end