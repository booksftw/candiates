# This is the main entrypoint into the program
# It requires the other files/gems that it needs


require 'pry'
require './candidates'
require './filters'

## Your test code can go here

# binding.pry

# puts experienced? (@candidates[0])
# puts find @candidates[0][:id]

# pp qualified_candidates (@candidates)

pp ordered_by_qualifications(@candidates)

