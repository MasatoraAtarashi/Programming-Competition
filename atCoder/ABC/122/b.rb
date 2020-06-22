S = gets.chomp.split(//)
acgt = %w(A C G T)
max = 0
cnt = 0
for n in (0..S.length-1)
  for m in (n..S.length-1)
    if acgt.include?(S[m])
      cnt += 1
    else
      break
    end
  end
  max = cnt if cnt > max
  cnt = 0
end
puts max
