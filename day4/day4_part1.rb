# Part 1:
# Santa needs help mining some AdventCoins (very similar to bitcoins) to use as
# gifts for all the economically forward-thinking little girls and boys.
#
# To do this, he needs to find MD5 hashes which, in hexadecimal, start with at
# least five zeroes. The input to the MD5 hash is some secret key (your puzzle
# input, given below) followed by a number in decimal. To mine AdventCoins, you
# must find Santa the lowest positive number (no leading zeroes: 1, 2, 3, ...)
# that produces such a hash.

require 'digest'

key = STDIN.read
solution = (0..Float::INFINITY).each do |i|
  break i if Digest::MD5.hexdigest(key.chomp + i.to_s)[0...5] == '00000'
end

puts "Santa's solution is: #{solution}"
