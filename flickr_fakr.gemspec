# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{flickr_fakr}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{James Ottaway}]
  s.date = %q{2011-11-07}
  s.description = %q{Use flickr_fakr to help you write functional tests without having a dependency on Flickr}
  s.email = %q{james@ottaway.mp}
  s.executables = [%q{flickr_fakr}]
  s.extra_rdoc_files = [
    "LICENSE.txt"
  ]
  s.files = [
    ".rvmrc",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "Rakefile",
    "VERSION",
    "bin/flickr_fakr",
    "config.ru",
    "flickr_fakr.gemspec",
    "lib/flickr_fakr/flickr_fakr.rb",
    "lib/flickr_fakr/views/flickr.auth.getFrob.json.haml",
    "lib/flickr_fakr/views/flickr.auth.getToken.json.haml",
    "lib/flickr_fakr/views/flickr.reflection.getMethods.json.haml",
    "lib/flickr_fakr/views/flickr.test.login.json.haml"
  ]
  s.homepage = %q{http://github.com/jamesottaway/flickr_fakr}
  s.licenses = [%q{MIT}]
  s.require_paths = [%q{lib}]
  s.rubygems_version = %q{1.8.8}
  s.summary = %q{a fake version of the Flickr API}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<sinatra>, ["= 1.3.1"])
      s.add_runtime_dependency(%q<haml>, ["= 3.1.3"])
      s.add_development_dependency(%q<jeweler>, ["= 1.6.4"])
    else
      s.add_dependency(%q<sinatra>, ["= 1.3.1"])
      s.add_dependency(%q<haml>, ["= 3.1.3"])
      s.add_dependency(%q<jeweler>, ["= 1.6.4"])
    end
  else
    s.add_dependency(%q<sinatra>, ["= 1.3.1"])
    s.add_dependency(%q<haml>, ["= 3.1.3"])
    s.add_dependency(%q<jeweler>, ["= 1.6.4"])
  end
end

