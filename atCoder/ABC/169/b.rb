gets.to_i
num = gets.split.map(&:to_i)
if num.include?(0)
    puts(0)
else
    ans = 1
    flag = true
    num.map do |n|
        ans *= n
        if ans > (10 ** 18)
            flag = false
            break
        end
    end
    flag ? puts(ans) : puts(-1)
end