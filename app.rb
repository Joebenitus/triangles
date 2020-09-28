require('sinatra')
require('sinatra/reloader')
require('./lib/triangles')
require('pry')
also_reload('lib/**/*.rb')

get('/') do
  erb(:layout)
end

get('/input') do
  erb(:input)
end

post('/result') do
  side1 = params[:side1]
  side2 = params[:side2]
  side3 = params[:side3]
  triangle = Triangles.new(side1, side2, side3)
  @type = triangle.type
end
