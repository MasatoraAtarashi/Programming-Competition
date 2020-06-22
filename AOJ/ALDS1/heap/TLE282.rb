$nodes = []
$node_position
$times

class Team
  attr_accessor :score

  def initialize()
    @score = 0
  end

end

def insert(d, x)
  team = $nodes[$node_position.index(d)]
  team.score += x
  heapIncreaseKey($nodes.length)
end

def heapIncreaseKey(idx)
  parent = idx / 2
  if parent.positive? && $nodes[parent - 1].score == $nodes[idx - 1].score && $node_position[parent - 1] > $node_position[idx - 1]
    $nodes[parent - 1], $nodes[idx - 1] = $nodes[idx - 1], $nodes[parent - 1]
    $node_position[parent - 1], $node_position[idx - 1] = $node_position[idx - 1], $node_position[parent - 1]
  elsif parent.positive? && $nodes[parent - 1].score < $nodes[idx - 1].score
    $nodes[parent - 1], $nodes[idx - 1] = $nodes[idx - 1], $nodes[parent - 1]
    $node_position[parent - 1], $node_position[idx - 1] = $node_position[idx - 1], $node_position[parent - 1]
    heapIncreaseKey(parent)
  end
end

def main
  n, r, l = gets.split.map(&:to_i)
  $times = Array.new(n, 0)
  $nodes = Array.new(n).map{ Team.new() }
  $node_position = (1..n).to_a
  r.times do |i|
    d, t, x = gets.split.map(&:to_i)
    $times[$node_position[0] - 1] += t
    insert(d, x)
    $times[$node_position[0] - 1] += l - x if i == r - 1
  end
  puts $times.index($times.max) + 1
end

main
