# Part 1:
# Santa is delivering presents to an infinite two-dimensional grid of houses.
#
# He begins by delivering a present to the house at his starting location, and
# then an elf at the North Pole calls him via radio and tells him where to move
# next. Moves are always exactly one house to the north (^), south (v), east
# (>), or west (<). After each move, he delivers another present to the house
# at his new location.
#
# However, the elf back at the north pole has had a little too much eggnog, and
# so his directions are a little off, and Santa ends up visiting some houses
# more than once. How many houses receive at least one present?

require 'set'

visits = Set.new
x = 0
y = 0

# Santa visits the starting location before reading instructions
visits.add([x,y])

STDIN.each_char do |c|
  case c
  when '^'
    y -= 1
  when 'v'
    y += 1
  when '<'
    x -= 1
  when '>'
    x += 1
  end

  visits.add([x,y])
end

puts "Santa delivers at least one present to #{visits.size} houses."
