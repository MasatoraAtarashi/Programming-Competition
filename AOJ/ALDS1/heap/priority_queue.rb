$nodes = []

def insert(k)
  $nodes.push(k)
  heapIncreaseKey($nodes.length)
end

def heapIncreaseKey(idx)
  parent = idx / 2
  if parent.positive? && $nodes[parent - 1] < $nodes[idx - 1]
    $nodes[parent - 1], $nodes[idx - 1] = $nodes[idx - 1], $nodes[parent - 1]
    heapIncreaseKey(parent)
  end
end

def maxHeapify(i)
  left = i * 2
  right = i * 2 + 1
  max = i
  max = left if left <= $nodes.length && $nodes[max - 1] < $nodes[left - 1]
  max = right if right <= $nodes.length && $nodes[max - 1] < $nodes[right - 1]

  if max != i
    $nodes[i - 1], $nodes[max - 1] = $nodes[max - 1], $nodes[i - 1]
    maxHeapify(max)
  end
end

def extractMax()
  max = $nodes[0]
  $nodes[0], $nodes[-1] = $nodes[-1], $nodes[0]
  $nodes.pop
  maxHeapify(1)
  return max
end

def main
  while !(ins = gets.split)[0].eql?('end')
    if ins[0] == 'insert'
      insert(ins[1].to_i)
    else
      puts extractMax()
    end
  end
end

main
