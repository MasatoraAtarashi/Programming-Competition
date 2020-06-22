N = gets.to_i
S = gets.chomp.split(//)
count = 0

# for a in 0..(N - 3)
#   for b in (a + 1)..(N - 2)
#     if S[a] != S[b]
#       for c in (b + 1)..(N - 1)
#         if (b - a) == (c - b)
#           next
#         elsif S[b] != S[c] && S[c] != S[a]
#           count += 1
#         end
#       end
#     end
#   end
# end
# puts count
r,g,b = [],[],[]
S.each_with_index do |s, i|
  if s == 'R'
    r.push(i)
  elsif s == 'G'
    g.push(i)
  else
    b.push(i)
  end
end
# r.each do |r|
#   g.each do |g|
#     b.each do |b|
#       count += 1 if (g - r) == (b - g) || (b - r) == (g - b) || (r - g) == (b - r) || (b - g) == (r - b) || (r - b) == (g - r) || (g - b) == (r - g)
#     end
#   end
# end
count = [r.length, g.length, b.length].min
count = count * count
puts r.length * g.length * b.length - count
