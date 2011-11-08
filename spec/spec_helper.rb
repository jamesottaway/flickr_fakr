require 'flickraw-cached'

Dir[File.join(File.dirname(__FILE__),"../spec/support/**/*.rb")].each { |f| require f }

RSpec.configure do |config|
  config.mock_with :rspec
end

FlickRaw.api_key = 'api'
FlickRaw.shared_secret = 'secret'

def flickr
  @flickr ||= FlickRaw::Flickr.new
end