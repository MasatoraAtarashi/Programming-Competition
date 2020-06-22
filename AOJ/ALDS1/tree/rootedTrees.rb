class Node
  attr_accessor :id, :k, :children, :parent, :left, :right

  def set_info(id, k, children)
    @id = id
    @k = k
    @children = children
    if @parent.nil?
      @parent = -1
      @depth = 0
    end
  end

  def set_parent(parent_id)
    @parent = parent_id
  end

  def type?
    if @parent == -1
      return 'root'
    elsif @children.empty?
      return 'leaf'
    else
      return 'internal node'
    end
  end

  def set_right(right)
    @right = right
  end

  def set_left(left)
    @left = left
  end
end

n = gets.to_i
$nodes = Array.new(n).map{ Node.new() }
$depth = Array.new(n)

n.times do |num|
  input = gets.split.map(&:to_i)
  id, k, children = input[0], input[1], input[2...input.length]
  $nodes[id].set_info(id, k, children)
  $nodes[id].set_left(children[0])
  $nodes[id].children.each_with_index do |c, i|
    $nodes[c].set_right($nodes[id].children[1..-1]) if i == 0
    $nodes[c].set_parent($nodes[id].id)
  end
end

def setDepth(u, p)
  $depth[u] = p
  if $nodes[u].right != nil
    $nodes[u].right.each do |r|
      setDepth(r, p)
    end
  end
  if $nodes[u].left != nil
    setDepth($nodes[u].left, p + 1)
  end
end

c = 0
while $depth.include?(nil)
  setDepth(c, 0)
  c += 1
end

$nodes.each do |e|
  puts "node #{e.id}: parent = #{e.parent}, depth = #{$depth[e.id]}, #{e.type?}, #{e.children}"
end
