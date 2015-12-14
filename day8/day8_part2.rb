# Now, let's go the other way. In addition to finding the number of characters
# of code, you should now encode each code representation as a new string and
# find the number of characters of the new encoded representation, including
# the surrounding double quotes.

total = 0
STDIN.each_line { |l| l.chomp!; total += l.inspect.size - l.size }

puts "Number of characters: #{total}"
