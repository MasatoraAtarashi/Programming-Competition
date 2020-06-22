# 標準入力から値を取得してinput_lineに入れる
input_line = gets
# 取得した値を標準出力するために"XXXXXX"をどう書き換える？
candidate, voter, count = input_line.split()
voter_by_candidate = Array.new(candidate.to_i + 1, 0)
voter_by_candidate[-1] = voter.to_i
for i in 1..count.to_i do
  input_num = gets.to_i
  voter_by_candidate.each_with_index do |x, i|
    unless x.zero?
      voter_by_candidate[i] -= 1
      voter_by_candidate[input_num - 1] += 1
    end
  end
end
voter_by_candidate.pop
for i in voter_by_candidate.max.then{ |max| voter_by_candidate.each_index.select{|ix| max==voter_by_candidate[ix]}}
  puts i + 1
end
