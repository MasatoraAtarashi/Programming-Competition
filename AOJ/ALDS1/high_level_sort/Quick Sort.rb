n = gets.to_i
cards = []
n.times do |n|
  cards[n] = gets.split
  cards[n][1] = cards[n][1].to_i
end

def partation(arr, p, r)
  std = arr[r][1]
  i = p - 1
  for j in (p...r)
    if arr[j][1] <= std
      i += 1
      arr[j], arr[i] = arr[i], arr[j]
    end
  end
  arr[i + 1], arr[r] = arr[r], arr[i + 1]
  return i + 1
end

def quick_sort(arr, p, r)
  if p < r
    q = partation(arr, p, r)
    quick_sort(arr, p, q - 1)
    quick_sort(arr, q + 1, r)
  end
  return arr
end

$inf = 1.0 / 0.0
def merge_sort(arr)
  left = arr[0..(arr.length / 2 - 1)]
  right = arr[(arr.length / 2)..(arr.length - 1)]
  left = merge_sort(left) unless left.length <= 1
  right = merge_sort(right) unless right.length <= 1
  left.push(["z", $inf])
  right.push(["z", $inf])
  res = []
  l, r = 0, 0
  while !(l == left.length || r == right.length)
    if left[l][1] <= right[r][1]
      res.push(left[l])
      l += 1
    else
      res.push(right[r])
      r += 1
    end
  end
  res.pop
  return res
end


def is_Stable(c1, c2, n)
  for i in 0..n-2
    if c2[i][1] == c2[i+1][1] && c2[i] != c1[i]
      return false
    end
  end
  return true
end

cards_dup = Marshal.load(Marshal.dump(cards))
arr1 = quick_sort(cards_dup, 0, n - 1)
arr2 = merge_sort(cards)
is_Stable(arr1, arr2, n) ? puts("Stable") : puts("Not stable")
arr1.map do |a|
  puts a.join(' ')
end
