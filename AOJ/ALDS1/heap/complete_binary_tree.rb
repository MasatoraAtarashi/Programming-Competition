H = gets.to_i
nodes = gets.split.map(&:to_i)
nodes.each_with_index do |n, i|
  parent_key = ''
  left_key = ''
  right_key = ''
  if ((i + 1) / 2).positive?
    parent_key += 'parent key = ' + nodes[(i + 1) / 2 - 1].to_s + ', '
  end
  if (i + 1) * 2 <= nodes.length
    left_key += 'left key = ' + nodes[(i + 1) * 2 - 1].to_s + ', '
  end
  if (i + 1) * 2 + 1 <= nodes.length
    right_key += 'right key = ' + nodes[(i + 1) * 2].to_s + ', '
  end
  puts "node #{i + 1}: key = #{n}, #{parent_key}#{left_key}#{right_key}"
end
