# 標準入力から値を取得してinput_lineに入れる
input_line = gets
input_num = gets
input_line.slice!(input_num.to_i - 1)
# 取得した値を標準出力するために"XXXXXX"をどう書き換える？
puts input_line
