# using_test.rb

require 'using'
require 'test/unit'

module Kernel
  def using(resource)
    begin
      yield
    ensure
      resource.dispose
    end
  end
end

class TestUsing < Test::Unit::TestCase
  class Resource
    def dispose
      @disposed = true
    end
    
    def disposed?
      @disposed
    end
    
    def test_disposes_of_resources
      r = Resource.new
      using(r) {}
      assert r.disposed?
    end
    
    def test_disposes_of_resources_in_case_of_exception
      r = Recource.new
      assert_raises(Exception) {
        using(r) { raise Exception }
      }
      assert r.disposed?
    end
  end
end


