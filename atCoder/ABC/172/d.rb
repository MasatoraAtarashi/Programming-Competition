require 'prime'

N = gets.to_i
answer = 0
1.upto(N) do |n|
    prime_factors = n.prime_division
    dividors_num = 1
    prime_factors.map{|prime_factor| dividors_num *= (prime_factor[1] + 1) }
    answer += dividors_num * n
end
print answers