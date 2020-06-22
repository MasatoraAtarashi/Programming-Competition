require 'bigdecimal'
# h, w = gets.split.map(&:to_i)
# puts "#{h * w} #{h * 2 + w * 2}"

# S = gets.to_i
# h = S / 3600
# m = (S - 3600 * h) / 60
# s = (S - 3600 * h - 60 * m)
# puts "#{h}:#{m}:#{s}"

# a, b = gets.split.map(&:to_i)
# if a == b
#   puts "a == b"
# elsif a < b
#   puts "a < b"
# else
#   puts "a > b"
# end

# a, b, c = gets.split.map(&:to_i)
# (a < b && b < c) ? puts("Yes") : puts("No")
# if a < b && b < c
#   puts "Yes"
# else
#   puts "No"
# end

# arr = gets.split.map(&:to_i)
# (0...2).each do |i|
#   min = 1.0 / 0.0
#   minj = 0
#   (i..2).each do |j|
#     if arr[j] < min
#       minj = j
#       min = arr[j]
#     end
#   end
#   min = arr[minj]
#   arr[minj] = arr[i]
#   arr[i] = min
# end
# puts arr.join(' ')

# puts gets.split.map(&:to_i).sort.join(' ')

# W, H, x, y, r = gets.split.map(&:to_i)
# (H < y + r) || (0 > y - r) || (W < x + r) || (0 > x - r) ? puts('No') : puts('Yes')

# flag = true
# i = 1
# while flag
#   num = gets.to_i
#   num == 0 ? flag = false : puts("Case #{i}: #{num}")
#   i += 1
# end

# while !((pair = gets.split.map(&:to_i)).all?(&:zero?))
#   puts pair.sort.join(' ')
# end
# a, b, c = gets.split.map(&:to_i)
# count = 0
# (a..b).each do |i|
#   count += 1 if c % i == 0
# end
# puts count

# a, b = gets.split.map(&:to_i)
# puts "#{a / b} #{a % b} #{sprintf("%.5f", a.to_f / b)}"

# r = gets.to_f
# puts "#{(r * r * Math::PI).round(6)} #{(r * 2 * Math::PI).round(6)}"

# flag = true
# while flag
#   a, op, b = gets.split
#   a, b = [a, b].map(&:to_i)
#   case op
#   when "+"
#     puts a + b
#   when "-"
#     puts a - b
#   when "*"
#     puts a * b
#   when "/"
#     puts a / b
#   when "?"
#     flag = false
#   end
# end

# while !(a, op, b = gets.split(" ")).include?("?")
#   puts a.to_i.send(op, b.to_i)
# end

# gets
# arr = gets.split.map(&:to_i).sort
# puts "#{arr[0]} #{arr[-1]} #{arr.sum}"

# while !((h, w = gets.split.map(&:to_i)).all?(&:zero?))
#   h.times do
#     puts '#' * w
#   end
#   puts "\n"
# end

# while !((h, w = gets.split.map(&:to_i)).all?(&:zero?))
#   puts '#' * w
#   (h - 2).times do
#     puts "#" + "." * (w - 2) + "#"
#   end
#   puts '#' * w
#   puts "\n"
# end

# while !((h, w = gets.split.map(&:to_i)).all?(&:zero?))
#   h.times do |i|
#     w.times do |j|
#       ((i + j) % 2 == 0) ? printf('#') : printf('.')
#     end
#     puts "\n"
#   end
#   puts "\n"
# end

# def include3?(i)
#   if i % 10 == 3
#     true
#   elsif (i / 10) != 0
#     include3?(i / 10)
#   else
#     false
#   end
# end
#
# for i in 1..gets.to_i
#   if i % 3 == 0 or include3?(i)
#     printf " #{i}"
#   end
# end
# puts

# gets
# puts gets.split.map(&:to_i).reverse.join(' ')

