x, n = gets.split.map(&:to_i)
N = gets.split.map(&:to_i)
flag = true
count = 0
answer = x
while flag do
    x_down = x - count
    x_up = x + count
    if !N.include?(x_down)
        answer = x_down
        flag = false
    elsif !N.include?(x_up)
        answer = x_up
        flag = false
    end
    count += 1
end
puts answer