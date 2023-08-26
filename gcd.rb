def gcd(a, b)
  while b != 0
    # aとbをbで割った余りを新たなbに、元のbを新たなaに代入する
    a, b = b, a % b
  end
  return a  # 最終的な最大公約数を返す
end

a = gets.to_i
b = gets.to_i

puts gcd(a,b)