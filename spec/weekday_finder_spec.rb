require('rspec')
require('weekday_finder')

describe('String#weekday') do
  # it("takes numerical date and returns the day of the year") do
  #   expect("01/07/2015".weekday()).to(eq("2015, 01, 07"))
  # end
  it("takes the date and returns the day of the week") do
    expect("01/07/2015".weekday()).to(eq("Wednesday"))
  end
end
