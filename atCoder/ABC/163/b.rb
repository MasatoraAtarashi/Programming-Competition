n, m = gets.to_i
A = gets.split.map(&:to_i)
(n - A.sum) >= 0 ? puts(n - A.sum) : puts('-1')
