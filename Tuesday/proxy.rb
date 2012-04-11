# proxy.rb

load 'data_source.rb'

class Computer
  def initialize(computer_id, data_source)
    @id = computer_id
    @data_source = data_source
  end
  
  def respond_to?(method)
    @data_source.respond_to?("get_#{method}_info")
  end
  
  def method_missing(name, *args)
    # super guarantees that the default respond_to?( ) 
    # is called for all other methods.
    super if !respond_to?(name)
    info = @data_source.send("get_#{name}_info", args[0])
    price = @data_source.send("get_#{name}_price", args[0])
    result = "#{name.to_s.capitalize}: #{info} ($#{price})"
    return "* #{result}" if price >= 100
    result
  end
end

my_computer = Computer.new(42, DS.new)
puts my_computer.cpu
puts my_computer.mouse


puts my_computer.respond_to?(:mouse) #=> true
