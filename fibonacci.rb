num = gets.to_i
$memo = {}

def fibonacci(num)
  if $memo.has_key?(num)
    return $memo[num]
  elsif num == 0
    return 0
  elsif num == 1
    return 1
  else
    return $memo[num] = fibonacci(num - 1) + fibonacci(num - 2)
  end
end

puts fibonacci(num)