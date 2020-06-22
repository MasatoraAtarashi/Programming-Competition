A, B, N = gets.split.map(&:to_i)
max = 0
maxn = N
unko = N - 18000000
unko = 1 if unko < 1
a = 2
a = 1 if N < 10000000
# if A == B && B == N
#   max = 1
# end
unko.step(N, a) do |n|
  res = ((A * n) / B).floor - A * (n / B).floor
  if res >= max
    max = res
    maxn = n
  end
  # p n
end
puts max
