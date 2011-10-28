require 'sinatra'

get '/' do
  'Welcome to Flickr Fakr!'
end

get '/services/auth/' do
  redirect 'http://localhost:9292/flickr/callback?frob=123'
end

post '/services/rest/' do
  args = {}
  request.body.rewind
  request.body.read.split('&').each { |arg| args[arg.split('=').first] = arg.split('=').last }
  view = "#{args['method']}.#{args['format']}"
  haml view.to_sym
end