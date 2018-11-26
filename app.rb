require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/project')
require('pry')

get("/") do
  erb(:input)
end

get ("/output") do
  @height = params.fetch("height")
  @width = params.fetch("width")
  @length = params.fetch("length")
  @weight = params.fetch("weight")

  parcel = Parcel.new(@height, @width, @length, @weight)

  @cost = parcel.cost_to_ship
  erb(:output)
end
