# H, W = gets.split.map(&:to_i)
# board = []
# H.times do
#   board.push(gets.split)
# end
# puts board

def check_max_white(h,w,board)
  max_row = 0
  max_white = 0
  h.times do |i|
    if board[i].count(".") > max_white
      max_white = board[i].count(".")
      max_row = i
    end
  end
  max_column = 0
  w.times do |i|
    if board.transpose[i].count(".") > max_white
      max_white = board.transpose[i].count(".")
      max_column = i
    end
  end
  return max_row, max_column
end

def separate_board(max_row, max_column, board, h, w)
  before_board = []
  board[0..max_row].each {|b| before_board.push(b[0..max_column])}
  after_board = []
  board[max_row..(h-1)].each {|b| after_board.push(b[max_column..(w-1)])}
  return before_board, after_board
end

def main(h=3,w=3,board=[[".","#","#"], [".","#","."], ["#","#","."]], countnum = 0)
  count = 0
  count += solve(h,w,board)
  puts count
end

def solve(h=3,w=3,board=[[".","#","#"], [".","#","."], ["#","#","."]], countnum = 0)
  count = countnum
  if board[0][0] = '#'
    board[0][0] = '.'
    count += 1
  end
  max_row, max_column = check_max_white(h,w,board)
  before_board, after_board = separate_board(max_row, max_column, board,h,w)
  p before_board
  p after_board
  if before_board.length <= 2 && before_board.first.length <= 2
    puts "unko"
    if before_board[-1][-1] == '#'
      before_board[-1][-1] = '.'
      count += 1
      puts "unko"
    end
    unless before_board.first.last == '.' || before_board.last.first == '.'
      count += 1
    end
  else
    puts "baka"
    gets
    solve(before_board.length,before_board.first.length,before_board,count)
  end
  if after_board.length <= 2 && after_board.first.length <= 2
    puts "manko"
    if after_board[-1][-1] == '#'
      after_board[-1][-1] = '.'
      count += 1
    end
    unless after_board.first.last == '.' || after_board.last.first == '.'
      count += 1
    end
  else
    puts "ero"
    gets
    solve(after_board.length,after_board.first.length,after_board, count)
  end
  # p max_row
  # p max_column
  # p before_board
  # p after_board

  # a, b, count = 0, 0, 0
  # (0..max_row).each do |i|
  #   if board[a][b] == '#'
  #     board[a][b] = '.'
  #     count += 1
  #   else
  #
  #   end
  # end
  return count
end

# main(2,2, board = [['#','.'], ['.', '#']])
main()
