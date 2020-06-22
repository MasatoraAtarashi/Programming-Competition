MAX_LEN = 1001
c = Array.new(MAX_LEN) { Array.new MAX_LEN }
gets.to_i.times do
  x, y = gets.chomp.chars, gets.chomp.chars
  m, n = x.size, y.size
  for i in 0..m
    c[i][0] = 0
  end
  for j in 0..n
    c[0][j] = 0
  end
  for i in 1..m
    for j in 1..n
      a, b = c[i][j - 1], c[i - 1][j]
      c[i][j] = (a > b ? a : b)
      if x[i - 1] == y[j - 1]
        c[i][j] = c[i - 1][j - 1] + 1
      end
    end
  end
  p c[m][n]
end
