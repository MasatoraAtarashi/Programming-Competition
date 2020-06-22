N = gets.to_i
input_line = gets
value = input_line.chomp.chars.map(&:to_i)
a = value.length / 3

b1 = value[0..a]
b2 = value[a+1..a*2]
b3 = value[a*2+1..-1]
sums =  [b1.sum, b2.sum, b3.sum]
diff = sums.max - sums.min

min_diff = diff
while a > 1
  a -= 1
  b1 = value[0..a]
  b2 = value[a+1..a*2]
  b3 = value[a*2+1..-1]
  sums =  [b1.sum, b2.sum, b3.sum]
  diff = sums.max - sums.min
  if diff < min_diff
    min_diff = diff
  end
end

puts min_diff
