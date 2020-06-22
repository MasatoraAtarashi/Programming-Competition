class Node
  attr_accessor :id, :parent, :left, :right, :sibling, :degree, :height

  def initialize()
    @parent = -1
    @sibling = -1
  end

  def set_info(id, left, right)
    @id = id
    @left = left
    @right = right
    @degree = [@left, @right].select {|c| c != -1}.count
  end

  def set_parent(parent_id)
    @parent = parent_id
  end

  def set_sibling(sibling)
    @sibling = sibling
  end

  def type?
    if @parent == -1
      return 'root'
    elsif @left == -1 && @right == -1
      return 'leaf'
    else
      return 'internal node'
    end
  end

end

n = gets.to_i
$nodes = Array.new(n).map{ Node.new() }
$depth = Array.new(n)
$height = Array.new(n, 0)
n.times do
  id, left, right = gets.split.map(&:to_i)
  $nodes[id].set_info(id, left, right)
  if left != -1
    $nodes[left].set_parent(id)
    $nodes[left].set_sibling(right)
  end
  if right != -1
    $nodes[right].set_parent(id)
    $nodes[right].set_sibling(left)
  end
end

def setDepth(u, d)
  $depth[u] = d

  if $nodes[u].right != -1
    setDepth($nodes[u].right, d + 1)
  end

  if $nodes[u].left != -1
    setDepth($nodes[u].left, d + 1)
  end
end

def setHeight(u)
  h1, h2 = 0, 0
  if $nodes[u].right != -1
    h1 = setHeight($nodes[u].right) + 1
  end

  if $nodes[u].left != -1
    h2 = setHeight($nodes[u].left) + 1
  end
  $height[u] = [h1, h2].max
  return [h1, h2].max
end

c = 0
while $depth.include?(nil)
  setDepth(c, 0)
  c += 1
end
setHeight(c - 1)

$nodes.each do |e|
  puts "node #{e.id}: parent = #{e.parent}, sibling = #{e.sibling}, degree = #{e.degree}, depth = #{$depth[e.id]}, height = #{$height[e.id]}, #{e.type?}"
end
