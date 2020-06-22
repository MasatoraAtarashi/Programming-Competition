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

$result = []
def Preorder(u)
  $result.push(u)
  Preorder($nodes[u].left) if $nodes[u].left != -1
  Preorder($nodes[u].right) if $nodes[u].right != -1
end

def Inorder(u)
  Inorder($nodes[u].left) if $nodes[u].left != -1
  $result.push(u)
  Inorder($nodes[u].right) if $nodes[u].right != -1
end

def Postorder(u)
  Postorder($nodes[u].left) if $nodes[u].left != -1
  Postorder($nodes[u].right) if $nodes[u].right != -1
  $result.push(u)
end

def get_root
  $nodes.each do |n|
    return n.id if n.type? == 'root'
  end
end

root = get_root

puts "Preorder"
Preorder(root)
puts ' ' + $result.join(' ')

$result = []
puts "Inorder"
Inorder(root)
puts ' ' + $result.join(' ')

$result = []
puts "Postorder"
Postorder(root)
puts ' ' + $result.join(' ')
