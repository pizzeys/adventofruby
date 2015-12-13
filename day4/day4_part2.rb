# Part 2:
# Now find one that starts with six zeroes.

require 'digest'

key = STDIN.read
solution = (0..Float::INFINITY).each do |i|
  break i if Digest::MD5.hexdigest(key.chomp + i.to_s)[0...6] == '000000'
end

puts "Santa's solution is: #{solution}"
