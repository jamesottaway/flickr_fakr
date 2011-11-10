require 'spec_helper'

describe 'flickr.reflection.getMethods' do
	subject { flickr.reflection.getMethods }
	its(:size) { should == 183 }
end