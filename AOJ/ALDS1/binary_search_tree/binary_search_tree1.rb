class Node
  attr_accessor :id, :key, :parent, :left, :right

  def set_info(id, key)
    @id = id
    @key = key
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
