require "../fighters.rb"
require 'minitest/autorun'

class TestFighter < MiniTest::Unit::TestCase
  def setup
    @fighter1 = Fighter.new('neim', 'life', 'pointz')
    @fighter2 = Fighter.new('neim2', 'life2', 'pointz2')
  end
  def test_initialize
    assert_equal(@fighter1.name, 'neim')
    assert_equal(@fighter1.life,'life')
    assert_equal(@fighter1.points,'pointz')
  end
end

=begin
    @name = name
    @abilities = []
    @life = 0
    @points = 0
    @experience = 0
    @estrategyAttack = []
    @estrategyDefense = []
=end
