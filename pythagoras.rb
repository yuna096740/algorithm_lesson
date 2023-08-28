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

# cの探索範囲を入力
print "num:"
num = gets.to_i
# ピタゴラス数の個数を記録するための変数count
count = 0
# m < √num (平方根)
m_max = Integer(Math.sqrt(num))
# mを1からm_maxまで1ずつ増やす．
(1..m_max).each do |m|
  # nを1からn-1まで1ずつ増やす．
  (1...m).each do |n|
    # mとn どちらかが偶数でもう一方が奇数である
    if m % 2 != n % 2
      # m,n互いに素
      if gcd(m, n) == 1
        # 定数倍したものもピタゴラス数なので一気に個数を追加
        #（cが探索範囲を超えていた場合+0になる）
        count += (num / (m**2 + n**2)).to_i
      end
    end
  end
end

puts count