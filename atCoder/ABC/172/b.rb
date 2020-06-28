S = gets.chomp.split(//).map(&:to_s)
T = gets.chomp.split(//).map(&:to_s)
count = 0
S.each_with_index do |s, idx|
    count += 1 if s != T[idx]
end
puts count