N, M, X = gets.split.map(&:to_i)
C, A = [], []
N.times do |n|
  input = gets.split.map(&:to_i)
  C.append(input[0])
  A.append(input[1..-1])
end

0.upto(M-2) do |m|
  (m+1).upto(M-1) do |n|
    p m
    p n
    unko 
    p A[m..n].transpose.map {|a| a.inject(:+)}
    puts
  end
end
