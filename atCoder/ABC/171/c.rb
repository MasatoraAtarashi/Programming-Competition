alphabets = [*'a'..'z']
N = gets.to_i
answer = []
num = N
while num > 0 do
    answer.push(alphabets[(num - 1)  % 26])
    num = (num - 1) / 26
end
puts answer.reverse.join

