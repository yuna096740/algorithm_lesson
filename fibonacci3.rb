fibonacci = [1,0,5]

while fibonacci.length < 44
  fibonacci << fibonacci[-1] + fibonacci[-3]
end

puts fibonacci.last