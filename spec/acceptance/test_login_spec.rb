require 'spec_helper'

describe 'flickr.test.login' do
	subject { flickr.test.login }
	its(:id) { should == '13314999@N06' }
	its(:username) { should == 'johnsmith' }
end