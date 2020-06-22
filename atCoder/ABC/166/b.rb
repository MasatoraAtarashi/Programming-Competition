N, K = gets.split.map(&:to_i)
arr = []
K.times do
  d = gets.to_i
  A = gets.split.map(&:to_i)
  A.map do |a|
    arr.append(a)
  end
end
puts N - arr.uniq.length
