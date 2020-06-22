# N = gets.to_i
# arr = gets.split.map(&:to_i)
# arr.map.with_index { |a, i|
#   sum = 0
#   arr_dup = arr.dup
#   arr_dup.delete_at(i)
#   counts = arr_dup.uniq.map{ |e| arr_dup.count(e) }
#   counts.map { |count| sum += count * (count - 1) / 2 }
#   puts sum
# }
# class Array
#   def count
#     k = Hash.new(0)
#     self.map{|x| k[x] += 1 }
#     return k
#   end
# end
# N = gets.to_i
# arr = gets.split.map(&:to_i)
# arr.map.with_index { |a, i|
#   sum = 0
#   arr_dup = arr.dup
#   arr_dup.delete_at(i)
#   counts = arr_dup.count
#   counts.map { |key, count| sum += count * (count - 1) / 2 }
#   puts sum
# }
N = gets.to_i
ary = gets.split.map(&:to_i)
dups = ary.group_by{ |e| e }.select { |k, v| v.size > 1 }.map(&:first)
# puts dups
kazus = []
dups.map.with_index { |d, i|
  count = ary.count(d)
  kazus.push(count * (count - 1) / 2)
}
ary.each do |a|
  if !(dups.include?(a))
    kazus.sum
  elsif a == d
    unko = kazus.dup
    unko.delete_at(i)
    (kazus[i] / 2 + unko.sum).to_s
  else
    a
  end
end
puts ary.map(&:to_i)
# p kazus
# ary.map { |a|
#   if a ==
# }
# uniq = arr.uniq
# counts = uniq.map { |u| arr.count(u) }
# p counts
