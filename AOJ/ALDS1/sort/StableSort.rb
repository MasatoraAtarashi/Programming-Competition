def bubble(c, n)
  c_dup = Marshal.load(Marshal.dump(c))
  for i in 0..n-2
    for j in 0..(n-i-2)
      if c_dup[j].split(//)[1] > c_dup[j+1].split(//)[1]
        c_dup[j], c_dup[j+1] = c_dup[j+1], c_dup[j]
      end
    end
  end
  return c_dup
end

def selection(c, n)
  c_dup = Marshal.load(Marshal.dump(c))
  for i in 0..n-2
    minj = i
    for j in (i+1)..n-1
      if c_dup[j].split(//)[1] < c_dup[minj].split(//)[1]
        minj = j
      end
    end
    c_dup[i], c_dup[minj] = c_dup[minj], c_dup[i]
  end
  return c_dup
end

def is_Stable(c1, c2, n)
  for i in 0..n-2
    if c2[i].split(//)[1] == c2[i+1].split(//)[1] && c2[i] != c1[i]
      return false
    end
  end
  return true
end

n = gets.to_i
c = gets.chomp.split()


c1 = bubble(c, n)
c2 = selection(c, n)

puts c1.join(' ')
puts "Stable"
puts c2.join(' ')
is_Stable(c1, c2, n) ? puts("Stable") : puts("Not stable")
