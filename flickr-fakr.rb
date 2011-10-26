require 'sinatra'

get '/' do
  'Welcome to Flickr Fakr!'
end

get '/services/auth/' do
  redirect 'http://localhost:9292/flickr/callback?frob=123'
end