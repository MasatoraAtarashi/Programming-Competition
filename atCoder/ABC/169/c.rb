require 'bigdecimal'
a, b = gets.split.map(&:to_s)
puts((BigDecimal(a) * BigDecimal(b)).floor)