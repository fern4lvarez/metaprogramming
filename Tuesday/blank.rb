# blank.rb

load 'proxy.rb'

class Computer
  instance_methods.each do |m|
    undef_method m unless m.to_s =~ /^__|method_missing|respond_to?|object_id/
  end
end

my_computer = Computer.new(42, DS.new)
puts my_computer.cpu
puts my_computer.mouse
puts my_computer.display
