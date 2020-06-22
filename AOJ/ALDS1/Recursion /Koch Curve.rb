$n = gets.to_i

def koch(d, p1, p2)
  if d == 0
    return
  end
  s, t, u = [], [], []
  # 繰り返し
    # 3当分
    # s,tのx座標
    s[0] = (p2[0] - p1[0]) / 3 + p1[0]
    t[0] = (p2[0] - p1[0]) / 3 * 2 + p1[0]
    # s,tのy座標
    s[1] = (p2[1] - p1[1]) / 3 + p1[1]
    t[1] = (p2[1] - p1[1]) / 3 * 2 + p1[1]
    # 正三角形作成
    u[0] = (t[0] - s[0]) * Math.cos(Math::PI / 3) - (t[1] - s[1]) * Math.sin(Math::PI / 3) + s[0]
    u[1] = (t[0] - s[0]) * Math.sin(Math::PI / 3) + (t[1] - s[1]) * Math.cos(Math::PI / 3) + s[1]
    koch(d - 1, p1, s)
    puts "#{s[0]} #{s[1]}"
    koch(d - 1, s, u)
    puts "#{u[0]} #{u[1]}"
    koch(d - 1, u, t)
    puts "#{t[0]} #{t[1]}"
    koch(d - 1, t, p2)
end


def main
  p1, p2 = [], []
  p1[0] = 0.0
  p1[1] = 0.0
  p2[0] = 100.0
  p2[1] = 0.0
  puts "#{p1[0]} #{p1[1]}"
  koch($n, p1, p2)
  puts "#{p2[0]} #{p2[1]}"
end

main
