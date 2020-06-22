$p = []

def main
  n = gets.to_i
  $m = Array.new(n) { Array.new(n).map{ 0 }}
  n.times do |i|
    $p[i], $p[i + 1] = gets.split.map(&:to_i)
  end
  2.upto(n) do |l|
    1.upto(n - l + 1) do |i|
      j = i + l - 1
      $m[i - 1][j - 1] = 1.0 / 0.0
      i.upto(j - 1) do |k|
        $m[i - 1][j - 1] = [$m[i - 1][j - 1], $m[i - 1][k - 1] + $m[k][j - 1] + $p[i - 2] * $p[k - 1] * $p[j - 1]].min
      end
    end
  end
  p $m[0][n - 1]
end

main
