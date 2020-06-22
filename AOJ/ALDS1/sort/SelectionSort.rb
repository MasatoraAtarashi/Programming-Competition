N = gets.to_i
A = gets.split.map(&:to_i)
count = 0
for i in 0...N
  minj = i
  for j in i...N
    if A[j] < A[minj]
      minj = j
    end
  end
  A[i], A[minj] = A[minj], A[i]
  count += 1 if i != minj
end
puts A.join(' ')
puts count
