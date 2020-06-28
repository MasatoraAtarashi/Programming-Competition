K = gets.split.map(&:to_i)
k = K[2]
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
count = 0
while k >= 0 do
    min = 0
    if a.length == 0 && b.length == 0
        break
    elsif a.length == 0
        min = b.first
        b = b.drop(1)
    elsif b.length == 0
        min = a.first
        a = a.drop(1) 
    else
        if a.first <= b.first
            if (b.first + b[1]) <= a.first
                min = b.first
                b = b.drop(1)
            else
                min = a.first
                a = a.drop(1)
            end
        else
            if (a.first + a[1]) <= b.first
                min = a.first
                a = a.drop(1) 
            else
                min = b.first
                b = b.drop(1)
            end
        end
    end
    p min
    if (k - min) >= 0
        k -= min
        count += 1
    else
        break
    end
end
puts count
