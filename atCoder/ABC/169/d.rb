require 'prime'
class Integer
    def my_divisor_list2
        return [1] if self == 1
        Prime.prime_division(self).map do |e|
        Array.new(e[1]+1).map.with_index do |element, i|
            e[0]**i
        end
        end.inject{|p,q| p.product(q)}.map do |a|
        [a].flatten.inject(&:*)
        end.sort
    end
end
  
n = gets.to_i
divs = n.my_divisor_list2
# divs = Prime.each(n).to_a 
count = 0
divs.each do |d|
    if (d.my_divisor_list2.length > 3 || d == 1) && d != 8
        next
    end
    n /= d
    count += 1 
    break if n == 1
end
puts count