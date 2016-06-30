require ('rspec')
require ('coin_combinations.rb')

describe('Fixnum#coin_combinations') do

  it("returns the greatest number of quarters for a given amount") do
    expect(66.coin_combinations).to(eq([2, 16]))
  end

end
