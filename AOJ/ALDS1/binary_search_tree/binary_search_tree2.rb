class Node
  attr_accessor :id, :key, :parent, :left, :right

  def set_info(id, key)
    @id = id
    @key = key
  end

  def set_parent(parent)
    @parent = parent
  end

  def set_left(left)
    @left = left
  end

  def set_right(right)
    @right = right
  end
end

class Tree
  attr_accessor :nodes, :root, :result

  def initialize(n)
    @nodes = Array.new(n).map{ Node.new() }
    @result = []
  end

  def insert(id, key)
    z = @nodes[id]
    z.set_info(id, key)
    y = nil
    x = @root

    while !x.nil?
      y = x
      if z.key < x.key
        x = x.left
      else
        x = x.right
      end
    end

    if y.nil?
      @root = z
    elsif z.key < y.key
      y.left = z
      z.parent = y
    else
      y.right = z
      z.parent = y
    end
  end

  def find(x, k)
    while !x.nil? && x.key != k
      if k < x.key
        x = x.left
      else
        x = x.right
      end
    end
    return x
  end

  def delete(k)
    x = find(@root, k)
    y = x.parent
    # x is leaf
    if x.left.nil? && x.right.nil?
      if y.left == x
        y.left = nil
      else
        y.right = nil
      end
      x.parent, x.key, x.left, x.right = nil, nil, nil, nil
    # x has right
    elsif x.left.nil?
      if y.left == x
        y.left = x.right
      else
        y.right = x.right
      end
      x.right.parent = y
      x.parent, x.key, x.left, x.right = nil, nil, nil, nil
    # x has left
    elsif x.right.nil?
      if y.left == x
        y.left = x.left
      else
        y.right = x.left
      end
      x.left.parent = y
      x.parent, x.key, x.left, x.right = nil, nil, nil, nil
    # x has left and right
    else
      min_node = find_succesor(x)
      if y.left == x
        y.left = min_node
      else
        y.right = min_node
      end
      x.left.set_parent(min_node) unless x.left.nil?
      x.right.set_parent(min_node) unless x.right.nil?
      min_node.parent.set_left(min_node.right)
      min_node.set_parent(y)
      min_node.right = x.right if min_node != x.right
      min_node.left = x.left if min_node != x.left
      x.parent, x.key, x.left, x.right = nil, nil, nil, nil
    end
  end

  def find_succesor(x)
    if !x.right.nil?
      return get_min(x.right)
    end
    y = x.parent
    while !y.nil? && y.right == x
      x = y
      y = y.parent
    end
    return y
  end

  def get_min(x)
    while !x.left.nil?
      x = x.left
    end
    return x
  end

  def Preorder(u)
    @result.push(@nodes[u].key)
    Preorder(@nodes[u].left.id) unless @nodes[u].left.nil?
    Preorder(@nodes[u].right.id) unless @nodes[u].right.nil?
  end

  def Inorder(u)
    Inorder(@nodes[u].left.id) unless @nodes[u].left.nil?
    @result.push(@nodes[u].key)
    Inorder(@nodes[u].right.id) unless @nodes[u].right.nil?
  end

  def clean_result
    @result = []
  end

end

def main
  n = gets.to_i
  tree = Tree.new(n)

  n.times do |num|
    ins, key = gets.chomp.split
    if ins == 'insert'
      tree.insert(num, key.to_i)
    elsif ins == 'find'
      tree.find(tree.root, key.to_i) ? puts('yes') : puts('no')
    elsif ins == 'delete'
      tree.delete(key.to_i)
    else
      tree.Inorder(tree.root.id)
      puts ' ' + tree.result.join(' ')
      tree.clean_result
      tree.Preorder(tree.root.id)
      puts ' ' + tree.result.join(' ')
      tree.clean_result
    end
  end
end

main
