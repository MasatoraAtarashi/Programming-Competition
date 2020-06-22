N, M = gets.split.map(&:to_i)
A = []
N.times do |n|
  A[n] = gets.split.map(&:to_i)
end
max = 0
for i in 0...M
  for j in 0...M
    sum = 0
    next if i == j
    for n in 0...N
      sum += [A[n][i], A[n][j]].max
    end
    max = [max, sum].max
  end
end
puts max
