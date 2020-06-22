N, M, Q = gets.split.map(&:to_i)
member = (1..N).to_a
friendship = Array.new(N).map{Array.new(N,0)}
club = []
popularity = 0

(1..M).each do
  a, b, f = gets.split.map(&:to_i)
  friendship[a-1][b-1] = f
  friendship[b-1][a-1] = f
end

(1..Q).each do
  op, q = gets.split
  q = q.to_i
  if op == '+'
    club << q
  else
    club.delete(q)
  end

  if club.length.zero? || club.length == N
    popularity = 0
  else
    a = []
    club.each do |c|
      # puts friendship[c - 1]
      a << friendship[c - 1]
    end
    a = a.flatten
    popularity = a.max
  end
  # puts club.length
  puts popularity
end
