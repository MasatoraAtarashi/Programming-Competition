K, N = gets.split.map(&:to_i)
As = gets.split.map(&:to_i)
min_distance = 100000000000000000000000000000
N.times do |n|
  dis = 0
  if n == 0
    dis = As[-1] - As[0]
  else
    dis = K - As[n] + As[n - 1]
  end
  if dis < min_distance
    min_distance = dis
  end
end
puts min_distance
