K = gets.to_i
sum = 0
for a in 1..K
  for b in 1..K
    for c in 1..K
      n = c.gcd(b)
      sum += n.gcd(a)
    end
  end
end
puts sum
