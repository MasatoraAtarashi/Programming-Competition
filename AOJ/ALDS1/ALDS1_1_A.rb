def main(input = STDIN)
    n = input.gets.to_i
    a = input.gets.split.map(&:to_i)
    n.times do |i|
      v = a[i]
      (i - 1).step(0, -1) do |j|
        if v < a[j]
          a[j + 1] = a[j]
        else
          break
        end
        a[j] = v
      end
      puts a.join(" ")
    end
end
main
