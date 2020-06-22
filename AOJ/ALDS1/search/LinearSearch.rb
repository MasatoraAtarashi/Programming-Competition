n = gets.to_i
S = gets.split.map(&:to_i).uniq
q = gets.to_i
T = gets.split.map(&:to_i)
cnt = 0
T.each do |t|
  cnt += 1 if S.include?(t)
end
puts cnt
