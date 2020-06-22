# class Dict
#
#   def initialize
#     @dict = Hash.new
#     @M = 146527
#   end
#
#   def insert(str)
#     key = getIntFromStr(str)
#     i = 0
#     while @dict[key(key, i)]
#       i += 1
#     end
#     @dict[key(key, i)] = str
#   end
#
#   def find(str)
#     key = getIntFromStr(str)
#     i = 0
#     while @dict[key(key, i)]
#       if @dict[key(key, i)] == str
#         return true
#       else
#       end
#       i += 1
#     end
#     return false
#   end
#
#   def getIntFromStr(str)
#     arr = Marshal.load(Marshal.dump(str)).split(//)
#     result = '0'
#     arr.map do |a|
#       case a
#       when 'A'
#         result += '1'
#       when 'C'
#         result += '2'
#       when 'G'
#         result += '3'
#       when 'T'
#         result += '4'
#       end
#     end
#     return result.to_i
#   end
#
#   def key(key, i)
#     return k1(key) + i * k2(key)
#   end
#
#   def k1(k)
#     return k % @M
#   end
#
#   def k2(k)
#     return 1 + (k % (@M - 1))
#   end
# end
#
# dict = Dict.new
# N = gets.to_i
# N.times do
#   inst, str = gets.chomp.split
#   if inst == 'insert'
#     dict.insert(str)
#   else
#     dict.find(str) ? puts('yes') : puts('no')
#   end
# end

# hashの計算をしてるとTLEになっちゃうのでとりあえずこれで解いた。
# 問題の趣旨とはずれている。
N = gets.to_i
dict = Hash.new
N.times do
  inst, str = gets.chomp.split
  if inst == 'insert'
    dict[str] = true
  else
    dict[str] ? puts('yes') : puts('no')
  end
end
