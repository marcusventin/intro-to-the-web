require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  "Hello"
end

get '/secret' do
  "It's a secret"
end

get '/cat' do
  "<div style='border: 5px dashed red'>
  <img src='https://m.media-amazon.com/images/I/51KNy3fAsgL._AC_.jpg'>
  </div>"
end