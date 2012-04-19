# ampersand.rb

def math(a, b)
  yield(a, b)
end

def teach_math(a, b, &operation)
  puts "Let's do the math:"
  puts math(a, b, &operation)
end

teach_math(2, 4) {|x, y| x * y}

# => Let's do the math:
# => 8

