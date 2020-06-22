def fizz_buzz(num)
  num = num.to_i
  if (num % 15).zero?
    'FizzBuzz'
  elsif (num % 5).zero?
    'Buzz'
  elsif (num % 3).zero?
    'Fizz'
  else
    num.to_s
  end
end

puts fizz_buzz(15)
puts fizz_buzz(10)
puts fizz_buzz(9)
puts fizz_buzz(7)

require 'minitest/autorun'

class SampleTest < Minitest::Test
  def test
    assert_equal '1', fizz_buzz(1)
  end
end
