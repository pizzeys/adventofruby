# Part 2:
# The next year, to speed up the process, Santa creates a robot version of
# himself, Robo-Santa, to deliver presents with him.
#
# Santa and Robo-Santa start at the same location (delivering two presents to
# the same starting house), then take turns moving based on instructions from
# the elf, who is eggnoggedly reading from the same script as the previous
# year.
#
# This year, how many houses receive at least one present?

require 'set'

visits = Set.new
santa = {x: 0, y: 0}
robot = {x: 0, y: 0}
actor = santa

# Both visit the starting location before reading instructions
visits.add([0, 0])

STDIN.each_char do |c|
  case c
  when '^'
    actor[:y] -= 1
  when 'v'
    actor[:y] += 1
  when '<'
    actor[:x] -= 1
  when '>'
    actor[:x] += 1
  end

  visits.add([actor[:x], actor[:y]])
  actor = actor == santa ? actor = robot : actor = santa
end

puts "Santa and robot deliver at least one present to #{visits.size} houses."
