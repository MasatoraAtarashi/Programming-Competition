$F = []
def make_fibonachi(n)
  $F[0] = 1
  $F[1] = 1
  2.upto(n) do |i|
    $F[i] = $F[i - 1] + $F[i - 2]
  end
end

def main
  n = gets.to_i
  make_fibonachi(n)
  puts $F[-1]
end

main
