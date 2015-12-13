# Santa is trying to deliver presents in a large apartment building, but he
# can't find the right floor - the directions he got are a little confusing. He
# starts on the ground floor (floor 0) and then follows the instructions one
# character at a time.
#
# An opening parenthesis, (, means he should go up one floor, and a closing
# parenthesis, ), means he should go down one floor.
#
# The apartment building is very tall, and the basement is very deep; he will
# never find the top or bottom floors.
#
# To what floor do the instructions take Santa?

current_floor = 0
first_enters_basement = nil

STDIN.each_char.with_index do |c, i|
  case c
  when '('
    current_floor += 1
  when ')'
    current_floor -= 1
  end

  first_enters_basement ||= i + 1 if current_floor == -1
end

puts "Instructions take Santa to floor: #{current_floor}."
puts "First entered basement on floor: #{first_enters_basement}"
