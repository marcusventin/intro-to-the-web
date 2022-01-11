require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  "Hello"
end

get '/secret' do
  "It's a secret"
end

get '/random-cat' do
  @cat_name = ["Angry", "Misty", "Almond", "Cheesecake"].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @cat_name = params[:name]
  erb(:index)
end

get '/form' do
  erb(:form)
end

post '/named-cat' do
  p params
  @cat_name = params[:name]
  erb(:index)
end