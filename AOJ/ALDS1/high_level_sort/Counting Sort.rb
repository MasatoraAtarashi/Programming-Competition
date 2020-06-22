n = gets.to_i
A = gets.split.map(&:to_i)
C = Array.new(A.max + 1, 0)

A.each do |a|
  C[a] += 1
end


count = 0
C.each_with_index do |c, i|
  C[i] += count
  count += c
end

ans = []
for i in 1..n
  ans[C[A[n - i]] - 1] = A[n - i]
  C[A[n - i]] -= 1
end

puts ans.join(' ')
