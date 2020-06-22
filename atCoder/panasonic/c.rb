# require 'bigdecimal'
# require 'bigdecimal/util'
# a, b, c = gets.split.map(&:to_i)
# (BigDecimal(Math.sqrt(a).to_s) + BigDecimal(Math.sqrt(b).to_s)) < BigDecimal(Math.sqrt(c).to_s) ? puts("Yes") : puts("No")
# puts Math.sqrt(a).to_s.to_d
# puts Math.sqrt(a.to_d).to_s.to_d + Math.sqrt(b.to_d).to_s.to_d
# def mysqrt(x)
#   return 0 if x==0
#   m=x
#   p=x
#   loop do
#     r=(m+p/m)/2
#     return m if m<=r
#     m=r
#   end
# end
# a, b, c = gets.split.map(&:to_i)
# (mysqrt(a) + mysqrt(b)) < mysqrt(c) ? puts("Yes") : puts("No")
require 'bigdecimal'
a, b, c = gets.split.map(&:to_i)
(BigDecimal(a).sqrt(40) + BigDecimal(b).sqrt(40)) < BigDecimal(c).sqrt(40) ? puts("Yes") : puts("No")
