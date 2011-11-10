require 'sinatra/base'

class FlickrFakr < Sinatra::Base
  get '/' do
    'Welcome to Flickr Fakr!'
  end

  get '/services/auth/' do
    redirect 'http://localhost:9292/flickr/callback?frob=123'
  end

  post '/services/rest/' do
    view = params[:method]+'.'+params[:format]
    erb view.to_sym
  end
end