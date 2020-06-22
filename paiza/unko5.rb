# 標準入力から値を取得してinput_lineに入れる
k, s, t = gets.split.map(&:to_i)
ABCs = ["ABC"]
(1..(k-1)).each do |n|
  ABCs[n] = "A" + ABCs[n-1] + "B" + ABCs[n-1] + "C"
end
puts ABCs[-1][(s-1)..(t-1)]
