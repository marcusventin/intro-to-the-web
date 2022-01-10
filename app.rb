require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  "Hello"
end

get '/secret' do
  "It's a secret"
end

get '/cat' do
  @cat_name = ["Angry", "Misty", "Almond", "Cheesecake"].sample
  erb(:index)
end