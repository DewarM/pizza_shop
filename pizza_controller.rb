require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( './models/pizza.rb')

# READ
get '/' do
  redirect to('/pizzas')
end

get '/pizzas' do
  @pizzas = Pizza.all()
  erb(:index)
end

get '/pizzas/new' do
  erb(:new)
end

get '/pizzas/:id' do
  id = params[:id]
  @pizza = Pizza.find(id)
  erb(:show)
end

post '/pizzas' do
  @pizza = Pizza.new(params)
  @pizza.save()
  erb(:create)
end

get '/pizzas/:id/edit' do
  @id = params[:id]
  @pizza = Pizza.find(@id)
  erb(:edit)
end

post '/pizzas/:id' do
  Pizza.new(params).update()
  erb(:update)
end

post '/pizzas/:id/delete' do
  pizza = Pizza.find(params[:id])
  pizza.delete()
  erb(:destroy)
end
