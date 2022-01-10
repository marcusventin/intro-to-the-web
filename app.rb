require 'sinatra'
require "sinatra/reloader" if development?

Sinatra::Reloader

get '/' do
  "Hello"
end

get '/secret' do
  "It's a secret"
end

get '/cat' do
  "<div style='border: 200px dashed red'>
  <img src='https://m.media-amazon.com/images/I/51KNy3fAsgL._AC_.jpg'>
  </div>"
end