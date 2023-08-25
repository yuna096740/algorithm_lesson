fibonacci = [0,1]
input = gets.to_i

while fibonacci.length < input
  fibonacci << fibonacci[- 1] + fibonacci[- 2]
end

puts fibonacci.last