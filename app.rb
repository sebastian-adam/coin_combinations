require('sinatra')
require('sinatra/reloader')
require('./lib/coin_combinations')

get('/') do
  erb(:index)
end

get('/results_form') do
  # @quarters = params.fetch('number').quarters
  @results = params.fetch('number').coin_combinations
  erb(:results)
end
