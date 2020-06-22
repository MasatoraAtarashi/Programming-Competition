# count = 0
# for r in 1..h
#   for c in 1..w
#     if (r + c) % 2 == 0
#       count += 1
#     end
#   end
# end
h, w = gets.split.map(&:to_i)
if h <= 1 || w <= 1
  puts 1
else
  puts (h * w) / 2 + (h * w) % 2
end
