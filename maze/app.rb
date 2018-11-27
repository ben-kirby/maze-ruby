require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/maze')
require('pry')

get("/") do
  erb(:input)
end
