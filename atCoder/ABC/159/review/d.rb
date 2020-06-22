N = gets.to_i
ary = gets.split.map(&:to_i)
def choose2(n)
  (n * (n - 1)) / 2
end

cnt = Hash.new(0)
ary.map do |a|
  cnt[a] += 1
end

total = 0
cnt.map do |k, v|
  total += choose2(v)
end

ary.map do |a|
  puts total - choose2(cnt[a]) + choose2(cnt[a] - 1)
end
