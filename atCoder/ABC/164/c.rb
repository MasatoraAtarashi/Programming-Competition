n = gets.to_i
arr = []
n.times do
  arr.append(gets)
end
puts arr.uniq.length
