def main(input = STDIN)
    n = input.gets.to_i
    a = input.gets.split.map(&:to_i)
    (n - 1).times do |i|
      v = a[i + 1]
      i.step(0, -1) do |j|
        if v < a[j]
          a[j + 1] = a[j]
        else
          break
        end
        a[j] = v
      end
    end
    puts a
end
main
