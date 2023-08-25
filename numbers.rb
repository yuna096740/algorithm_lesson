num = gets.chomp.to_i 

(1..num/2).each do |i|
    print i
    print " " unless i == num/2
end 
puts

((num/2) + 1..num).each do |i|
    print i
    print " " unless i == num
end 
puts
