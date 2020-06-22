a, b, c, k = gets.split.map(&:to_i)
sum = 0
if k >= a
  sum += 1 * a
  k = k - a
else
  sum += 1 * k
  k = 0
end
if k >= b
  sum += 0 * b
  k = k - b
else
  sum += 0 * k
  k = 0
end
if k >= c
  sum += -1 * c
  k = k - c
else
  sum += -1 * k
  k = 0
end
puts sum