# num = gets.to_i
# spades, hearts, clubs, dias = [], [], [], []
# card_kinds = {'S' => spades, 'H' => hearts, 'C' => clubs, 'D' => dias}
# num.times do
#   card = gets.split
#   case card[0]
#   when "S"
#     spades << card[1].to_i
#   when "H"
#     hearts << card[1].to_i
#   when "C"
#     clubs << card[1].to_i
#   when "D"
#     dias << card[1].to_i
#   end
# end
# card_kinds.each do |cards_name, cards_arr|
#   (1..13).each do |i|
#     if !(cards_arr.include?(i))
#       puts "#{cards_name} #{i}"
#     end
#   end
# end

# # 公舎の入居者数
# n = gets.to_i
# rooms = Array.new(4).map{Array.new(3).map{Array.new(10,0)}}
# n.times do
#   b, f, r, v = gets.split.map(&:to_i)
#   rooms[b-1][f-1][r-1] += v
# end
#
# rooms.each_with_index do |ridge, i|
#   ridge.each do |floor|
#     puts " " + floor.join(' ')
#   end
#   puts "####################" unless i == rooms.length - 1
# end

# # ベクトルと行列の積
# n, m = gets.split.map(&:to_i)
# A = Array.new(n)
# B = Array.new(m)
# result = Array.new(n, 0)
# n.times do |i|
#   A[i] = gets.split.map(&:to_i)
# end
#
# m.times do |i|
#   B[i] = gets.to_i
# end
#
# n.times do |i|
#   m.times do |j|
#     result[i] += A[i][j] * B[j]
#   end
# end
# puts result

# # 成績
# while !((m, f, r = gets.split.map(&:to_i)).all? { |v| v == -1 })
#   case m + f
#     when 80..100 then grade = "A"
#     when 65...80 then grade = "B"
#     when 50...65 then grade = "C"
#     when 30...50 then r >= 50 ? grade = "C" : grade = "D"
#     when 0...30 then grade = "F"
#   end
#   grade = "F" if m == -1 || f == -1
#   puts grade
# end

# # 組み合わせの数
# while !((n, x = gets.split.map(&:to_i)).all?(&:zero?))
#   num_array = (1..n).to_a
#   count = 0
#   comb = []
#   num_array.each do |f|
#     (f..n).each do |s|
#       (s..n).each do |t|
#         if f + s + t == x && ([f, s, t].count - [f, s, t].uniq.count) == 0
#           count += 1
#         elsif f + s + t > x
#           break
#         end
#       end
#     end
#   end
#   puts count
# end

# # 表計算
# r, c = gets.split.map(&:to_i)
# table = []
# result_table = []
#
# r.times do
#   row = gets.split.map(&:to_i)
#   table.push(row)
#   result_table.push(row.push(row.sum))
# end
#
# column_sumed_row = []
# table.transpose.each do |t|
#   column_sumed_row.push(t.sum)
# end
# result_table.push(column_sumed_row)
# puts result_table.map{|r|r*' '}

# # 行列の積
# N, M, L = gets.split.map(&:to_i)
# a = []
# b = []
# ans = Array.new(N).map{Array.new(L,0)}
# N.times do
#   a.push(gets.split.map(&:to_i))
# end
# M.times do
#   b.push(gets.split.map(&:to_i))
# end
# N.times do |n|
#   L.times do |l|
#     sum = 0
#     M.times do |m|
#       sum += a[n][m] * b[m][l]
#     end
#     ans[n][l] = sum
#   end
# end
# puts ans.map{|r|r*' '}

# # 大文字と小文字の入れ替え
# inputs = gets.chomp.split(',')
# out = ''
# inputs.each_with_index do |str, i|
#   str.split('').each do |c|
#     if c =~ /^[A-Z]+$/
#       c.downcase!
#     elsif c =~ /^[a-z]+$/
#       c.upcase!
#     end
#     out << c
#   end
#   out << ',' unless i == inputs.length - 1
# end
# puts out

