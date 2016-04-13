require 'sinatra'

set :bind, '0.0.0.0'

get '/' do
  " Hello "
  # "hello from #{`uname -a`} <br> #{`mpc`}"
end

get '/index' do
  erb :index
end

get '/stop' do
  `mpc stop`
end

get '/play' do
  `mpc play`
end