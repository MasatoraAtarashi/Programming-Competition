n,k = gets.split.map(&:to_i)
while (n - k).abs < n
  if n < k
    n = k % n
  else
    n = n % k
  end
end
puts n
