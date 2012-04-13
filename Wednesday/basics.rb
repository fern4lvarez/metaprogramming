# basics.rb

def a_method(a, b)
  return a + yield(a, b) if block_given?
  'no block'
end

puts a_method(1, 2) { |x,y| (x + y) * 3 }
puts a_method(1, 2)
