require ('rspec')
require ('coin_combinations.rb')

describe('Fixnum#coin_combinations') do

  it("returns the greatest number of quarters for a given amount") do
    expect("66".coin_combinations).to(include(2))
  end

  it("returns the greatest number of quarters and dimes for a given amount") do
    expect("66".coin_combinations).to(include(2, 1))
  end

  it("returns the greatest number of quarters and dimes and nickels for a given amount") do
    expect("45".coin_combinations).to(include(1, 2, 0))
  end

  it("returns the greatest amount of quarters and dimes and nickels and pennies") do
    expect("48".coin_combinations).to(include(1, 2, 0, 3))
  end
end
