# Part 1:
# The elves are running low on wrapping paper, and so they need to submit an
# order for more. They have a list of the dimensions (length l, width w, and
# height h) of each present, and only want to order exactly as much as they
# need.
#
# Fortunately, every present is a box (a perfect right rectangular prism),
# which makes calculating the required wrapping paper for each gift a little
# easier: find the surface area of the box, which is 2*l*w + 2*w*h + 2*h*l. The
# elves also need a little extra paper for each present: the area of the
# smallest side.
#
# All numbers in the elves' list are in feet. How many total square feet of
# wrapping paper should they order?
#
# Part 2:
# The elves are also running low on ribbon. Ribbon is all the same width, so
# they only have to worry about the length they need to order, which they would
# again like to be exact.
#
# The ribbon required to wrap a present is the shortest distance around its
# sides, or the smallest perimeter of any one face. Each present also requires
# a bow made out of ribbon as well; the feet of ribbon required for the perfect
# bow is equal to the cubic feet of volume of the present. Don't ask how they
# tie the bow, though; they'll never tell.

paper_total  = 0
ribbon_total = 0

STDIN.each_line do |l|
  dims = l.split('x').map(&:to_i).sort
  paper_total += (2 * dims[0] * dims[1]) + (2 * dims[0] * dims[2]) \
               + (2 * dims[1] * dims[2]) + (dims[0] * dims[1])

  ribbon_total += (dims[0] * dims[1] * dims[2]) + (dims[0] * 2) + (dims[1] * 2)
end

puts "Elves should order #{paper_total} sq. ft. of paper and #{ribbon_total} of ribbon."
