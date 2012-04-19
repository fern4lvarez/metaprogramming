# rspec.rb

require 'spec/mocks'
test_object = Object.new

test_object.should_receive(:read_names).and_return(["Bill", "You"])
puts test_object.read_names
