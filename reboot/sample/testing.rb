require 'sinatra'

get '/' do
  message ='Hello World'
  erb: index, {locals: {message: message}}
end

post '/' do
  ... create something..
end

put '/' do
  ..replace something..
end
