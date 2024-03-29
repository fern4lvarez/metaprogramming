# final.rb

load 'data_source.rb'

class Computer
  instance_methods.each do |m|
    undef_method m unless m.to_s =~ /^__|method_missing|respond_to?/
  end
  
  def initialize(computer_id, data_source)
    @id = computer_id
    @data_source = data_source
  end
  
  def method_missing(name, *args)
    super if !respond_to?(name)
    info = @data_source.send("get_#{name}_info" , args[0])
    price = @data_source.send("get_#{name}_price" , args[0])
    result = "#{name.to_s.capitalize}: #{info} ($#{price})"
    return " * #{result}" if price >= 100
    result
  end
  
  def respond_to?(method)
    @data_source.respond_to?("get_#{method}_info" ) || super
  end
end


my_pc = Computer.new(1,DS.new)

puts my_pc.cpu
puts my_pc.mouse
puts my_pc.keyboard
