require 'sinatra'
require 'erb'

set :bind, '0.0.0.0'

get '/' do
  " Hello "
  # "hello from #{`uname -a`} <br> #{`mpc`}"
end

get '/index' do  
  # stations = [{:name => 'Lohro 90,2', :active => true},
  #   { :name => 'FluxFM', :active => false },
  #   { :name => 'NPR Berlin', :active => false },
  #   { :name => 'Fritz', :active => false }]
  
  stations = []
  
  `mpc playlist`.split('\n').each do |name|
    playlist.push({:name => name, :active => false})
  end

  erb :index, :locals => {:stations => stations}
end

get '/stop' do
  `mpc stop`
end

get '/play' do
  `mpc play`
end

# the mpd playlist directory is /var/lib/mpd/playlists
# you need sudo powers to write there though - weird
post '/add' do
  url = params[:url]


end

post '/controls' do
  action = params[:action]

  # this is bad and needs to be filtered!
  `mpc #{action}`
end
