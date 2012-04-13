# closure.rb

def my_method
  x = "Goodbye"
  yield("cruel")
end

# x = "Goodbye" is not visible at all in the block 
x = "Hello"
puts my_method { |y| "#{x}, #{y} world" }
# => "Hello, cruel world"
