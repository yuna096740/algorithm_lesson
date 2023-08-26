def gcd(a, b)
  if b < a
    c = b
    b = a
    a = c
  end
  
  # n=0なら終了
  if a == 0
    return b
  # n=0ではない場合，m=nとn=(余り)で手順2に戻る
  else
    rem = b % a
    b = a
    a = rem
    return gcd(b, a)
  end
end

# 正の整数nを入力
print "num:"
num = gets.to_i
count = 0
m_max = Integer(Math.sqrt(num))
(1..m_max).each do |m|
  (1...m).each do |n|
    if m % 2 != n % 2
      if gcd(m,n) == 1
        count += (num/ (m**2 + n**2)).to_i
      end
    end
  end
end
puts count