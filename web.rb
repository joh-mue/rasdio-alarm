require 'sinatra'

set :bind, '0.0.0.0'

get '/' do
  "hello from #{`uname -a`} <br> #{`mpc`}"
end

get '/stop' do
  `mpc stop`
end

get '/play' do
  `mpc play`
end

