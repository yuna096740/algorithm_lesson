N = gets.chomp.to_i  # 自然数 N を入力
M = gets.chomp.split.map(&:to_i)  # N個の要素からなる数列 M を入力

(0...N).each do |i|
  (1..M[i]).each do |j|
    print j
    print " " unless j == M[i]
  end
  puts
end