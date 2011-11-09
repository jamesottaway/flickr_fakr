require 'spec_helper'

describe 'flickr.auth.getFrob' do
	subject { flickr.auth.getFrob }
	it { should == '72157628008826732-d18f7df9bfd670c3-31528' }
end