n = gets.to_i
S = gets.split.map(&:to_i)

$inf = 1.0 / 0.0
$count = 0

def merge_sort(arr)
  left = arr[0..(arr.length / 2 - 1)]
  right = arr[(arr.length / 2)..(arr.length - 1)]
  left = merge_sort(left) unless left.length <= 1
  right = merge_sort(right) unless right.length <= 1
  left.push($inf)
  right.push($inf)
  res = []
  l, r = 0, 0
  while !(l == left.length || r == right.length)
    $count += 1
    if left[l] < right[r]
      res.push(left[l])
      l += 1
    else
      res.push(right[r])
      r += 1
    end
  end
  $count -= 1
  res.pop
  return res
end

puts merge_sort(S).join(' ')
puts $count
