S = gets.chomp
# arr = Array.new(S.length) { Array.new S.length }
count = 0
3.upto(S.length) do |m|
  0.upto(S.length - m - 1) do |n|
    # arr[m][n] = S[]
    # puts S[n..n+m].to_i
    count += 1 if S[n..n+m].to_i % 2019 == 0
  end
end
p 1817181712114 / 2019
# puts count
# # class Array
# #   def subset?(other)
# #     return (self - other).empty?
# #   end
# #   def superset?(other)
# #     return other.subset?(self)
# #   end
# # end
# #
# # i = 1
# # while 2019 * i <= S.to_i
# #   count += 1 if ((2019 * i).to_s.split(//)).subset? S.split(//)
# #   i += 1
# # end
# 1.upto(200) do |i|
#   p (2019 * i).to_s.split(//)[-4..-1].join.to_i
# end
# puts count
