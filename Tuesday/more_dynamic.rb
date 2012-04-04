# more_dynamic.rb

require 'data_source.rb'

class Computer
  def initialize(computer_id, data_source)
    @id = computer_id
    @data_source = data_source
    data_source.methods.grep(/^get_(.*)_info$/) { Computer.define_component $1 }
  end

  def self.define_component(name)
    define_method(name) {
      info = @data_source.send "get_#{name}_info" , @id
      price = @data_source.send "get_#{name}_price" , @id
      result = "#{name.capitalize}: #{info} ($#{price})"
      return " * #{result}" if price >= 100
      result
    }
  end
end

my_pc = Computer.new(1,DS.new)

puts my_pc.cpu
puts my_pc.mouse
puts my_pc.keyboard

