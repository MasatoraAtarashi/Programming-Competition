x, y = gets.split.map(&:to_i)
flag = false
x.downto(0) do |kame|
    flag = true if kame * 4 + (x - kame) * 2 == y
end
flag ? puts('Yes') : puts('No')