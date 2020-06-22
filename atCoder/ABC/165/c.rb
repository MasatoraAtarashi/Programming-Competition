N, M, Q = gets.split.map(&:to_i)
ins = []
Q.times do
  ins.append(gets.split.map(&:to_i))
end

A = Array.new(10 ** 4 / 2) { Array.new }

count = 0
1.upto(M) do |a|
  1.upto(M) do |b|
    if b < a
      next
    end
    1.upto(M) do |c|
      if 3 > N
        A[count][0] = a
        A[count][1] = b
        count += 1
        break
      else
        if c < b
          next
        end
        A[count][0] = a
        A[count][1] = b
        A[count][2] = c
        count += 1
      end
      1.upto(M) do |d|
        if 4 > N
          break
        else
          if d < c
            next
          end
          A[count][0] = a
          A[count][1] = b
          A[count][2] = c
          A[count][3] = d
          count += 1
        end
        1.upto(M) do |e|
          if 5 > N
            break
          else
            if e < d
              next
            end
            A[count][0] = a
            A[count][1] = b
            A[count][2] = c
            A[count][3] = d
            A[count][4] = e
            count += 1
          end
          1.upto(M) do |f|
            if 6 > N
              break
            else
              if f < e
                next
              end
              A[count][0] = a
              A[count][1] = b
              A[count][2] = c
              A[count][3] = d
              A[count][4] = e
              A[count][5] = f
              count += 1
            end
            1.upto(M) do |g|
              if 7 > N
                break
              else
                if g < f
                  next
                end
                A[count][0] = a
                A[count][1] = b
                A[count][2] = c
                A[count][3] = d
                A[count][4] = e
                A[count][5] = f
                A[count][6] = g
                count += 1
              end
              1.upto(M) do |h|
                if 8 > N
                  break
                else
                  if h < g
                    next
                  end
                  A[count][0] = a
                  A[count][1] = b
                  A[count][2] = c
                  A[count][3] = d
                  A[count][4] = e
                  A[count][5] = f
                  A[count][6] = g
                  A[count][7] = h
                  count += 1
                end
                1.upto(M) do |i|
                  if 9 > N
                    break
                  else
                    if i < h
                      next
                    end
                    A[count][0] = a
                    A[count][1] = b
                    A[count][2] = c
                    A[count][3] = d
                    A[count][4] = e
                    A[count][5] = f
                    A[count][6] = g
                    A[count][7] = h
                    A[count][8] = i
                    count += 1
                  end
                  1.upto(M) do |j|
                    if 10 > N
                      break
                    else
                      if j < i
                        next
                      end
                      A[count][0] = a
                      A[count][1] = b
                      A[count][2] = c
                      A[count][3] = d
                      A[count][4] = e
                      A[count][5] = f
                      A[count][6] = g
                      A[count][7] = h
                      A[count][8] = i
                      A[count][9] = j
                      count += 1
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end

A.each do |a|
  p A
end
