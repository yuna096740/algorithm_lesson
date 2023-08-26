# 正の整数nを入力
print "n:"
n = gets.to_i
count = 0

# cを1からnまで1ずつ増やす．
(1..n).each do |c|
  # bを1からc-1まで1ずつ増やす．(b=cとなることは無い)
  (1...c).each do |b|
    # aを1からb-1まで1ずつ増やす．(a=bとなることは無い)
    (1...b).each do |a|
      # ピタゴラス数であれば出力
      if a**2 + b**2 == c**2
        # puts "(#{a}, #{b}, #{c})"
        count += 1
      end
    end
  end
end
puts count