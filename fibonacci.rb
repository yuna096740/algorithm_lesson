$memo = {}

def fibonacci(num)
  if memo.has_key?(num)
    return $memo[num]
  elsif num == 0
    return 0
  elsif num == 1
    return 1
  else
    return $memo[num] = fibonaccci(num - 1) + fibonaccci(num - 2)
  end
end

puts fibonacci(num)

