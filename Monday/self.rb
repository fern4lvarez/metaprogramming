class MyClass
  def testing_self
    @var = 10     # An instance variable of self
    my_method()   # Same as self.my_method()
    self
  end
  
  def testing
    @var = 10
    my_method()
  end

  def my_method
    @var = @var + 1
  end
end

obj = MyClass.new
obj.testing # => 11
obj.testing_self  # => #<MyClass:0x7ff797473da8 @var=11>

