def sort(array)
    left = []
    right = []
    if array.length < 1
        return array
    end

    axis = array.sample
    axis_count = 0
    array.map do |a|
        if a < axis
            left.push(a)
        elsif
            right.push(a)
        else
            axis_count += 1
        end
    end
    
    left = sort(left)
    right = sort(right)
    return left + [axis] * axis_count + right
end