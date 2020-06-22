x, y, z = gets.split.map(&:to_i)
total_salary = 0
N = gets.to_i
(1..N).each do
  S, T = gets.split.map(&:to_i)
  if S < 9
    if T < 9
      salary = z * (T - S)
    elsif T < 17
      salary = z * (9 - S)
      salary += x * (T - 9)
    elsif T < 22
      salary = z * (9 - S)
      salary += x * (17 - 9)
      salary += y * (T - 17)
    else
      salary = z * (9 - S)
      salary += x * (17 - 9)
      salary += y * (22 - 17)
      salary += z * (T - 22)
    end
  elsif S < 17
    if T < 22
      salary = x * (17 - S)
      salary += y * (T - 17)
    else
      salary = x * (17 - S)
      salary += y * (22 - 17)
      salary += z * (T - 22)
    end
  elsif S < 22
    if T < 22
      salary = y * (T - S)
    else
      salary = y * (22 - S)
      salary += z * (T - 22)
    end
  else
    salary = z * (T - S)
  end
  total_salary += salary
end
puts total_salary
