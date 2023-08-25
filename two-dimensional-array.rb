N, M = gets.chomp.split.map(&:to_i)
A = gets.chomp.split.map(&:to_i)
B = gets.chomp.split.map(&:to_i)

current_index = 0

(0...M).each do |i|
    count = B[i]
    (0...count).each do |j|
        print A[current_index]
        print " " unless j == count - 1
        current_index += 1 
    end
    puts
end


# 入力例
# 10 4
# 1 2 3 4 5 6 7 8 9 10
# 2 6 1 1