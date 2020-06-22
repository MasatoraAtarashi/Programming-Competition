N = gets.to_i
sum = 0
(1..N).each do |n|
  unless n % 15 == 0 || n % 5 == 0 || n % 3 == 0
    sum += n
  end
end
puts sum
