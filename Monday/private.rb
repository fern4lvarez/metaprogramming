# private.rb
class C
  def public_method
    self.private_method
  end
  
  private
  
  def private_method; end
end

C.new.public_method


