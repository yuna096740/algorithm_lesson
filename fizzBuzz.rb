count = 0

(1..20000000).each do |num|
  if num % 3 == 0 && num % 5 == 0
    puts "FizzBuzz"
  elsif num % 3 == 0
    puts "Fizz"
  elsif num % 5 == 0
    puts "Buzz"
  else
    puts num
    num_str = num.to_s

    if num_str.include?('1')
      count += 1
    end
  end
end

puts count