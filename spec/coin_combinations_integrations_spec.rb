require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the coin combination path', {:type => :feature}) do

  it('takes a number from the user and returns the least number of quarters') do
    visit('/')
    fill_in('number', :with => '48')
    click_button('Submit')
    expect(page).to have_content('quarters: 1')
  end

  it('takes a number from the user and returns the least number of quarters, dimes, nickels and pennies') do
    visit('/')
    fill_in('number', :with => '48')
    click_button('Submit')
    expect(page).to have_content('quarters: 1')
    expect(page).to have_content('dimes: 2')
    expect(page).to have_content('nickels: 0')
    expect(page).to have_content('pennies: 3')

  end


end
