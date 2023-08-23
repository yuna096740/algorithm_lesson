input = gets.chomp.to_i

number = input.to_s.chars.each_slice(3).map(&:join).join(',')
puts number
