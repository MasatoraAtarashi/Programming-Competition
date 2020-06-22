n, q = gets.split.map(&:to_i)
names, times = [], []
pt = 0
n.times do
  name, time = gets.split(' ')
  names.push(name)
  times.push(time.to_i)
end
while !names.empty?
  pt += [times[0], q].min
  times[0] = times[0] - q
  if times[0] <= 0
    puts "#{names[0]} #{pt}"
  else
    names.push(names[0])
    times.push(times[0])
  end
  names.delete_at(0)
  times.delete_at(0)
end
