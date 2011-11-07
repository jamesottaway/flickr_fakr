# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  gem.name = "flickr_fakr"
  gem.homepage = "http://github.com/jamesottaway/flickr_fakr"
  gem.license = "MIT"
  gem.summary = %Q{a fake version of the Flickr API}
  gem.description = %Q{Use flickr_fakr to help you write functional tests without having a dependency on Flickr}
  gem.email = "james@ottaway.mp"
  gem.authors = ["James Ottaway"]
end
Jeweler::RubygemsDotOrgTasks.new
