N = gets.to_i
A = gets.split.map(&:to_i)
count = 0
for i in 0...N
  for j in 1..(N - i - 1)
    if A[N - j] < A[N - j - 1]
      A[N - j], A[N - j - 1] = A[N - j - 1], A[N - j]
      count += 1
    end
  end
end
puts A.join(' ')
puts count
