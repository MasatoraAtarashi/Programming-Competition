k = gets.to_i
runrun = [*(1..12)]

# count = 0
# num = 0
# while count < k
#   nums = (num + 1).to_s.split('').map(&:to_i)
#   flag = true
#   (nums.length - 1).times do |n|
#     if (nums[n] - nums[n+1]).abs > 1
#       flag = false
#       break
#     end
#   end
#   flag ? num += 1 : num += 8
#   count += 1 if flag
# end
# puts num
count = 0
catch(:break_loop) do
  for a in (0..9)
    for b in ([(a-1), 0].max)..([(a+1),9].min)
      for c in ([(b-1), 0].max)..([(b+1),9].min)
        for d in ([(c-1), 0].max)..([(c+1),9].min)
          for e in ([(d-1), 0].max)..([(d+1),9].min)
            for f in ([(e-1), 0].max)..([(e+1),9].min)
              for g in ([(f-1), 0].max)..([(f+1),9].min)
                for h in ([(g-1), 0].max)..([(g+1),9].min)
                  for i in ([(h-1), 0].max)..([(h+1),9].min)
                    for j in ([(i-1), 0].max)..([(i+1),9].min)
                      for l in ([(j-1), 0].max)..([(j+1),9].min)
                        count += 1
                        puts "#{a}#{b}#{c}#{d}#{e}#{f}#{g}#{h}#{i}#{j}#{l}"
                        if count == k
                          throw :break_loop
                          # puts "#{a}#{b}#{c}#{d}#{e}#{f}#{g}#{h}#{i}#{j}#{l}"
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
  end
end
