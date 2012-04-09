# my_ostruct.rb

class MyOpenStruct
  def initialize
    @attributes = {}
  end
  
  def method_missing(name, *args)
    attribute = name.to_s
    if attribute =~ /=$/
      # some_object.some_method = "whatever"
      @attributes[attribute.chop] = args[0]
    else
      # some_object.some_method
      @attributes[attribute]
    end
  end
end


icecream = MyOpenStruct.new
icecream.flavor = "vanilla"
puts icecream.flavor
