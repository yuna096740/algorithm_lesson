# 最初の3つの数が1、1、2で、それ以降の数が直前の3つの数の和になるトリボナッチ数列の10番目の数を求める。
# 1, 1, 2, 4, 7, 13, 24, 44, 81, ...

tribonacci = [1,1,2]

while tribonacci.length < 10
  tribonacci << tribonacci[- 1] + tribonacci[- 2] + tribonacci[- 3]
end

puts tribonacci.last 