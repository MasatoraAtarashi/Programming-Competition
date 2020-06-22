n = gets.to_i
A = gets.split.map(&:to_i)

def partation(arr, p, r)
  std = arr[r]
  i = p - 1
  for j in (p...r)
    if arr[j] <= std
      i += 1
      arr[j], arr[i] = arr[i], arr[j]
    end
  end
  arr[i + 1], arr[r] = arr[r], arr[i + 1]
  arr[i + 1] = "[#{arr[i + 1]}]"
  puts arr.join(' ')
end

partation(A, 0, n - 1)
