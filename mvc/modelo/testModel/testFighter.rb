require_relative '../fighters.rb'
require 'test/unit'

class TestFighter < MiniTest::Unit::TestCase
    def test_simple
        
        a = Fighter.new("pepe")
        assert_equal("pepe", a.name)
    end
end
