# 標準入力から値を取得してinput_lineに入れる
H, W, N = gets.split.map(&:to_i)
ary = Array.new(H).map{Array.new(W,'.')}
# puts ary.length
# puts ary[0].length
(1..N).each do
  h, w, x = gets.split.map(&:to_i)
  # 何行目からスタートするか
  (0..(H-1)).each do |i|
    if ary[i][x..(x+w-1)].any?('#')
      (0..(h-1)).each do |u|
        (0..(w-1)).each do |baka|
          ary[i - u - 1][x + baka] = '#'
        end
      end
      break
    end
    if i == (H-1)
      (0..(h-1)).each do |u|
        (0..(w-1)).each do |baka|
          ary[i - u][x + baka] = '#'
        end
      end
    end
  end
end

ary.each_with_index do |x, i|
  x.each do |j|
    print(j)
  end
  puts ""
end
