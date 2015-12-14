# Part 1:
# Santa needs help figuring out which strings in his text file are naughty or
# nice.
#
# A nice string is one with all of the following properties:
#
# - It contains at least three vowels (aeiou only), like aei, xazegov, or
#   aeiouaeiouaeiou.
# - It contains at least one letter that appears twice in a row, like xx, abcdde
#   (dd), or aabbccdd (aa, bb, cc, or dd).
# - It does not contain the strings ab, cd, pq, or xy, even if they are part of
#   one of the other requirements.
#
# How many strings are nice?
#
nice_count = 0

STDIN.each_line do |l|
  prev = ''
  vowel_count = 0
  has_repetition = false
  has_evil_string = false

  l.each_char do |c|
    if ['a','e','i','o','u'].include? c
      vowel_count += 1
    end

    if prev == c
      has_repetition = true
    end

    if ['ab', 'cd', 'pq', 'xy'].include? prev + c
      has_evil_string = true 
    end

    prev = c
  end

  if has_repetition && !has_evil_string && vowel_count >= 3
    nice_count += 1
  end
end

puts "#{nice_count} strings are nice."
