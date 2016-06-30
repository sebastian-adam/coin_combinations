require('sinatra')
require('sinatra/reloader')
require('./lib/coin_combinations')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/results') do
  # @quarters = params.fetch('number').quarters
  @results = params.fetch('number').coin_combinations
  erb(:results)
end
