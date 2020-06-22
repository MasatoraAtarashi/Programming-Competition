def binary_search(arr, target, n)
  left = 0
  right = n
  while left < right
    mid = (left + right) / 2
    if target == arr[mid]
      return 1
    elsif target < arr[mid]
      right = mid
    elsif target > arr[mid]
      left = mid + 1
    end
  end
  return 0
end

n = gets.to_i
S = gets.split.map(&:to_i)
q = gets.to_i
T = gets.split.map(&:to_i)
cnt = 0
T.each do |t|
  cnt += binary_search(S, t, n)
end
puts cnt