# # 別解答
# puts gets.split(//).map { |char|
#   if char == char.upcase
#     char.downcase
#   else
#     char.upcase
#   end
# }.join

# puts gets.swapcase

# $><<gets.tr("a-zA-Z","A-Za-z")

# # 数字の和
# while !((num = gets.split(//).map(&:to_i)).all?(&:zero?))
#   puts num.sum
# end

# # 文字のカウント
# count = Hash.new(0)
# readlines.map(&:downcase).join.split(//).each do |cha|
#   count[cha] += 1 if cha =~ /^[a-z]+$/
# end
# ('a'..'z').each do |cha|
#   puts "#{cha} : #{count[cha]}"
# end

# # リング
# s = gets.chomp
# s += s
# p = gets.chomp
# flag = false
# (s.length / 2).times do |i|
#   if s[i..(i + p.length - 1)] == p
#     flag = true
#   end
# end
# flag ? puts('Yes') : puts('No')

# # 別解
# s = gets.chomp
# s += s
# p = gets.chomp
# s.index(p) ? puts('Yes') : puts('No')

# # 単語の検索
# w = gets.chomp
# x = readlines.map(&:chomp).map(&:downcase)
# x.pop
# puts x.join(' ').split.count(w)

# # シャッフル
# while !((str = gets.chomp).eql?('-'))
#   (m = gets.to_i).times do
#     h = gets.to_i
#     first_str = str[0..h-1]
#     str.slice!(0..h-1)
#     str += first_str
#   end
#   puts str
# end
#
# while !((str = gets.chomp.split(//)).eql?(['-']))
#   gets.to_i.times do
#     str.push(*str.shift(gets.to_i))
#   end
#   puts str.join
# end

# # カードゲーム
# scores = Array.new(2, 0)
# gets.to_i.times do
#   taro, hanako = gets.chomp.split(' ')
#   if taro == hanako
#     scores.map! {|s| s += 1}
#   elsif taro > hanako
#     scores[0] += 3
#   else
#     scores[1] += 3
#   end
# end
# puts scores.join(' ')

# # 文字列変換
# str = gets
# gets.to_i.times do
#   ins = gets.chomp.split(' ')
#   case ins[0]
#   when 'replace'
#     str[ins[1].to_i..ins[2].to_i] = ins[3]
#   when 'reverse'
#     str[ins[1].to_i..ins[2].to_i] = str[ins[1].to_i..ins[2].to_i].reverse
#   when 'print'
#     puts str[ins[1].to_i..ins[2].to_i]
#   end
# end

# # 距離
# x1, y1, x2, y2 = gets.split.map(&:to_f)
# x = (x1 - x2).abs
# y = (y1 - y2).abs
# puts Math.sqrt(x ** 2 + y ** 2)
#
# # 別解
# puts Math.hypot(x1-x2, y1-y2)

# # 三角形
# a, b, c = gets.split.map(&:to_f)
# puts 0.5 * a * b * Math.sin(c / 180 * Math::PI)
# puts a + b + (Math.sqrt(a ** 2 + b ** 2 - (2 * a * b * Math.cos(c / 180 * Math::PI))))
# puts b * Math.sin(c / 180 * Math::PI)

# # 標準偏差
# while !((n = gets.to_i).zero?)
#   s = gets.split.map(&:to_i)
#   m = s.sum.fdiv(s.length)
#   s_sq = s.map {|s| s ** 2}
#   m_sq = s_sq.sum.fdiv(s_sq.length)
#   puts Math.sqrt(m_sq - m ** 2)
# end

# # ミンコフスキー距離
# N = gets.to_i
# x = gets.split.map(&:to_i)
# y = gets.split.map(&:to_i)
# arr = []
# N.times do |n|
#   arr.push((x[n] - y[n]).abs)
# end
# puts arr.sum
# puts Math.sqrt(arr.map {|a| a ** 2}.sum)
# puts Math.cbrt(arr.map {|a| a ** 3}.sum)
# puts arr.max
