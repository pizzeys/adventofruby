# Space on the sleigh is limited this year, and so Santa will be bringing his
# list as a digital copy. He needs to know how much space it will take up when
# stored.
#
# It is common in many programming languages to provide a way to escape special
# characters in strings. For example, C, JavaScript, Perl, Python, and even PHP
# handle special characters in very similar ways.
#
# However, it is important to realize the difference between the number of
# characters in the code representation of the string literal and the number of
# characters in the in-memory string itself.
#
# Disregarding the whitespace in the file, what is the number of characters of
# code for string literals minus the number of characters in memory for the
# values of the strings in total for the entire file?

total = 0
STDIN.each_line { |l| l.chomp!; total += l.size - eval(l).size }

puts "Number of characters: #{total}"
