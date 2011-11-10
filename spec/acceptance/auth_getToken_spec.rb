require 'spec_helper'

describe 'flickr.auth.getToken' do
	subject { flickr.auth.getToken :frob => 'abc' }
	its(:token) { should == '72197626744597143-36de57c6a59d1a8d' }
	its(:perms) { should == 'write' }
	context :user do
		subject { flickr.auth.getToken(:frob => 'abc').user }
		its(:nsid) { should == '13314999@N06' }
		its(:username) { should == 'johnsmith' }
		its(:fullname) { should == 'John Smith' }
	end
end