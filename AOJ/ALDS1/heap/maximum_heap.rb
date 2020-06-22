$nodes = []
$h = 0

def maxHeapify(i)
  left = i * 2
  right = i * 2 + 1
  max = i
  max = left if left <= $h && $nodes[max - 1] < $nodes[left - 1]
  max = right if right <= $h && $nodes[max - 1] < $nodes[right - 1]

  if max != i
    $nodes[i - 1], $nodes[max - 1] = $nodes[max - 1], $nodes[i - 1]
    maxHeapify(max)
  end
end

def buildMaxHeap(h)
  (h / 2).downto(1) do |i|
    maxHeapify(i)
  end
end

def main
  $h = gets.to_i
  $nodes = gets.split.map(&:to_i)
  buildMaxHeap($h)
  puts ' ' + $nodes.join(' ')
end

main
