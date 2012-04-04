# method_missing.rb

class Lawyer; end

nick = Lawyer.new
nick.talk_simple

# => NoMethodError: undefined method ‘talk_simple' for #<Lawyer:0x7f0c6885d948> [...]


nick.send :method_missing, :my_method

# => NoMethodError: undefined method ‘my_method for #<Lawyer:0x7f0c6885d948> [...]
