# flat_scope_1.rb

my_var = "Success"

# class MyClass
MyClass = Class.new do
  puts "#{my_var} in the class definition!"
  
  # def my_method
  define_method :my_method do
    "#{my_var} in the method!"
  end
end


cla = MyClass.new
puts cla.my_method
