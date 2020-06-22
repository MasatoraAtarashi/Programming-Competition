$n = gets.to_i
A = gets.split.map(&:to_i)
q = gets.to_i
M = gets.split.map(&:to_i)

def solve(i, m)
  if m == 0
    return true
  end

  if i >= $n
    return false
  end

  res = solve(i + 1, m) || solve(i + 1, m - A[i])
  return res
end

M.each do |m|
  solve(0, m) ? puts('yes') : puts('no')
end
