# # ABC086A - Product
# a, b = gets.split.map(&:to_i)
# a * b % 2 == 0 ? puts('Even') : puts('Odd')

# # ABC081A - Placing Marbles
# puts gets.to_s.count('1')

# # ABC081B - Shift only
# N = gets.to_i
# A = gets.split.map(&:to_i)
# count = 0
# while A.map {|a| a % 2}.all?(&:zero?)
#   count += 1
#   A.map! {|a| a / 2}
# end
# puts count

# # ABC087B - Coins
# A = gets.to_i
# B = gets.to_i
# C = gets.to_i
# X = gets.to_i
# count = 0
# (A + 1).times do |a|
#   (B + 1).times do |b|
#     (C + 1).times do |c|
#       count += 1 if 500 * a + 100 * b + 50 * c == X
#     end
#   end
# end
# puts count

# # ABC083B - Some Sums
# require_relative '../../myLibrary/libraries'
# N, A, B = gets.split.map(&:to_i)
# sum = 0
# (N + 1).times do |n|
#   sum += n if n.to_s.split(//).map(&:to_i).sum.between?(A, B)
# end
# puts sum

# # ABC088B - Card Game for Two
# N = gets.to_i
# A = gets.split.map(&:to_i)
# alice, bob = 0, 0
# N.times do |n|
#   if n % 2 == 0
#     alice += A.max
#   else
#     bob += A.max
#   end
#   A.delete_at(A.find_index(A.max))
# end
# puts alice - bob

# # ABC085B - Kagami Mochi
# N = gets.to_i
# D = []
# N.times do
#   D.push(gets.to_i)
# end
# puts D.uniq.length

# # ABC085C - Otoshidama
# N, Y = gets.split.map(&:to_i)
# x, y, z = -1, -1, -1
# isBreak = false
# (0..(Y / 10000)).reverse_each do |m|
#   remain = Y - m * 10000
#   next_roop_max = remain / 5000
#   if next_roop_max + m > N
#     next_roop_max = N - m
#   end
#   (0..next_roop_max).reverse_each do |n|
#     remain2 = remain - n * 5000
#     l = remain2 / 1000
#     if m + n + l == N
#       x, y, z = m, n, l
#       isBreak = true
#       break
#     end
#     break if isBreak
#   end
# end
# puts "#{x} #{y} #{z}"

# # ABC049C - 白昼夢
# words = %w(dream dreamer erase eraser)
# S = gets.chomp.split('')
# str = ""
# S.each_with_index do |s, i|
#   str += s
#   if words.include?(str)
#     if str == "erase"
#       if S[i+1] != 'r'
#         str = ""
#       end
#     elsif str == "dream"
#       if S[i+1] == 'd' || S[i+1].nil? || S[i+3] == 'a'
#         str = ""
#       end
#     else
#       str = ""
#     end
#   end
# end
# str.empty? ? puts("YES") : puts("NO")

# # ABC086C - Traveling
# N = gets.to_i
# ans = true
# N.times do
#   t, x, y = gets.split.map(&:to_i)
#   if !(t >= x + y && t % 2 == (x + y) % 2)
#     ans = false
#     break
#   end
# end
# ans ? puts('Yes') : puts('No')
