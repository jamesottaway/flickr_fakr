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
  gem.executables = ['flickr_fakr']
  gem.default_executable = 'flickr_fakr'
  gem.license = "MIT"
  gem.summary = %Q{a fake version of the Flickr API}
  gem.description = %Q{Use flickr_fakr to help you write functional tests without having a dependency on Flickr}
  gem.email = "james@ottaway.mp"
  gem.authors = ["James Ottaway"]
end
Jeweler::RubygemsDotOrgTasks.new

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new

require 'timeout'
task :acceptance do
  pid = Process.spawn 'rackup -p 9292'

  trap("INT") {
    Process.kill(9, pid) rescue Errno::ESRCH
    exit 0
  }
  
  until is_port_open?('localhost', '9292') do
    puts "Waiting for FlickrFakr to start listening..."
    sleep 1
  end
  
  Rake::Task['spec'].invoke
  
  Process.kill 9, pid
end

private

def is_port_open?(ip, port)
  begin
    Timeout::timeout(1) do
      begin
        s = TCPSocket.new(ip, port)
        s.close
        return true
      rescue Errno::ECONNREFUSED, Errno::EHOSTUNREACH
        return false
      end
    end
  rescue Timeout::Error
  end

  return false
end

task :default => :acceptance
