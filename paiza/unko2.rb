# 標準入力から値を取得してinput_lineに入れる
input_line = gets.upcase
# 取得した値を標準出力するために"XXXXXX"をどう書き換える？
output_line = ""
input_line.each_char do |c|
  case c
  when 'A'
    output_line += '4'
  when 'E'
    output_line += '3'
  when 'G'
    output_line += '6'
  when 'I'
    output_line += '1'
  when 'O'
    output_line += '0'
  when 'S'
    output_line += '5'
  when 'Z'
    output_line += '2'
  else
    output_line += c
  end
end

puts output_line
