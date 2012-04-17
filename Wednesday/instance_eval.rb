# instance_eval.rb

class MyClass 
  def initialize
    @v = 1
  end
end

obj = MyClass.new
obj.instance_eval do
  self
  @v          # => 2
end

v = 2
obj.instance_eval { @v = v }
obj.instance_eval { puts @v }       # => 2
