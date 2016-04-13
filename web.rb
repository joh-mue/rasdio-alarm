require 'sinatra'
require 'erb'

set :bind, '0.0.0.0'

get '/' do
  " Hello "
  # "hello from #{`uname -a`} <br> #{`mpc`}"
end

get '/index' do  
  stations = [{:name => 'Lohro 90,2', :active => true},
    { :name => 'FluxFM', :active => false },
    { :name => 'NPR Berlin', :active => false },
    { :name => 'Fritz', :active => false }]
  erb :index, :locals => {:stations => stations}
end

get '/stop' do
  `mpc stop`
end

get '/play' do
  `mpc play`
end
