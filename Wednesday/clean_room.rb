# clean_room.rb

class CleamRoom
  def complex_calculation
  end
  
  def do_something
  end
end

clean_room = CleamRoom.new
clean_room.instance_eval do
  if complex_calculation > 10
    do_something
  end
end


